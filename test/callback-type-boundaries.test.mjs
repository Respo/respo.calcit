import assert from 'node:assert/strict';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';
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

const guarded = call => `let
    callback $ fn (value)
      hint-fn $ {} (:args ([] 'Number)) (:return 'Number)
      + value 1
    checked $ respo.util.detect/expect-function callback |expected-fn
  ${call}`;

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
