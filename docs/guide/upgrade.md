---
title: "Renderer protocol upgrades"
scope: "module"
kind: "guide"
category: "ecosystem"
---

## Keyed moves and DomPatch

The internal `respo.schema/DomPatch` enum adds `:move-element`. Code matching every variant directly must add this branch; the compiler checks exhaustiveness. Normal application event dispatch and keyed child syntax are unchanged.

```cirru
respo.schema/DomPatch :move-element ([] 0) 3 (%:: Option :some 1)
```

The three payloads are the parent's numeric DOM coordinate, the source index, and an optional anchor index. Both indices refer to the same child-node snapshot, captured immediately before the first move for that parent in one `apply-dom-changes` call. `:none` means move to the end. This variant carries no virtual coordinate because moving a node keeps its keyed event coordinate.

Diff first updates retained children at their old DOM coordinates, removes missing children in descending order, and appends new children with their mount effects. It then moves nodes from right to left, keeping the LIS in place. Node snapshots belong to that patch application and must not be reused across render calls. Common unchanged suffixes act as fixed anchors; new children appended beyond a suffix are moved before it.

Custom patch consumers must implement these snapshot semantics, apply moves without recreating nodes or firing Respo mount/unmount effects, and preserve focus, selection, and scrolling. Prefer the built-in `apply-dom-changes` executor.
