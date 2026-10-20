import assert from 'node:assert/strict';
import { spawnSync } from 'node:child_process';
import { copyFileSync, mkdirSync, mkdtempSync, rmSync, symlinkSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { resolve } from 'node:path';
import { fileURLToPath } from 'node:url';
import test from 'node:test';

// d! is typed by the entry's :dispatch-op slot (respo.app.schema/Op in the demo).
// A handler checked against EventHandler must reject values that are not Op.
const root = fileURLToPath(new URL('../', import.meta.url));
const bin = process.env.CALCIT_BIN ?? 'calcit';
const handlerSchema = `quote $ :: 'Fn $ {} (:return 'Unit)
  :args $ [] (:: 'Map 'Tag 'Dynamic)
    :: 'Fn $ {} (:return 'Unit)
      :args $ [] '*dispatch-op`;

// Each edit is [def, code, schema] written into respo.app.comp.task before checking.
function check(edits) {
  const dir = mkdtempSync(resolve(tmpdir(), 'respo-typed-dispatch-'));
  try {
    mkdirSync(resolve(dir, '.calcit'));
    symlinkSync(resolve(root, '.calcit/modules'), resolve(dir, '.calcit/modules'));
    for (const file of ['calcit.cirru', 'deps.cirru']) copyFileSync(resolve(root, file), resolve(dir, file));
    const run = args => spawnSync(bin, args, { cwd: dir, encoding: 'utf8', timeout: 60_000 });
    for (const [name, code, schema] of edits) {
      const target = `respo.app.comp.task/${name}`;
      for (const args of [
        ['edit', 'def', target, '--code', code],
        ...(schema ? [['edit', 'schema', target, '--code', schema]] : []),
      ]) {
        const result = run(args);
        assert.equal(result.status, 0, result.stdout + result.stderr);
      }
    }
    const result = run(['--check-only', '--ns', 'respo.app.comp.task']);
    return { status: result.status, output: result.stdout + result.stderr };
  } finally {
    rmSync(dir, { recursive: true, force: true });
  }
}

const checkHandler = body =>
  check([['probe-handler', `quote $ defn probe-handler (_event d!) (${body})`, handlerSchema]]);

// dispatch-fn callbacks passed through an Option field, like a component's :on-change option.
const takerSchema = `quote $ :: 'Fn $ {} (:return 'Unit)
  :args $ [] $ :: 'Option $ :: 'Fn $ {} (:return 'Unit)
    :args $ [] 'String $ :: 'Fn $ {} (:return 'Unit) $ :args $ [] '*dispatch-op`;
const checkDispatchFn = body =>
  check([
    ['probe-take', 'quote $ defn probe-take (f) (println f)', takerSchema],
    ['probe-use', `quote $ defn probe-use () (probe-take $ Option :some $ respo.core/dispatch-fn (value d!) (${body}))`],
  ]);

for (const [name, body] of [
  ['an Op constructor', 'd! $ respo.app.schema/Op :clear'],
  ['a tuple naming an Op variant', 'd! $ :: :toggle |task-id'],
]) {
  test(`d! accepts ${name}`, () => {
    const result = checkHandler(body);
    assert.equal(result.status, 0, result.output);
  });
}

for (const [name, body, diagnostic] of [
  ['a Number', 'd! 42', /calling `d!` arg 1 expects type `type-slot\(dispatch-op\)`, but got `:number`/],
  ['an unknown variant', 'd! $ :: :not-an-op', /Enum `Op` does not have variant `:not-an-op`/],
  ['the removed cursor shorthand', 'd! ([] :field) :value', /calling `d!` arg 1 expects type `type-slot\(dispatch-op\)`, but got `list<tag>`/],
]) {
  test(`d! rejects ${name}`, () => {
    const result = checkHandler(body);
    assert.notEqual(result.status, 0, 'invalid dispatch must fail checking');
    assert.match(result.output, diagnostic);
  });
}

test('dispatch-fn accepts a tuple naming an Op variant', () => {
  const result = checkDispatchFn('d! $ :: :toggle value');
  assert.equal(result.status, 0, result.output);
});

test('dispatch-fn keeps d! checked against Op', () => {
  const result = checkDispatchFn('d! 42');
  assert.notEqual(result.status, 0, 'invalid dispatch must fail checking');
  assert.match(result.output, /calling `d!` arg 1 expects type `type-slot\(dispatch-op\)`, but got `:number`/);
});
