# Patch lookup and duplicate keys — #191

Baseline: PR #204 head `5f302951c5dfd9e067676fc8b5105c7a8d1bfc6a`. Calcit and @calcit/procs `0.28.0-alpha.3`, js-ffi `0.2.1-alpha.11`, Node `24.4.1`, macOS arm64, Chrome `154.0.0.0`. This change is stacked on #204 so move invalidation is tested against the new protocol; it is independent of #205.

## Implementation

- Each patch application owns a map from DOM coordinate prefixes to successfully located nodes. A repeated path skips DOM traversal. Missing nodes are not cached, and no cache survives the invocation.
- Insert/remove/replace invalidate shifted descendants. Append/move invalidate child coordinates. Invalidation conservatively keeps only the unchanged parent and its ancestors, bounding work by path depth rather than scanning every cached branch for every mutation.
- Content properties invalidate affected descendants; outerHTML invalidates the containing sibling coordinates. Lifecycle callbacks clear the cache because a callback can change any node, including the mount root.
- Duplicate detection preserves the original warning text and earliest original duplicate key. Native evaluation uses hash sets. JavaScript uses native Map buckets keyed by Calcit hashes and explicitly checks deep equality within collisions; this avoids relying on the JavaScript Calcit Set's tree-backed lookup cost. Expected work is linear in key count, excluding key hashing/comparison costs and adversarial collision patterns. Empty and singleton lists return false without warning, matching the Boolean contract and existing caller behavior.

## Verification

61 native tests pass, including deep key equality and warning selection. JavaScript tests cover inserts, removals, replacement, append, move, root replacement, content removal, and lifecycle mutation followed by more patches in the same batch. A deterministic read-count assertion confirms reuse for 1000 patches at a 24-level coordinate. Collision tests use distinct strings `Aa` and `BB`, which share a Calcit hash, and verify they remain distinct and preserve warning order.

The same mutation sequence passes in Chrome with the expected node order and properties. Both native moveBefore and forced insertion fallback fixtures preserve node identity, focus/input/selection/scroll and lifecycle counts. Browser pages report no console errors after the benchmark URL setup was corrected. DOM host, nominal patch checks, docs, type quality and build also pass; this change adds no type debt.

## Reproducing measurements

Compile both checkouts and run `node test/render-performance-bench.mjs /path/to/compiled-baseline`. Worker isolation keeps Calcit registries separate. The browser harness is `test/examples/render-performance-bench.html?baseline=URL_ENCODED_BASELINE_URL`; serve both checkouts and copy the current harness, `render-performance-fixture.mjs`, and `dom-host.mjs` into the baseline while retaining its compiled runtime.

Three warmup rounds precede eleven measured rounds. Revision order alternates, case order rotates, and [raw samples with execution order](20261001-render-performance-bench.json) accompany these medians. Setup is outside the interval; the fixtures verify all resulting target properties and exact event/dispatch counts after each workload. Browser measurements use real DOM nodes without forced layout; DOM property updates and path reads are included. Node uses an instrumented DOM host.

- Deep: 1000 property patches at the same 32-level coordinate.
- Long list: 1000 child property patches below a four-level parent, plus development duplicate checking for the 1000 unique keys.
- Dispatch: 100 broadcasts through a tree with 1000 row components, 50 listeners, and 5000 handler calls and delivered operations.
- Listener index prototype: collect listeners once through the same tree, then deliver the same 100 broadcasts; collection time is included. This is a JavaScript evaluation prototype, not a renderer implementation or a Calcit-only performance comparison.

| Workload | Node ms before | Node ms after | Chrome ms before | Chrome ms after |
| --- | --- | --- | --- | --- |
| deep | 9.469 | 3.172 | 10.5 | 3.1 |
| long-list | 14.679 | 4.018 | 14.1 | 3.9 |
| dispatch | 42.441 | 42.996 | 36 | 35.6 |
| listener-index-prototype | 0.613 | 0.589 | 0.5 | 0.5 |

The Node host counts 32,000 → 32 child reads for the deep workload and 5,000 → 1,004 for the long list. Timings are local measurements, not assertions of a universal speedup. The existing broadcast implementation is unchanged; its small before/after difference reflects run variance.

## Listener index evaluation

The prototype shows that collecting handlers once is useful when many broadcasts share one tree. A renderer index also needs correct refresh on every replacement/render/hot reload, current closures, duplicate component placements and traversal order. Rebuilding it on every render would add a whole-tree walk even for applications that never broadcast, while a dispatch-triggered render could invalidate it after every event. Keep the existing broadcast path in this PR; evaluate a lazy per-tree index with those refresh cases separately before adopting it. No requestAnimationFrame batching or protocol semantic changes are introduced here.
