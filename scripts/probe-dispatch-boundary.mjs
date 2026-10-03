import assert from 'node:assert/strict';
import { spawnSync } from 'node:child_process';
import { copyFileSync, mkdtempSync, mkdirSync, rmSync, symlinkSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

// #195 的迁移探针；结果描述当前缺口，不是发布验收的通过标记。
const root = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const bin = process.env.CALCIT_BIN ?? 'calcit';
const checkBin = process.env.CHECK_CALCIT_BIN ?? bin;
const scratch = mkdtempSync(resolve(tmpdir(), 'respo-dispatch-probe-'));
const invoke = (args, checker = false) => {
  const result = spawnSync(checker ? checkBin : bin, args, { cwd: scratch, encoding: 'utf8' });
  if (result.error) throw result.error;
  return { status: result.status, output: result.stdout + result.stderr };
};
const edit = args => {
  const result = invoke(args);
  assert.equal(result.status, 0, result.output);
};
const results = [];
const slotSchema = `quote $ :: 'Fn $ {} (:return 'Unit)
  :args $ [] (:: 'Map 'Tag 'Dynamic)
    :: 'Fn $ {} (:return 'Unit)
      :args $ [] '*dispatch-op`;

try {
  mkdirSync(resolve(scratch, '.calcit'));
  symlinkSync(resolve(root, '.calcit/modules'), resolve(scratch, '.calcit/modules'));
  const version = invoke(['--version']);
  assert.equal(version.status, 0, version.output);
  assert.match(version.output, /0\.28\.0/, 'mutation probe requires the project-pinned Calcit 0.28.0');
  for (const [name, slot, mapProps, call, annotated] of [
    ['current-struct-number', false, false, 'd! 42'],
    ['current-map-number', false, true, 'd! 42'],
    ['slot-struct-number', true, false, 'd! 42'],
    ['slot-map-number', true, true, 'd! 42'],
    ['slot-struct-valid-op', true, false, 'd! $ respo.app.schema/Op :clear'],
    ['slot-struct-cursor-list', true, false, 'd! ([] :field) :value'],
    ['slot-struct-tag', true, false, 'd! :clear'],
    ['annotated-slot-number', true, true, 'd! 42', "'*dispatch-op"],
    ['annotated-slot-valid-op', true, true, 'd! $ respo.app.schema/Op :clear', "'*dispatch-op"],
    ['annotated-slot-cursor-list', true, true, 'd! ([] :field) :value', "'*dispatch-op"],
    ['annotated-slot-tag', true, true, 'd! :clear', "'*dispatch-op"],
    ['annotated-concrete-number', false, true, 'd! 42', "'respo.app.schema/Op"],
    ['annotated-concrete-valid-op', false, true, 'd! $ respo.app.schema/Op :clear', "'respo.app.schema/Op"],
    ['annotated-concrete-invalid-variant', false, true, 'd! $ :: :not-an-op', "'respo.app.schema/Op"],
    ['bare-slot-number', false, true, 'd! 42', '*dispatch-op'],
    ['bare-slot-valid-op', false, true, 'd! $ respo.app.schema/Op :clear', '*dispatch-op'],
    ['bare-slot-cursor-list', false, true, 'd! ([] :field) :value', '*dispatch-op'],
    ['bare-slot-tag', false, true, 'd! :clear', '*dispatch-op'],
  ]) {
    copyFileSync(resolve(root, 'calcit.cirru'), resolve(scratch, 'calcit.cirru'));
    edit(['edit', 'def', 'respo.main/main!', '--overwrite', '--code', `quote $ defn main! ()
  respo.core/button $ ${mapProps ? '{}' : '%{} respo.schema/DomProps'}
    :on-click $ fn (event d!)
${annotated ? `      hint-fn $ {} (:return 'Unit)
        :args $ [] (:: 'Map 'Tag 'Dynamic)
          :: 'Fn $ {} (:return 'Unit)
            :args $ [] ${annotated}
` : ''}\
      ${call}
  , &unit`]);
    edit(['edit', 'def', 'respo.main/reload!', '--overwrite', '--code', 'quote $ defn reload! () &unit']);
    if (slot) edit(['edit', 'schema', 'respo.schema/EventHandler', '--code', slotSchema]);
    const result = invoke(['--check-only'], true);
    const bindings = invoke(['config', 'type-slots']);
    assert.equal(bindings.status, 0, bindings.output);
    assert.match(bindings.output, /respo\.app\.schema\/Op/, 'the copied entry must retain its Op binding');
    results.push({ name, accepted: result.status === 0, entryBindings: bindings.output, diagnostics: result.output });
  }
  const control = name => results.find(result => result.name === name);
  assert.equal(control('annotated-concrete-valid-op').accepted, true, 'positive control must compile');
  assert.equal(control('annotated-concrete-number').accepted, false, 'negative control must reject the wrong op');
  assert.match(control('annotated-concrete-number').diagnostics, /calling `d!` arg 1/);
  assert.match(control('annotated-concrete-number').diagnostics, /respo\.main\/main!/);
  console.log(JSON.stringify({ mutationCompiler: version.output.trim(), checker: invoke(['--version'], true).output.trim(), results }, null, 2));
} finally {
  rmSync(scratch, { recursive: true, force: true });
}
