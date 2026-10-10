import * as c from '../js-out/calcit.core.mjs';
import { _$s_store, dispatch_$x_ } from '../js-out/respo.app.core.mjs';
import { Op } from '../js-out/respo.app.schema.mjs';
import { watch_render_$x_, stop_render_watch_$x_ } from '../js-out/respo.app.scheduler.mjs';

const tags = c.init_tags(['add', 'clear', 'tasks', 'rerender', 'some']);
export const taskCount = () => c.count(c.deref(_$s_store).get(tags.tasks));
export const addTask = text => dispatch_$x_(c._PCT__$o__$o_(Op, tags.add, text));
export const clearTasks = () => dispatch_$x_(c._PCT__$o__$o_(Op, tags.clear));
export function stopWatching() {
  stop_render_watch_$x_();
}
const equal = (actual, expected, label) => {
  if (actual !== expected) throw new Error(`${label}: ${actual} != ${expected}`);
};

// Uses the same watch installer, store, and dispatch function as respo.main.
export async function verifyDemoScheduler(render = () => {}) {
  const original = c.deref(_$s_store);
  stopWatching();
  clearTasks();
  let renders = 0;
  let latestTasks = -1;
  const countedRender = () => { renders++; latestTasks = taskCount(); render(); };
  try {
    watch_render_$x_(countedRender);
    for (let i = 0; i < 20; i++) addTask(`burst-${i}`);
    equal(renders, 0, 'dispatch does not render synchronously');
    await Promise.resolve();
    equal(renders, 1, 'twenty real demo dispatches render once');
    equal(latestTasks, 20, 'callback reads latest store');
    addTask('next tick');
    await Promise.resolve();
    equal(renders, 2, 'a later tick renders again');
    equal(latestTasks, 21, 'later render sees latest store');

    addTask('queued before reload');
    let replacementRenders = 0;
    watch_render_$x_(() => { replacementRenders++; render(); });
    addTask('queued after reload');
    await Promise.resolve();
    equal(renders, 2, 'old queued callback is invalidated');
    equal(replacementRenders, 1, 'replacement watch renders once');
    return { burstDispatches: 20, burstRenders: 1, latestTasks, replacementRenders };
  } finally {
    stopWatching();
    c.reset_$x_(_$s_store, original);
  }
}

export function verifyManualQueue() {
  const original = c.deref(_$s_store);
  const tasks = [];
  let renders = 0;
  stopWatching();
  try {
    watch_render_$x_(() => { renders++; }, c._PCT__$o__$o_(c.Option, tags.some, task => { tasks.push(task); }));
    for (let i = 0; i < 20; i++) addTask(`manual-${i}`);
    equal(tasks.length, 1, 'one injected callback');
    equal(renders, 0, 'manual queue has not run');
    tasks.shift()();
    equal(renders, 1, 'manual queue renders once');
  } finally {
    stopWatching();
    c.reset_$x_(_$s_store, original);
  }
}

// Paired before/after comparison changes only the demo watch policy.
export async function benchmarkDemoScheduler(render, rounds = 11) {
  const original = c.deref(_$s_store);
  const samples = [];
  try {
    for (let round = -3; round < rounds; round++) {
      const order = round % 2 === 0 ? ['sync', 'scheduled'] : ['scheduled', 'sync'];
      for (const mode of order) {
        stopWatching();
        clearTasks();
        render();
        let renders = 0;
        const counted = () => { renders++; render(); };
        // Both policies use the same owned registration and cleanup lifecycle.
        if (mode === 'sync') watch_render_$x_(counted, c._PCT__$o__$o_(c.Option, tags.some, task => { task(); }));
        else watch_render_$x_(counted);
        const start = performance.now();
        for (let i = 0; i < 20; i++) addTask(`sample-${i}`);
        await Promise.resolve();
        const milliseconds = performance.now() - start;
        equal(renders, mode === 'sync' ? 20 : 1, `${mode} render count`);
        equal(taskCount(), 20, 'benchmark final state');
        if (round >= 0) samples.push({ round, order, mode, renders, milliseconds });
      }
    }
    const median = mode => {
      const values = samples.filter(s => s.mode === mode).map(s => s.milliseconds).sort((a, b) => a - b);
      return values[Math.floor(values.length / 2)];
    };
    return { dispatches: 20, warmupRounds: 3, measuredRounds: rounds,
      sync: { renders: 20, medianMs: median('sync') },
      scheduled: { renders: 1, medianMs: median('scheduled') }, samples };
  } finally {
    stopWatching();
    c.reset_$x_(_$s_store, original);
  }
}
