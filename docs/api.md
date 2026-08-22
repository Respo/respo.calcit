---
title: "Respo API"
scope: "module"
kind: "overview"
category: "reference"
aliases:
  - "API"
  - "API Overview"
  - "respo api"
  - "api docs"
  - "respo.core"
entry_for:
  - "api reference"
  - "respo.core"
  - "component api"
---

## Respo API

**📚 Documentation Index**

- [← Back to README](../README.md)
- [Beginner Guide](beginner-guide.md)
- [🤖 Respo-Agent Guide](Respo-Agent.md) - For LLM development
- [Guide Topics](guide/)
- [CLI Tools Reference](../Agents.md)

Detailed API descriptions now live in source doc strings inside `calcit.cirru`.
Use Calcit CLI to inspect them:

```bash
calcit query def respo.core/defcomp
calcit query def respo.core/render!
calcit query def respo.render.html/make-string
```

`calcit query examples <ns/def>` is also useful when an API has runnable examples.

### User APIs

| Namespace            | Function          |
| -------------------- | ----------------- |
| `respo.core`         | `defcomp`         |
|                      | `div`             |
|                      | `<>`              |
|                      | `defeffect`       |
|                      | `create-element`  |
|                      | `render!`         |
|                      | `render-with!`    |
|                      | `memo-comp-by`    |
|                      | `memo-value-by`   |
|                      | `clear-cache!`    |
|                      | `realize-ssr!`    |
|                      | `list->`          |
|                      | `for-keyed`       |
|                      | `show`            |
|                      | `effect-on-mount` |
|                      | `effect-on-update` |
|                      | `effect-on-unmount` |
|                      | `effect-watch`    |
|                      | `error-boundary`  |
|                      | `make-render-scheduler` |
|                      | `>>`              |
| `respo.resource`     | `resource-idle` `resource-reducer` `load-resource!` |
| `respo.comp.space`   | `comp-space` `=<` |
| `respo.comp.inspect` | `comp-inspect`    |
| `respo.render.html`  | `make-string`     |

### Lower level APIs

Normally you do not need these lower level APIs for everyday component work, but they are useful for understanding the rendering pipeline.

| Namespace                 | Function             |
| ------------------------- | -------------------- |
| `respo.util.format`       | `purify-element`     |
|                           | `mute-element`       |
| `respo.util.list`         | `map-val`            |
|                           | `map-with-idx`       |
| `respo.render.diff`       | `find-element-diffs` |
| `respo.render.patch`      | `apply-dom-changes`  |
| `respo.controller.client` | `activate-instance!` |
|                           | `patch-instance!`    |

Legacy standalone API pages were merged into source doc strings. Older names such as `make-html` and `render-app` are no longer separate API pages.

The immutable-data-oriented conditional, keyed list, lifecycle, ref, resource, error, and batching APIs are introduced together in [Common primitives](guide/common-primitives.md).

### APIs

##### map-with-idx

```cirru.no-check
respo.util.list/map-with-idx identity ([] :a :b)
; [] ([] 0 :a) ([] 1 :b)
```
