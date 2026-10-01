# Memo frame fixes — #190

Baseline: main `69081288a83cb43eb49af4f030ea9bfd06e57a12`. Calcit and @calcit/procs `0.28.0-alpha.3`, Node `24.4.1`, macOS arm64.

## Choice

Record direct child keys on each memo entry and retain their transitive dependencies when the outer entry hits. A miss records the new dependency set. An entry already computed in the current frame wins over its previous-frame entry; promoting a key before traversing its children prevents repeated paths and cycles.

Compared with retaining untouched entries for N generations, dependencies keep children alive for arbitrarily many outer hits and preserve immediate pruning when a subtree disappears. A fixed retention period would still expire nested children behind a long-lived outer hit and retain unrelated inactive entries for extra frames. The chosen approach stores one set of direct child keys per entry and adds traversal cost on hits.

Outside frames, compute directly without looking up or inserting entries. A warning alone would leave the verified cache-growth defect intact. The public call shape, callback-plus-key identity, nil-key bypass, and deep argument comparison remain unchanged. Cache identity does not add dependency invalidation: a callback must still describe all value inputs through its immutable arguments.

## Reproduction and verification

The initial native regressions failed on the baseline: after an outer hit the three-level memo cache shrank to one entry, and 40 out-of-frame calls populated the global cache. After the fix:

- Three-level nesting survives four consecutive outer hits and a later outer miss, with one inner computation.
- Changed parents prune dependencies they no longer invoke; an empty frame clears all entries.
- Calls outside frames do not grow caches or read previous entries.
- Failed callbacks restore the dependency stack; current-frame child entries survive promotion from an outer hit.
- 63 native tests pass, including existing memo tests. Two compiled JavaScript memo tests cover nested reuse, deep equality, pruning, and frame isolation; seven total Node tests pass with the SSR/nullish suites.
- DOM host, snapshot validation, patch types, docs (127 snippets), and Vite build pass. Type debt metrics have zero delta.
- Chrome demo adds/removes a task and its cache changes from one entry to zero. There are no JavaScript exceptions; the existing `/favicon.ico` request returns 404.

## Benchmark

Compile both checkouts, then run `node test/memo-bench.mjs /path/to/compiled-baseline`. Worker isolation keeps Calcit trait registries separate. Three warmup rounds precede eleven measured rounds, alternating revision order and rotating workloads. Timing includes the complete workload and frame lifecycle; each measured workload starts with empty caches. Each derived value has 1000 numbers. [Raw samples and execution order](20261001-memo-bench.json) accompany the medians.

- Nested: 60 frames, outer args change every sixth frame, with two nested memos below the outer memo.
- Flat: 100 keys across ten frames, unchanged arguments after initial misses.
- Outside: 1000 distinct keys without a render frame.

| Workload | ms before | ms after | Derived calls before → after | Retained entries before → after |
| --- | --- | --- | --- | --- |
| nested | 0.415 | 0.325 | 10 → 1 | 1 → 3 |
| flat | 4.404 | 4.845 | 100 → 100 | 100 → 100 |
| outside | 31.418 | 30.189 | 1000 → 1000 | 1000 → 0 |

These local timings are observations, not performance assertions. The flat workload has about 10% overhead from dependency bookkeeping. Nested retention reduces repeated computations; the larger nested cache is intentional. The outside workload no longer retains its 1000 derived results.
