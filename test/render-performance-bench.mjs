import { Worker, isMainThread, parentPort, workerData } from 'node:worker_threads';
import { performance } from 'node:perf_hooks';
import { pathToFileURL } from 'node:url';
import { resolve } from 'node:path';
import { createPerformanceFixture } from './render-performance-fixture.mjs';
if (!isMainThread) {
  const fixtures = await createPerformanceFixture(workerData, true);
  parentPort.on('message', scenario => {
    const start = performance.now();
    const evidence = fixtures[scenario].run();
    const milliseconds = performance.now() - start;
    fixtures[scenario].verify();
    parentPort.postMessage({ milliseconds, ...evidence });
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
    revision.worker.once('message', result => { revision.worker.removeListener('error', failed); resolve(result); });
    revision.worker.postMessage(scenario);
  });
  const scenarios = ['deep', 'long-list', 'dispatch', 'listener-index-prototype'];
  const samples = [];
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
    const times = values.map(sample => sample.milliseconds).sort((a, b) => a - b);
    const { milliseconds, execution, round, order, ...evidence } = values[0];
    return { ...evidence, milliseconds: Number(times[5].toFixed(3)) };
  }));
  console.log(JSON.stringify({ results, samples }, null, 2));
  for (const revision of revisions) await revision.worker.terminate();
}
