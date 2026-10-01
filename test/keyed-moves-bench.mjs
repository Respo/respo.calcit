import { performance } from 'node:perf_hooks';
import { resolve } from 'node:path';
import { pathToFileURL } from 'node:url';
import { Worker, isMainThread, parentPort, workerData } from 'node:worker_threads';
import { cases, orderedCases, sampleCount, median } from './keyed-moves-bench-cases.mjs';

if (!isMainThread) {
  const fixture = await import(workerData);
  const contexts = new Map(cases().map(item => [`${item.size}/${item.name}`, {
    ...item, rows: fixture.createRows(item.keys),
  }]));
  parentPort.on('message', item => {
    const { keys, next, rows } = contexts.get(`${item.size}/${item.name}`);
    const start = performance.now();
    for (let i = 0; i < 30; i++) fixture.collectPatches(keys, next, rows);
    const milliseconds = (performance.now() - start) / 30;
    const patches = fixture.collectPatches(keys, next, rows);
    const kinds = {};
    for (const patch of patches) kinds[patch.tag.value] = (kinds[patch.tag.value] ?? 0) + 1;
    parentPort.postMessage({ milliseconds, patches: patches.length, kinds });
  });
} else {
  const revisions = [{ name: 'candidate', url: new URL('./keyed-moves-fixture.mjs', import.meta.url).href }];
  if (process.argv[2]) revisions.unshift({ name: 'baseline', url:
    pathToFileURL(resolve(process.argv[2], 'test/keyed-moves-fixture.mjs')).href });
  for (const revision of revisions) revision.worker = new Worker(new URL(import.meta.url), { workerData: revision.url });
  const run = (revision, item) => new Promise((resolve, reject) => {
    const failed = error => { reject(error); };
    revision.worker.once('error', failed);
    revision.worker.once('message', result => {
      revision.worker.removeListener('error', failed);
      resolve(result);
    });
    revision.worker.postMessage(item);
  });
  const samples = [];
  let execution = 0;
  for (let round = -3; round < sampleCount; round++) {
    for (const item of orderedCases(round + 3)) {
      const order = round % 2 === 0 ? revisions : [...revisions].reverse();
      for (const revision of order) {
        const { milliseconds, patches, kinds } = await run(revision, item);
        if (round >= 0) samples.push({ execution: execution++, round,
          order: order.map(entry => entry.name), revision: revision.name,
          size: item.size, case: item.name, milliseconds, patches, kinds });
      }
    }
  }
  const results = revisions.flatMap(revision => cases().map(item => {
    const { patches, kinds } = samples.find(sample => sample.revision === revision.name &&
      sample.size === item.size && sample.case === item.name);
    return { revision: revision.name, size: item.size, case: item.name, patches,
      kinds, milliseconds: Number(median(samples.filter(sample => sample.revision === revision.name &&
        sample.size === item.size && sample.case === item.name).map(sample => sample.milliseconds)).toFixed(3)) };
  }));
  console.log(JSON.stringify({ sampleCount, results, samples }, null, 2));

  for (const revision of revisions) await revision.worker.terminate();
}
