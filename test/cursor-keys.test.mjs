import assert from 'node:assert/strict';
import test from 'node:test';
import { spawnSync } from 'node:child_process';
import * as c from '../js-out/calcit.core.mjs';
import { CursorTestState, coerce_cursor_test_state, get_state_at, update_state_tree, update_state_tree_kv, update_state_tree_merge } from '../js-out/respo.cursor.mjs';
import { EventConfig, ListenerMode } from '../js-out/respo.schema.mjs';
import { _GT__GT_ as child_states } from '../js-out/respo.core.mjs';

const tags = c.init_tags(['panel', 'data', 'draft', 'locked?']);
const path = (...keys) => c.arrayToList(keys);

test('>> preserves String and Number branches alongside Tag cursor metadata', () => {
  const nested = c._$n__$M_(tags.data, 'nested');
  const branch = c._$n__$M_(tags.data, 'draft', 7, nested);
  const root = c._$n__$M_(c.turn_tag('cursor'), path(tags.panel),
    'task-1', branch, 7, c._$n__$M_(tags.data, 'number'));
  const selected = child_states(root, 'task-1');
  const leaf = child_states(selected, 7);
  assert.equal(c._$n_map_$o_get(selected, tags.data), 'draft');
  assert.ok(c._$n__$e_(c._$n_map_$o_get(selected, c.turn_tag('cursor')), path(tags.panel, 'task-1')));
  assert.equal(c._$n_map_$o_get(selected, 7), nested);
  assert.equal(c.get(selected, '7').tag.value, 'none');
  assert.equal(c._$n_map_$o_get(leaf, tags.data), 'nested');
  assert.ok(c._$n__$e_(c._$n_map_$o_get(leaf, c.turn_tag('cursor')), path(tags.panel, 'task-1', 7)));
  assert.equal(c._$n_map_$o_get(child_states(root, 7), tags.data), 'number');
  assert.ok(c._$n__$e_(c._$n_map_$o_get(root, c.turn_tag('cursor')), path(tags.panel)));
  assert.equal(c.get(branch, c.turn_tag('cursor')).tag.value, 'none');
});

test('>> retains nil seeds and rejects malformed map or cursor boundaries', () => {
  const cursor = c.turn_tag('cursor');
  assert.ok(c._$n__$e_(child_states(null, 'task-1'), c._$n__$M_(cursor, path('task-1'))));
  assert.throws(() => child_states(1, 'task-1'), /expected states as a map/);
  assert.throws(() => child_states(c._$n__$M_('task-1', 1), 'task-1'), /expected states as a map/);
  assert.throws(() => child_states(c._$n__$M_(cursor, 1), 'task-1'), /expected states cursor as a list/);
});

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

test('state writes preserve assoc-in behavior for nil, mixed Map keys and List fallback', () => {
  const value = c.parse_cirru_edn('{} (:payload |unchanged)');
  const cases = [
    [null, path()],
    [c._$n__$M_(), path(tags.panel, 'task-1', 7)],
    [c._$n__$M_(tags.panel, null), path(tags.panel, 'task-1')],
    [c.arrayToList([c._$n__$M_()]), path(0)],
    [c._$n__$M_(tags.panel, c.arrayToList([c._$n__$M_()])), path(tags.panel, 0)],
  ];
  for (const [states, cursor] of cases) {
    const fullPath = c.concat(cursor, path(tags.data));
    const expected = c.assoc_in(states, fullPath, value);
    const actual = update_state_tree(states, cursor, value);
    assert.equal(c.format_cirru_edn(actual), c.format_cirru_edn(expected));
    assert.equal(get_state_at(actual, fullPath), value, 'written value retains identity');
  }
});

test('Struct cursor updates accept String fields and reject invalid fields and values', () => {
  const fields = c.init_tags(['draft', 'locked?', 'message']);
  const original = c._$n__PCT__$M_(CursorTestState,
    fields.draft, 'old', fields['locked?'], false, fields.message, 'ready');
  const states = update_state_tree(c._$n__$M_(), path(tags.panel), original);
  const changed = update_state_tree_kv(states, path(tags.panel), 'draft', 'new');
  assert.equal(c.option_$o_unwrap(c.get(get_state_at(changed, path(tags.panel, tags.data)), fields.draft)), 'new');
  assert.equal(c.option_$o_unwrap(c.get(original, fields.draft)), 'old');
  for (const key of [42, 'missing-field']) {
    assert.throws(() => update_state_tree_kv(states, path(tags.panel), key, 'bad'));
    assert.throws(() => update_state_tree_merge(states, path(tags.panel), original, c._$n__$M_(key, 'bad')));
  }
  assert.throws(() => update_state_tree_kv(states, path(tags.panel), fields['locked?'], 'bad'));
});

test('native framework regressions emit no dynamic method or untyped host access warnings', () => {
  const result = spawnSync(process.env.CALCIT_BIN ?? 'calcit',
    ['calcit.cirru', '--warn-dyn-method', 'test', '--require-match', '--summary-only', '--format', 'json'],
    { encoding: 'utf8', timeout: 30000 });
  assert.ifError(result.error);
  assert.equal(result.status, 0, result.stdout + result.stderr);
  const summary = JSON.parse(result.stdout);
  assert.ok(summary.selected > 0);
  assert.equal(summary.failed, 0);
  assert.doesNotMatch(result.stderr, /\[warn-dyn-method\]|W_JS_FFI_UNTYPED_ACCESS/);
});
