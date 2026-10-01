import { parentPort, workerData } from 'node:worker_threads';
import { pathToFileURL } from 'node:url';
const load = file => import(pathToFileURL(`${workerData.root}/js-out/${file}.mjs`));
const c = await load('calcit.core');
const patch = await load('respo.render.patch');
const tags = c.init_tags(['click']);
const coord = c.arrayToList([]);
parentPort.on('message', ({ count }) => {
  let calls = 0;
  let stopped = 0;
  const event = { stopPropagation: () => { stopped++; } };
  const builder = () => () => { calls++; };
  const start = performance.now();
  for (let i = 0; i < count; i++) {
    const target = {};
    patch.add_event(target, tags.click, builder, coord);
    patch.add_event(target, tags.click, builder, coord);
    patch.add_event(target, tags.click, builder, coord);
    target.onclick(event);
    patch.rm_event(target, tags.click);
    if (target.onclick !== null) throw new Error('property removal regression');
  }
  const milliseconds = performance.now() - start;
  if (calls !== count || stopped !== count) throw new Error('default delivery/propagation regression');
  parentPort.postMessage({ milliseconds, calls, stopped });
});
parentPort.postMessage({ ready: true });
