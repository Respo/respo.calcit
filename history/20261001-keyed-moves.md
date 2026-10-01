# Keyed child moves — #189

Baseline: main `97a4bc658ab00c11e20f7cdb370e74313982cd68`. Calcit and @calcit/procs `0.28.0-alpha.3`, js-ffi `0.2.1-alpha.11`, Node `24.4.1`, macOS arm64, Chrome `154.0.0.0`. Both revisions use the same fixture, with two effects and a scrollable div/input subtree per keyed child.

## Diff benchmark

`yarn bench-keyed-moves`: 20 warmup calls, median of three batches of 30 calls; milliseconds per diff, excluding tree construction and DOM application. Patch counts include effects.

| Items | Case | Patches before → after | ms before | ms after |
| --- | --- | --- | --- | --- |
| 100 | rotate | 6 → 1 | 0.165 | 0.172 |
| 100 | reverse | 594 → 99 | 0.611 | 0.795 |
| 100 | swap | 6 → 1 | 0.106 | 0.227 |
| 100 | unchanged | 0 → 0 | 0.102 | 0.033 |
| 1000 | rotate | 6 → 1 | 1.002 | 4.694 |
| 1000 | reverse | 5994 → 999 | 6.152 | 17.458 |
| 1000 | swap | 6 → 1 | 0.99 | 2.062 |
| 1000 | unchanged | 0 → 0 | 0.975 | 0.238 |

## Chrome render benchmark

Open `test/examples/keyed-moves-bench.html` through Vite. Timings include `render!` and forced layout, with prebuilt trees. Each case restores the original order outside the measured interval; two warmups precede the median of three measured calls.

| Items | Case | ms before | ms after |
| --- | --- | --- | --- |
| 100 | rotate | 0.5 | 0.9 |
| 100 | reverse | 4.5 | 3 |
| 100 | swap | 0.2 | 0.8 |
| 100 | unchanged | 0.1 | 0.1 |
| 1000 | rotate | 1.7 | 8.5 |
| 1000 | reverse | 44.4 | 33.7 |
| 1000 | swap | 1.3 | 4.7 |
| 1000 | unchanged | 1 | 0.2 |

These are local samples, not timing assertions. Unchanged key order is faster, and full reversal reduces DOM work and render time. Index maps and scroll preservation add costs, so some reorders remain slower despite requiring fewer patches. Follow-up profiling should target these costs; this change does not establish a general speedup across all reorder cases.

## Correctness and compatibility

The implementation was rebased onto main `69081288a83cb43eb49af4f030ea9bfd06e57a12`, integrating the nil-child, SSR escaping/Node style, and paste-event fixes. The integrated snapshot passes 60 native tests and 128 documentation snippets.

- Before the fix, moving key 39 to the front replaced the original DOM node in Chrome.
- All 720 six-key permutations preserve nodes and emit exactly `n - LIS` moves. Adjacent swaps and moves beyond 16 positions emit one move.
- Mixed additions/removals and nested reorders preserve surviving nodes and use correct coordinates.
- Chrome checks reorder, reversal, head/tail additions and mixed deletion for both native `moveBefore` and forced insertion fallback. Focus, input, selection and scroll survive; moved components do not mount or unmount again.
- The executor captures node snapshots before moves for each parent. Scroll offsets are collected before the first move and restored after the batch, avoiding layout reads between individual moves.
- Snapshot validation, native tests, DOM host checks, move payload/exhaustiveness checks, docs and build pass. Quality debt is unchanged; two previous unsafe coercions are removed.
- Local repository snapshots containing `DomPatch` belong to Respo checkouts; GitHub code search for `respo.schema/DomPatch` returned no other consumers. This is limited discovery evidence. Direct exhaustive matches must handle the new variant as described in [the upgrade guide](../docs/guide/upgrade.md).
