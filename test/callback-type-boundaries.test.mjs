import assert from 'node:assert/strict';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';
import { copyFileSync, mkdirSync, mkdtempSync, rmSync, symlinkSync } from 'node:fs';
import { join } from 'node:path';
import test from 'node:test';

const root = fileURLToPath(new URL('../', import.meta.url));
const bin = process.env.CALCIT_BIN ?? 'calcit';

function evaluate(source) {
  const result = spawnSync(bin, ['eval', '--dep', './calcit.cirru', source], {
    cwd: root, encoding: 'utf8', timeout: 30_000,
  });
  assert.ifError(result.error);
  assert.equal(result.signal, null, 'Calcit must exit normally');
  return { status: result.status, output: result.stdout + result.stderr };
}

test('typed render fixtures preserve ChildPair and nullable callback contracts', () => {
  const result = evaluate(`respo.test.dom/fixture-entry!`);
  assert.equal(result.status, 0, result.output);
});

const renderBoundary = (type, result, body) => `let
    render! $ fn ()
      respo.core/render-with! nil
        fn () $ respo.schema/Component :name :fixture :effects ([]) :listeners ([]) :tree (Option :none)
        fn (op)
          hint-fn $ {} (:args ([] '${type})) (:return '${result})
          , ${body}
  , &unit`;

test('render-with! retains the existing open Unit dispatch contract', () => {
  const result = evaluate(renderBoundary('Dynamic', 'Unit', '&unit'));
  assert.equal(result.status, 0, result.output);
});

test('demo SSR accepts the declared DomElement target without executing DOM work', () => {
  const result = evaluate(`let
    adopt! $ fn (target)
      hint-fn $ {} (:args ([] 'respo.dom/DomElement)) (:return 'Unit)
      respo.app.core/handle-ssr! target
  , &unit`);
  assert.equal(result.status, 0, result.output);
});

test('demo SSR rejects a Number target before execution', () => {
  const result = evaluate('respo.app.core/handle-ssr! 42');
  assert.notEqual(result.status, 0);
  assert.match(result.output, /W_FN_ARG_TYPE_MISMATCH|E_DYNAMIC_NOMINAL_ARGUMENT|E_CALL_ARGUMENT_MISMATCH/);
  assert.match(result.output, /handle-ssr!/);
  assert.doesNotMatch(result.output, /took [\d.]+ms:/, 'invalid SSR targets must not execute');
});

test('render-with! rejects a non-Unit dispatch result', () => {
  const checked = evaluate(renderBoundary('Dynamic', 'Number', '42'));
  assert.notEqual(checked.status, 0, 'an incompatible dispatch callback must not compile');
  assert.match(checked.output, /W_FN_ARG_TYPE_MISMATCH|E_CALL_ARGUMENT_MISMATCH/);
  assert.match(checked.output, /render-with!/);
  assert.doesNotMatch(checked.output, /took [\d.]+ms:/, 'the invalid callback must not run');
});

function proveRenderDispatch(type) {
  const scratch = mkdtempSync(join(root, '.calcit', 'render-dispatch-proof-'));
  const invoke = args => {
    const result = spawnSync(bin, args, { cwd: scratch, encoding: 'utf8', timeout: 60_000 });
    assert.ifError(result.error);
    assert.equal(result.signal, null, 'Calcit must exit normally');
    return result;
  };
  try {
    copyFileSync(join(root, 'calcit.cirru'), join(scratch, 'calcit.cirru'));
    copyFileSync(join(root, 'deps.cirru'), join(scratch, 'deps.cirru'));
    mkdirSync(join(scratch, '.calcit'));
    symlinkSync(join(root, '.calcit', 'modules'), join(scratch, '.calcit', 'modules'));
    const source = `quote $ defn main! ()\n  ${renderBoundary(type, 'Unit', '&unit').replaceAll('\n', '\n  ')}`;
    const args = ['edit', 'transaction', '--code', JSON.stringify([
      ['edit', 'def', 'respo.main/main!', '--overwrite', '--input-format', 'cirru', '--code', source],
    ]), '--format', 'json'];
    const preview = invoke([...args, '--dry-run']);
    assert.equal(preview.status, 0, preview.stdout + preview.stderr);
    const applied = invoke([...args, '--expect-revision', JSON.parse(preview.stdout).scoped_revision]);
    assert.equal(applied.status, 0, applied.stdout + applied.stderr);
    const checked = invoke(['fix', '--rule', 'callable-contract-proof-v1', '--ns', 'respo.main', '--def', 'main!', '--format', 'json']);
    return { status: checked.status, output: checked.stdout + checked.stderr };
  } finally {
    rmSync(scratch, { recursive: true, force: true });
  }
}

test('callable proof accepts dispatch narrowed to the entry Op', () => {
  const checked = proveRenderDispatch('respo.app.schema/Op');
  assert.equal(checked.status, 0, checked.output);
});

test('callable proof rejects dispatch narrowed to another type', () => {
  const checked = proveRenderDispatch('String');
  assert.notEqual(checked.status, 0, 'a dispatch callback for another type must not prove');
  assert.match(checked.output, /render-with!/);
});

for (const [name, source] of [
  ['children reject Number members', 'respo.test.dom/with-fixture-children (respo.core/div $ {}) ([] 42)'],
  ['children reject another nominal value', 'respo.test.dom/with-fixture-children (respo.core/div $ {}) ([] $ respo.core/span $ {})'],
  ['events reject String keys', 'respo.test.dom/with-fixture-events (respo.core/div $ {}) ({} (|click nil))'],
  ['events reject Number callbacks', 'respo.test.dom/with-fixture-events (respo.core/div $ {}) ({} (:click 42))'],
]) {
  test(`typed render fixtures ${name}`, () => {
    const result = evaluate(source);
    assert.notEqual(result.status, 0, 'invalid fixture input must fail preprocessing');
    assert.match(result.output, /W_FN_ARG_TYPE_MISMATCH|E_DYNAMIC_NOMINAL_ARGUMENT/);
    assert.doesNotMatch(result.output, /took [\d.]+ms:/, 'invalid fixture input must not run');
  });
}

for (const helper of ['pair-first', 'pair-value']) {
  const selectedCallback = call => `let
    callback $ fn (value)
      hint-fn $ {} (:args ([] 'Number)) (:return 'Number)
      + value 1
    selected $ respo.util.list/${helper} $ [] callback callback
  ${call}`;

  test(`${helper} preserves the selected callback identity and result`, () => {
    const result = evaluate(selectedCallback(`do
    assert= callback selected
    assert= 3 $ selected 2
    , &unit`));
    assert.equal(result.status, 0, result.output);
  });

  test(`${helper} rejects String at the selected Number callback call`, () => {
    const result = evaluate(selectedCallback('selected |wrong'));
    assert.notEqual(result.status, 0, 'the selected callback must retain its parameter type');
    assert.match(result.output, /calling `selected` arg 1/);
    assert.match(result.output, /expects type `:number`, but got `:string`/);
    assert.doesNotMatch(result.output, /took [\d.]+ms:/, 'the invalid callback must not run');
  });
}

const guarded = call => `let
    callback $ fn (value)
      hint-fn $ {} (:args ([] 'Number)) (:return 'Number)
      + value 1
    checked $ respo.util.detect/expect-function callback |expected-fn
  ${call}`;

test('style updates accept the declared DomElement capability', () => {
  const result = evaluate(`let
    update! $ fn (target)
      hint-fn $ {} (:args ([] 'respo.dom/DomElement)) (:return 'Unit)
      respo.render.patch/add-style target :padding 4
      respo.render.patch/replace-style target :opacity 0.5
  , &unit`);
  assert.equal(result.status, 0, result.output);
});

for (const helper of ['add-style', 'replace-style']) {
  test(`${helper} rejects Number as its DOM target before execution`, () => {
    const result = evaluate(`respo.render.patch/${helper} 42 :padding 4`);
    assert.notEqual(result.status, 0, 'a Number is not a DOM capability');
    assert.match(result.output, /W_FN_ARG_TYPE_MISMATCH/);
    assert.match(result.output, new RegExp(`Function .respo.render.patch/${helper}. arg 1`));
    assert.doesNotMatch(result.output, /took [\d.]+ms:/, 'the invalid style update must not run');
  });
}

const effect = (args, types, result, body) => `respo.core/build-effect :test ([])
  fn (${args})
    hint-fn $ {} (:args ([] ${types})) (:return '${result})
    , ${body}`;
const lists = "(:: 'List 'Dynamic) (:: 'List 'Dynamic)";
const patchEffect = (variant, args, types, result, body) => `respo.schema/DomPatch :${variant} ([]) ([])
  fn (${args})
    hint-fn $ {} (:args ([] ${types})) (:return '${result})
    , ${body}`;

for (const variant of ['effect-mount', 'effect-unmount', 'effect-update', 'effect-before-update']) {
  test(`${variant} retains a one-DOM-target Unit callback`, () => {
    const result = evaluate(patchEffect(variant, 'target', "'respo.dom/DomElement", 'Unit', '&unit'));
    assert.equal(result.status, 0, result.output);
  });
}

for (const [name, source] of [
  ['guard preserves callback identity and result', guarded(`do
    assert |identity $ = callback checked
    assert |result $ = 3 $ checked 2
    , &unit`)],
  ['effect accepts its actual two-list Unit callback', effect('args params', lists, 'Unit', '&unit')],
]) {
  test(name, () => {
    const result = evaluate(source);
    assert.equal(result.status, 0, result.output);
  });
}

for (const [name, source, diagnostics] of [
  ['guard rejects String passed to the retained Number callback', guarded('checked |wrong'),
    [/W_LOCAL_FN_ARG_TYPE_MISMATCH/, /calling `checked` arg 1/, /expects type `:number`, but got `:string`/]],
  ['effect rejects one-argument callback', effect('value', "'Number", 'Unit', '&unit'),
    [/W_FN_ARG_TYPE_MISMATCH/, /Function `respo.core\/build-effect` arg 3/, /but got `fn\(:number\) -> :unit`/]],
  ['effect rejects wrong callback parameter types', effect('args params', "'Number 'Number", 'Unit', '&unit'),
    [/W_FN_ARG_TYPE_MISMATCH/, /Function `respo.core\/build-effect` arg 3/, /but got `fn\(:number, :number\) -> :unit`/]],
  ['effect rejects a non-Unit callback result', effect('args params', lists, 'Number', '42'),
    [/W_FN_ARG_TYPE_MISMATCH/, /Function `respo.core\/build-effect` arg 3/, /but got `fn\(list<dynamic>, list<dynamic>\) -> :number`/]],
  ['mount patch rejects Number as callback target', patchEffect('effect-mount', 'target', "'Number", 'Unit', '&unit'),
    [/Enum `DomPatch::effect-mount` payload 3 expects type/, /but got `fn\(:number\) -> :unit`/]],
  ['unmount patch rejects two callback parameters', patchEffect('effect-unmount', 'a b', "'respo.dom/DomElement 'respo.dom/DomElement", 'Unit', '&unit'),
    [/Enum `DomPatch::effect-unmount` payload 3 expects type/, /but got `fn\([^)]*,[^)]*\) -> :unit`/]],
  ['update patch rejects non-Unit result', patchEffect('effect-update', 'target', "'respo.dom/DomElement", 'Number', '42'),
    [/Enum `DomPatch::effect-update` payload 3 expects type/, /but got `fn\([^)]*\) -> :number`/]],
  ['before-update patch rejects Number as callback target', patchEffect('effect-before-update', 'target', "'Number", 'Unit', '&unit'),
    [/Enum `DomPatch::effect-before-update` payload 3 expects type/, /but got `fn\(:number\) -> :unit`/]],
]) {
  test(name, () => {
    const result = evaluate(source);
    assert.notEqual(result.status, 0, 'invalid callback must fail preprocessing');
    for (const diagnostic of diagnostics) assert.match(result.output, diagnostic);
    assert.doesNotMatch(result.output, /took [\d.]+ms:/, 'invalid callback must not run');
  });
}
