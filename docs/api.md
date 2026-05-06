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

Detailed API descriptions now live in source doc strings inside `compact.cirru`.
Use Calcit CLI to inspect them:

```bash
cr query def respo.core/defcomp
cr query def respo.core/render!
cr query def respo.render.html/make-string
```

`cr query examples <ns/def>` is also useful when an API has runnable examples.

### User APIs

| Namespace            | Function          |
| -------------------- | ----------------- |
| `respo.core`         | `defcomp`         |
|                      | `div`             |
|                      | `<>`              |
|                      | `defeffect`       |
|                      | `create-element`  |
|                      | `render!`         |
|                      | `clear-cache!`    |
|                      | `realize-ssr!`    |
|                      | `list->`          |
|                      | `>>`              |
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

### APIs

##### map-with-idx

```cirru
respo.util.list/map-with-idx identity ([] :a :b)
; [] ([] 0 :a) ([] 1 :b)
```
