import { performance } from 'node:perf_hooks';
import { createRows, collectPatches } from './keyed-moves-fixture.mjs';
const results = [];
for (const size of [100, 1000]) {
  const keys = Array.from({ length: size }, (_, i) => i);
  const rows = createRows(keys);
  for (const [name, next] of [
    ['rotate', [size - 1, ...keys.slice(0, -1)]],
    ['reverse', [...keys].reverse()],
    ['swap', [keys[1], keys[0], ...keys.slice(2)]],
    ['unchanged', keys],
  ]) {
    const patches = collectPatches(keys, next, rows);
    const kinds = {};
    for (const patch of patches) kinds[patch.tag.value] = (kinds[patch.tag.value] ?? 0) + 1;
    for (let i = 0; i < 20; i++) collectPatches(keys, next, rows);
    const timings = [];
    for (let sample = 0; sample < 3; sample++) {
      const start = performance.now();
      for (let i = 0; i < 30; i++) collectPatches(keys, next, rows);
      timings.push((performance.now() - start) / 30);
    }
    timings.sort((a, b) => a - b);
    results.push({ size, case: name, patches: patches.length, kinds,
      milliseconds: Number(timings[1].toFixed(3)) });
  }
}
console.log(JSON.stringify(results, null, 2));
