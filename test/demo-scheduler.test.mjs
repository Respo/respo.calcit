import test from 'node:test';
import assert from 'node:assert/strict';
import * as c from '../js-out/calcit.core.mjs';
import { _$s_store, dispatch_$x_ } from '../js-out/respo.app.core.mjs';
import { try_test_$x_ } from '../js-out/respo.app.comp.todolist.mjs';
import { watch_render_$x_ } from '../js-out/respo.app.scheduler.mjs';
import { verifyDemoScheduler, verifyManualQueue, stopWatching, taskCount } from './demo-scheduler-fixture.mjs';
import { normalize_task } from '../js-out/respo.app.task.mjs';
import { Task } from '../js-out/respo.app.schema.mjs';
import { span } from '../js-out/respo.core.mjs';

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
