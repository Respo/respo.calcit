import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { Task, store, task } from '../js-out/respo.app.schema.mjs';
import { normalize_task, normalize_tasks, restore_tasks } from '../js-out/respo.app.task.mjs';

test('saved EDN tasks regain checked nominal identity before Store writes', () => {
  const saved = task.assoc(c.newTag('id'), 'saved').assoc(c.newTag('text'), 'restored');
  const parsed = c.parse_cirru_edn(c.format_cirru_edn(c.arrayToList([saved])));
  const original = c.listToArray(parsed)[0];
  assert.notEqual(original.structRef, Task, 'EDN is data, not a nominal type proof');
  const updated = restore_tasks(store, normalize_tasks(parsed));
  const recovered = c.listToArray(updated.get(c.newTag('tasks')))[0];
  assert.equal(recovered.structRef, Task);
  assert.equal(recovered.get(c.newTag('id')), 'saved');
  assert.equal(recovered.get(c.newTag('text')), 'restored');
  assert.equal(recovered.get(c.newTag('done?')), false);
  assert.equal(c.listToArray(store.get(c.newTag('tasks'))).length, 0);
  assert.equal(updated.get(c.newTag('cursor')), store.get(c.newTag('cursor')));
  assert.equal(updated.get(c.newTag('states')), store.get(c.newTag('states')));
});

test('a parsed Task layout does not prove its fields or nominal identity', () => {
  const invalid = c.parse_cirru_edn("%{} 'Task (:done? |wrong) (:id |saved) (:text |bad)");
  const normalized = normalize_task(invalid);
  assert.equal(c._$n_enum_$o_nth(normalized, 0), c.newTag('none'));
  const restored = restore_tasks(store, normalize_tasks(c.arrayToList([invalid, 42])));
  assert.equal(c.listToArray(restored.get(c.newTag('tasks'))).length, 0);
});
