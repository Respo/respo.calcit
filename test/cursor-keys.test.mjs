import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { CursorTestState, coerce_cursor_test_state, get_state_at, update_state_tree, update_state_tree_kv, update_state_tree_merge } from '../js-out/respo.cursor.mjs';
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

test('partial Map update retains a Number key without converting it to a Tag', () => {
  const cursor = path(tags.panel, 7);
  const original = update_state_tree(c._$n__$M_(), cursor, c._$n__$M_(4, 'old'));
  const changed = update_state_tree_kv(original, cursor, 4, 'new');
  const value = get_state_at(changed, path(tags.panel, 7, tags.data));
  assert.equal(c.option_$o_unwrap_or(c.get(value, 4), null), 'new');
  assert.equal(c.get(value, '4').tag.value, 'none');
  assert.equal(get_state_at(original, path(tags.panel, 7, tags.data, 4)), 'old');
});

test('partial Struct field update preserves nominal identity after the shape guard', () => {
  const fields = c.init_tags(['stop-propagation?', 'listener-mode', 'property']);
  const original = c._$n__PCT__$M_(EventConfig,
    fields['stop-propagation?'], true,
    fields['listener-mode'], c._PCT__$o__$o_(ListenerMode, fields.property));
  const states = update_state_tree(c._$n__$M_(), path(tags.panel, 'task-1'), original);
  const changed = update_state_tree_kv(states, path(tags.panel, 'task-1'), fields['stop-propagation?'], false);
  const value = get_state_at(changed, path(tags.panel, 'task-1', tags.data));
  assert.equal(c._$n_struct_$o_definition(value), c._$n_struct_$o_definition(original));
  assert.equal(c.option_$o_unwrap_or(c.get(value, fields['stop-propagation?']), null), false);
  assert.throws(() => update_state_tree_kv(states, path(tags.panel, 'task-1'), 7, false));
  assert.equal(c.option_$o_unwrap_or(c.get(original, fields['stop-propagation?']), null), true);
});


test('cursor Struct regression validates nominal identity after consecutive updates', () => {
  const fields = c.init_tags(['draft', 'locked?', 'message']);
  const original = c._$n__PCT__$M_(CursorTestState, fields.draft, 'a', fields['locked?'], false, fields.message, 'ready');
  assert.equal(coerce_cursor_test_state(original), original);
  const first = update_state_tree_merge(c._$n__$M_(), path(), original, c._$n__$M_(fields.draft, 'b'));
  const second = update_state_tree_merge(first, path(), original, c._$n__$M_(fields.draft, 'c'));
  const state = get_state_at(second, path(tags.data));
  assert.equal(coerce_cursor_test_state(state), state);
  assert.equal(c.option_$o_unwrap(c.get(state, fields.draft)), 'c');
  assert.equal(c.option_$o_unwrap(c.get(state, fields.message)), 'ready');
  assert.equal(c.option_$o_unwrap(c.get(original, fields.draft)), 'a');
  const sameFields = c._$n__$M_(fields.draft, 'a', fields['locked?'], false, fields.message, 'ready');
  const otherStruct = c._$n__PCT__$M_(EventConfig, c.turn_tag('stop-propagation?'), false, c.turn_tag('listener-mode'), c._PCT__$o__$o_(ListenerMode, c.turn_tag('property')));
  for (const invalid of [null, undefined, 42, c.arrayToList([]), sameFields, otherStruct]) {
    assert.throws(() => coerce_cursor_test_state(invalid), { message: '[Respo/test]-expected-CursorTestState' });
  }
});
