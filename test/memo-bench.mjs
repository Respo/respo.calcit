import { Worker, isMainThread, parentPort, workerData } from 'node:worker_threads';
import { performance } from 'node:perf_hooks';
import { resolve } from 'node:path';
import { pathToFileURL } from 'node:url';

if (!isMainThread) {
  const c = await import(new URL('js-out/calcit.core.mjs', workerData));
  const m = await import(new URL('js-out/respo.memo.mjs', workerData));
  parentPort.on('message', scenario => {
    m.reset_component_caches_$x_();
    let calls = 0;
    const derive = value => {
      calls++;
      return c.arrayToList(Array.from({ length: 1000 }, (_, i) => i + value));
    };
    const inner = value => m.memo_value_by('inner', derive, value);
    const outer = version => m.memo_value_by('middle', inner, 7);
    const start = performance.now();
    if (scenario === 'nested') {
      for (let frame = 0; frame < 60; frame++) {
        m.begin_memo_frame_$x_();
        m.memo_value_by('outer', outer, Math.floor(frame / 6));
        m.finish_memo_frame_$x_();
      }
    } else if (scenario === 'flat') {
      for (let frame = 0; frame < 10; frame++) {
        m.begin_memo_frame_$x_();
        for (let key = 0; key < 100; key++) m.memo_value_by(key, derive, key);
        m.finish_memo_frame_$x_();
      }
    } else {
      for (let key = 0; key < 1000; key++) m.memo_value_by(key, derive, key);
    }
    parentPort.postMessage({ milliseconds: performance.now() - start,
      calls, cacheSize: m.component_cache_size() });
  });
} else {
  const revisions = [{ name: 'candidate', directory: resolve(import.meta.dirname, '..') }];
  if (process.argv[2]) revisions.unshift({ name: 'baseline', directory: resolve(process.argv[2]) });
  for (const revision of revisions) revision.worker = new Worker(new URL(import.meta.url), {
    workerData: pathToFileURL(revision.directory + '/').href,
  });
  const run = (revision, scenario) => new Promise((resolve, reject) => {
    const failed = error => reject(error);
    revision.worker.once('error', failed);
    revision.worker.once('message', result => {
      revision.worker.removeListener('error', failed);
      resolve(result);
    });
    revision.worker.postMessage(scenario);
  });
  const samples = [];
  const scenarios = ['nested', 'flat', 'outside'];
  for (let round = -3; round < 11; round++) {
    const offset = (round + 3) % scenarios.length;
    for (const scenario of [...scenarios.slice(offset), ...scenarios.slice(0, offset)]) {
      const order = round % 2 === 0 ? revisions : [...revisions].reverse();
      for (const revision of order) {
        const result = await run(revision, scenario);
        if (round >= 0) samples.push({ execution: samples.length, round,
          order: order.map(entry => entry.name), revision: revision.name, scenario, ...result });
      }
    }
  }
  const results = revisions.flatMap(revision => scenarios.map(scenario => {
    const values = samples.filter(sample => sample.revision === revision.name && sample.scenario === scenario);
    const sorted = values.map(sample => sample.milliseconds).sort((a, b) => a - b);
    return { revision: revision.name, scenario, milliseconds: Number(sorted[5].toFixed(3)),
      calls: values[0].calls, cacheSize: values[0].cacheSize };
  }));
  console.log(JSON.stringify({ results, samples }, null, 2));
  for (const revision of revisions) await revision.worker.terminate();
}
