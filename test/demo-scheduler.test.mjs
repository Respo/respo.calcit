import test from 'node:test';
import assert from 'node:assert/strict';
import * as c from '../js-out/calcit.core.mjs';
import { _$s_store, dispatch_$x_ } from '../js-out/respo.app.core.mjs';
import { try_test_$x_, comp_todolist, on_keydown } from '../js-out/respo.app.comp.todolist.mjs';
import { watch_render_$x_ } from '../js-out/respo.app.scheduler.mjs';
import { verifyDemoScheduler, verifyManualQueue, stopWatching, taskCount, addTask } from './demo-scheduler-fixture.mjs';
import { normalize_task } from '../js-out/respo.app.task.mjs';
import { Task, TodoState } from '../js-out/respo.app.schema.mjs';
import { span, run_effect_ops_$x_, run_first_task_$x_ } from '../js-out/respo.core.mjs';
import { comp_task } from '../js-out/respo.app.comp.task.mjs';
import { DomPatch } from '../js-out/respo.schema.mjs';

test('effect helpers preserve order and target and reject non-callable queue entries', () => {
  const variants = c.init_tags(['effect-mount', 'effect-unmount', 'effect-before-update', 'effect-update']);
  const calls = [], target = {};
  const effects = Object.entries(variants).map(([name, variant]) => c._PCT__$o__$o_(
    DomPatch, variant, c.arrayToList([]), c.arrayToList([]), received => calls.push([name, received])));
  run_effect_ops_$x_(c.arrayToList(effects), target);
  assert.deepEqual(calls, Object.keys(variants).map(name => [name, target]));
  let count = 0;
  run_first_task_$x_(c.arrayToList([() => count++, () => assert.fail('only first task runs')]));
  assert.equal(count, 1);
  assert.throws(() => run_first_task_$x_(c.arrayToList([42])), /expected queued task callback/);
  assert.throws(() => run_effect_ops_$x_(
    c.parse_cirru_edn('[] (:: :effect-mount ([]) ([]) 42)'), target), /expected effect callback/);
});

test('task restoration preserves nominal identity and checks stored map fields', () => {
  const tags = c.init_tags(['id', 'text', 'done?']);
  const task = c._$n__PCT__$M_(Task, tags.id, 'task-1', tags.text, 'saved', tags['done?'], false);
  assert.equal(c.option_$o_unwrap(normalize_task(task)), task);
  const restored = c.option_$o_unwrap(normalize_task(c._$n__$M_(
    tags.id, 'task-2', tags.text, 'mapped', tags['done?'], true)));
  assert.equal(c._$n_struct_$o_definition(restored), Task);
  for (const invalid of [null, 42, span(c._$n__$M_()), c._$n__$M_(tags.id, 'missing'),
    c._$n__$M_(tags.id, 'task', tags.text, 'text', tags['done?'], 'wrong'),
    c._$n__$M_(tags.id, 42, tags.text, 'text', tags['done?'], false)]) {
    assert.equal(normalize_task(invalid).tag.value, 'none');
  }
});

test('real demo dispatches coalesce with the default microtask queue and survive watch replacement', () => verifyDemoScheduler());
test('demo watch supports deterministic enqueue injection', verifyManualQueue);

test('stopping the demo watch cancels queued renders and permits a fresh registration', () => {
  const original = c.deref(_$s_store);
  const tasks = [];
  let renders = 0;
  const enqueue = c._PCT__$o__$o_(c.Option, c.init_tags(['some']).some, task => { tasks.push(task); });
  stopWatching();
  try {
    watch_render_$x_(() => { renders++; }, enqueue);
    addTask('queued before stop');
    assert.equal(tasks.length, 1);
    stopWatching();
    stopWatching();
    watch_render_$x_(() => { renders++; }, enqueue);
    addTask('queued after restart');
    assert.equal(tasks.length, 2);
    tasks.shift()();
    assert.equal(renders, 0, 'the old callback stays invalid after a new watch is active');
    tasks.shift()();
    assert.equal(renders, 1);
  } finally {
    stopWatching();
    c.reset_$x_(_$s_store, original);
  }
});

test('heavy task timing rejects a non-number clock result before dispatching', () => {
  const originalNow = Date.now;
  let dispatches = 0;
  try {
    Date.now = () => 'invalid-clock';
    assert.throws(() => try_test_$x_(() => dispatches++, c.arrayToList([])));
    assert.equal(dispatches, 0);
  } finally {
    Date.now = originalNow;
  }
});

test('the heavy tasks burst measures after its scheduled render', async () => {
  const original = c.deref(_$s_store);
  const originalLog = console.log;
  let renders = 0;
  let dispatches = 0;
  let measuredAfterRender = false;
  try {
    watch_render_$x_(() => { renders++; });
    console.log = (...args) => {
      if (String(args[0]).includes('result:')) measuredAfterRender = renders === 1;
    };
    try_test_$x_(op => { dispatches++; dispatch_$x_(op); }, c.arrayToList(Array(40).fill(0)));
    assert.equal(dispatches, 55);
    assert.equal(renders, 0);
    assert.equal(measuredAfterRender, false);
    await Promise.resolve();
    assert.equal(renders, 1);
    assert.equal(taskCount(), 11);
    assert.equal(measuredAfterRender, true);
  } finally {
    console.log = originalLog;
    stopWatching();
    c.reset_$x_(_$s_store, original);
  }
});

function inputHandlers(root) {
  const found = [], seen = new Set();
  const visit = node => {
    if (node === null || typeof node !== 'object' || seen.has(node)) return;
    seen.add(node);
    if (node.name?.value === 'Element') {
      const field = name => node.values[node.fields.findIndex(key => key.value === name)];
      if (field('name')?.value === 'input') {
        const events = field('event');
        const index = events.chunk.findIndex(key => key?.value === 'input');
        if (index >= 0) found.push(events.chunk[index + 1]);
      }
    }
    for (const key of ['values', 'extra', 'value', 'chunk']) {
      if (Array.isArray(node[key])) node[key].forEach(visit);
    }
    if (Array.isArray(node)) node.forEach(visit);
  };
  visit(root);
  return found;
}

test('rendered demo inputs validate event maps and text before dispatch', () => {
  const states = c.parse_cirru_edn('{} (:cursor $ [])');
  const task = c.option_$o_unwrap(normalize_task(c.parse_cirru_edn('{} (:id |t1) (:text |before) (:done? false)')));
  const draft = inputHandlers(comp_todolist(states, c.arrayToList([])));
  const taskInputs = inputHandlers(comp_task(states, task));
  assert.equal(draft.length, 1);
  assert.equal(taskInputs.length, 2);
  const cases = [[draft[0], 'states-merge'], [taskInputs[0], 'update'], [taskInputs[1], 'states']];
  for (const [handler, op] of cases) {
    const calls = [], dispatch = value => { calls.push(value); };
    handler(c.parse_cirru_edn('{} (:value |after)'), dispatch);
    assert.equal(c.to_js_data(calls[0])[0], op);
    assert.match(c.format_cirru_edn(calls[0]), /after/);
    calls.length = 0;
    for (const invalid of [null, 42, {}, c.parse_cirru_edn('{} (|value |after)')]) {
      assert.throws(() => handler(invalid, dispatch));
      assert.deepEqual(calls, []);
    }
    if (op !== 'states') {
      for (const invalid of ['{}', '{} (:value 42)', '{} (:value nil)']) {
        assert.throws(() => handler(c.parse_cirru_edn(invalid), dispatch));
        assert.deepEqual(calls, []);
      }
    }
  }
  const opaque = c.parse_cirru_edn('{} (:nested 42)'), calls = [];
  taskInputs[1](c._$n__$M_(c.turn_tag('value'), opaque), value => { calls.push(value); });
  assert.equal(c._$n_enum_$o_nth(calls[0], 2), opaque, 'local state remains an open value');
});

test('demo Ctrl+M listener checks payload and preserves shortcut and timer behavior', () => {
  const tags = c.init_tags(['draft', 'locked?', 'message']);
  const state = c._$n__PCT__$M_(TodoState, tags.draft, '', tags['locked?'], false, tags.message, 'before');
  const listener = on_keydown(c.arrayToList([]), state);
  const handler = listener.values[listener.fields.findIndex(field => field.value === 'handler')];
  const originalWindow = globalThis.window, calls = [], timers = [];
  globalThis.window = { setTimeout(callback, delay) { timers.push([callback, delay]); } };
  const dispatch = op => { calls.push(op); };
  try {
    handler(c.parse_cirru_edn(':: :keydown ({} (:key |m) (:ctrl false))'), dispatch);
    handler(c.parse_cirru_edn(':: :keydown ({} (:key |x) (:ctrl true))'), dispatch);
    assert.deepEqual(calls, []);
    handler(c.parse_cirru_edn(':: :keydown ({} (:key |m) (:ctrl true))'), dispatch);
    assert.equal(calls.length, 1);
    assert.match(c.format_cirru_edn(calls[0]), /Message changed by Ctrl\+M/);
    assert.equal(timers.length, 1);
    assert.equal(timers[0][1], 2000);
    timers[0][0]();
    assert.equal(calls.length, 2);
    assert.match(c.format_cirru_edn(calls[1]), /Press Ctrl\+M/);
    for (const invalid of ['nil', '42', '{} (|key |m) (:ctrl true)']) {
      assert.throws(() => handler(c.parse_cirru_edn(`:: :keydown (${invalid})`), dispatch));
      assert.equal(calls.length, 2);
      assert.equal(timers.length, 1);
    }
  } finally {
    if (originalWindow === undefined) delete globalThis.window;
    else globalThis.window = originalWindow;
  }
});

test('demo state boundaries preserve mixed keys and require nominal TodoState', () => {
  const tags = c.init_tags(['draft', 'locked?', 'message', 'data', 'cursor']);
  const state = c._$n__PCT__$M_(TodoState, tags.draft, 'saved draft', tags['locked?'], true, tags.message, 'saved message');
  const states = c._$n__$M_(tags.cursor, c.arrayToList(['root']), tags.data, state, 'child-key', c.parse_cirru_edn('{}'));
  const rendered = comp_todolist(states, c.arrayToList([]));
  assert.equal(inputHandlers(rendered).length, 1);
  const calls = [];
  inputHandlers(rendered)[0](c.parse_cirru_edn('{} (:value |next)'), op => { calls.push(op); });
  assert.equal(c._$n_enum_$o_nth(calls[0], 2), state, 'state identity survives checking');
  const task = c.option_$o_unwrap(normalize_task(c.parse_cirru_edn('{} (:id |t1) (:text |task) (:done? false)')));
  for (const invalid of [null, 42, c.arrayToList([])]) {
    assert.throws(() => comp_todolist(invalid, c.arrayToList([])));
    assert.throws(() => comp_task(invalid, task));
  }
  for (const invalid of [42, c.parse_cirru_edn('{} (:draft |bad)'), task]) {
    assert.throws(() => comp_todolist(c._$n__$M_(tags.data, invalid), c.arrayToList([])), /expected TodoState/);
  }
});
