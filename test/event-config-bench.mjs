import { Worker } from 'node:worker_threads';
import { once } from 'node:events';
import { resolve } from 'node:path';
if (!process.argv[2]) throw new Error('Pass a compiled baseline checkout');
const roots = { baseline: resolve(process.argv[2]), candidate: resolve('.') };
const workers = {};
try {
  for (const [revision, root] of Object.entries(roots)) {
    const worker = new Worker(new URL('./event-config-bench-worker.mjs', import.meta.url), { workerData: { root } });
    workers[revision] = worker;
    const [message] = await once(worker, 'message');
    if (!message.ready) throw new Error('worker did not initialize');
  }
  const samples = [];
  for (let round = -3; round < 11; round++) {
    const order = round % 2 === 0 ? ['baseline', 'candidate'] : ['candidate', 'baseline'];
    for (const revision of order) {
      const pending = once(workers[revision], 'message');
      workers[revision].postMessage({ count: 3000 });
      const [result] = await pending;
      if (round >= 0) samples.push({ round, order, revision, ...result });
    }
  }
  const results = Object.keys(workers).map(revision => {
    const values = samples.filter(s => s.revision === revision).map(s => s.milliseconds).sort((a,b) => a-b);
    return { revision, medianMs: values[5] };
  });
  console.log(JSON.stringify({ nodes: 3000, operationsPerNode: 'three handler installs/updates, one delivery, one removal',
    warmupRounds: 3, measuredRounds: 11, roots, results, samples }, null, 2));
} finally {
  await Promise.all(Object.values(workers).map(worker => worker.terminate()));
}
