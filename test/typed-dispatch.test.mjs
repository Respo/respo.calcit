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

function checkHandler(body) {
  const dir = mkdtempSync(resolve(tmpdir(), 'respo-typed-dispatch-'));
  try {
    mkdirSync(resolve(dir, '.calcit'));
    symlinkSync(resolve(root, '.calcit/modules'), resolve(dir, '.calcit/modules'));
    for (const file of ['calcit.cirru', 'deps.cirru']) copyFileSync(resolve(root, file), resolve(dir, file));
    const run = args => spawnSync(bin, args, { cwd: dir, encoding: 'utf8', timeout: 60_000 });
    const target = 'respo.app.comp.task/probe-handler';
    for (const args of [
      ['edit', 'def', target, '--code', `quote $ defn probe-handler (_event d!) (${body})`],
      ['edit', 'schema', target, '--code', handlerSchema],
    ]) {
      const result = run(args);
      assert.equal(result.status, 0, result.stdout + result.stderr);
    }
    const result = run(['--check-only', '--ns', 'respo.app.comp.task']);
    return { status: result.status, output: result.stdout + result.stderr };
  } finally {
    rmSync(dir, { recursive: true, force: true });
  }
}

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
