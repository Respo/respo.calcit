# Keyed child moves — #189

Baseline: main `97a4bc658ab00c11e20f7cdb370e74313982cd68`. Calcit and @calcit/procs `0.28.0-alpha.3`, js-ffi `0.2.1-alpha.11`, Node `24.4.1`, macOS arm64, Chrome `154.0.0.0`. Both revisions use the same fixture, with two effects and a scrollable div/input subtree per keyed child.

## Diff benchmark

Run `node test/keyed-moves-bench.mjs /path/to/compiled-baseline` after compiling both revisions. Separate workers isolate Calcit trait registries. Each case has three warmup batches and eleven measured batches of 30 diffs; paired revision order alternates each round and case order rotates. Milliseconds exclude tree construction and DOM application. Patch counts include effects. Both harnesses retain raw timings and executed order; [recorded samples](20261001-keyed-moves-bench.json) contain this comparison.

| Items | Case | Patches before → after | ms before | ms after |
| --- | --- | --- | --- | --- |
| 100 | rotate | 6 → 1 | 0.098 | 0.114 |
| 100 | reverse | 594 → 99 | 0.535 | 0.705 |
| 100 | swap | 6 → 1 | 0.095 | 0.212 |
| 100 | unchanged | 0 → 0 | 0.092 | 0.022 |
| 1000 | rotate | 6 → 1 | 0.993 | 4.755 |
| 1000 | reverse | 5994 → 999 | 6.101 | 17.928 |
| 1000 | swap | 6 → 1 | 0.988 | 1.941 |
| 1000 | unchanged | 0 → 0 | 0.982 | 0.219 |

## Chrome render benchmark

Serve both compiled revisions through Vite. Copy the current benchmark HTML and `keyed-moves-bench-cases.mjs` into the baseline checkout (retain its compiled runtime and fixture), then open the candidate page with `?baseline=` followed by the URL-encoded baseline benchmark URL. The baseline runs in an iframe with its own runtime. Timings include `render!` and forced layout, with prebuilt trees and original order restored outside the measured interval. Three warmup rounds precede eleven measured rounds; revision order alternates and case order rotates. Without the baseline parameter the page measures the candidate alone.

| Items | Case | ms before | ms after |
| --- | --- | --- | --- |
| 100 | rotate | 0.3 | 0.7 |
| 100 | reverse | 3.4 | 2.1 |
| 100 | swap | 0.3 | 0.5 |
| 100 | unchanged | 0.1 | 0 |
| 1000 | rotate | 1.6 | 8.6 |
| 1000 | reverse | 42.2 | 33.9 |
| 1000 | swap | 1.6 | 5.6 |
| 1000 | unchanged | 1.2 | 0.2 |

These are local samples, not timing assertions. Unchanged key order is faster, and full reversal reduces DOM work and render time. Index maps and scroll preservation add costs, so some reorders remain slower despite requiring fewer patches. Follow-up profiling should target these costs; this change does not establish a general speedup across all reorder cases.

## Correctness and compatibility

The implementation was rebased onto main `69081288a83cb43eb49af4f030ea9bfd06e57a12`, integrating the nil-child, SSR escaping/Node style, and paste-event fixes. The integrated snapshot passes 60 native tests and 128 documentation snippets.

- Before the fix, moving key 39 to the front replaced the original DOM node in Chrome.
- All 720 six-key permutations preserve nodes and emit exactly `n - LIS` moves. Adjacent swaps and moves beyond 16 positions emit one move.
- Mixed additions/removals and nested reorders preserve surviving nodes and use correct coordinates. Public keyed lists filter nil pairs before diffing; a nil-to-element/removal/reorder regression passes. Scroll regression simulates move-induced scroll loss across two batches separated by effects, and asserts both preservation and intentional effect writes.
- Chrome checks reorder, reversal, head/tail additions and mixed deletion for both native `moveBefore` and forced insertion fallback. Focus, input, selection and scroll survive; moved components do not mount or unmount again.
- The executor captures node snapshots before moves for each parent. Scroll offsets are captured once per moved parent within a consecutive move batch and restored before the next non-move patch. Later effects retain their scroll updates; subsequent move batches capture fresh offsets. Unrelated application siblings are not scanned. Capture remains on the native path because Chrome 154 was observed resetting a focused moved scroller from 10 to 0 inside `moveBefore`.
- Snapshot validation, native tests, DOM host checks, move payload/exhaustiveness checks, docs and build pass. Quality debt is unchanged; two previous unsafe coercions are removed.
- Local repository snapshots containing `DomPatch` belong to Respo checkouts; GitHub code search for `respo.schema/DomPatch` returned no other consumers. This is limited discovery evidence. Direct exhaustive matches must handle the new variant as described in [the upgrade guide](../docs/guide/upgrade.md).
