import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { get_state_at, update_state_tree, update_state_tree_kv, update_state_tree_merge } from '../js-out/respo.cursor.mjs';
import { EventConfig, ListenerMode } from '../js-out/respo.schema.mjs';

const tags = c.init_tags(['panel', 'data', 'draft', 'locked?']);
const path = (...keys) => c.arrayToList(keys);

test('mixed Tag/String cursor keys keep their types through writes, reads and partial updates', () => {
  const cursor = path(tags.panel, 'task-1');
  const original = update_state_tree(c._$n__$M_(), cursor,
    c._$n__$M_(tags.draft, 'old', tags['locked?'], false));
  const branch = get_state_at(original, path(tags.panel));
  assert.equal(c.get(branch, 'task-1').tag.value, 'some');
  assert.equal(c.get(branch, c.turn_tag('task-1')).tag.value, 'none');
  const changed = update_state_tree_kv(original, cursor, tags.draft, 'new');
  const merged = update_state_tree_merge(changed, cursor, c._$n__$M_(),
    c._$n__$M_(tags['locked?'], true));
  assert.equal(get_state_at(original, path(tags.panel, 'task-1', tags.data, tags.draft)), 'old');
  assert.equal(get_state_at(merged, path(tags.panel, 'task-1', tags.data, tags.draft)), 'new');
  assert.equal(get_state_at(merged, path(tags.panel, 'task-1', tags.data, tags['locked?'])), true);
});

test('existing Number cursor keys remain Number keys', () => {
  const states = update_state_tree(c._$n__$M_(), path(1), 'ready');
  assert.equal(c.get(states, 1).tag.value, 'some');
  assert.equal(c.get(states, '1').tag.value, 'none');
  assert.equal(get_state_at(states, path(1, tags.data)), 'ready');
});

test('partial Struct updates preserve their generated nominal definition and original value', () => {
  const fields = c.init_tags(['stop-propagation?', 'listener-mode', 'property']);
  const original = c._$n__PCT__$M_(EventConfig,
    fields['stop-propagation?'], true,
    fields['listener-mode'], c._PCT__$o__$o_(ListenerMode, fields.property));
  const updated = update_state_tree_merge(c._$n__$M_(), path(), original,
    c._$n__$M_(fields['stop-propagation?'], false));
  const state = get_state_at(updated, path(tags.data));
  assert.equal(c._$n_struct_$o_definition(state), c._$n_struct_$o_definition(original));
  assert.equal(c.option_$o_unwrap_or(c.get(state, fields['stop-propagation?']), null), false);
  assert.equal(c.option_$o_unwrap_or(c.get(original, fields['stop-propagation?']), null), true);
});
