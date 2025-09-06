## Respo API

### User APIs

| Namespace            | Function                                   |
| -------------------- | ------------------------------------------ |
| `respo.core`         | [`defcomp`](apis/defcomp.md)               |
|                      | [`div`](apis/div.md)                       |
|                      | [`<>`](apis/expand-tag.md)                 |
|                      | [`defeffect`](apis/defeffect.md)           |
|                      | [`create-element`](apis/create-element.md) |
|                      | [`render!`](apis/render_.md)               |
|                      | [`clear-cache!`](apis/clear-cache_.md)     |
|                      | [`realize-ssr!`](apis/realize-ssr_.md)     |
|                      | [`list->`](apis/list-_.md)                 |
|                      | [`>>`](apis/pick-states.md)                |
| `respo.comp.space`   | [`comp-space` or `=<`](apis/comp-space.md) |
| `respo.comp.inspect` | [`comp-inspect`](apis/comp-inspect.md)     |
| `respo.render.html`  | [`make-string`](apis/make-string.md)       |

### Lower level APIs

Normally you don't need low level APIs, and the basic APIs are enough for building a apps.

I documented the APIs that can be useful.
It's possible to discover new features we have't noticed yet.

| Namespace                 | Function                                           |
| ------------------------- | -------------------------------------------------- |
| `respo.render.expand`     | [`render-app`](apis/render-app.md)                 |
| `respo.util.format`       | [`purify-element`](apis/purify-element.md)         |
|                           | [`mute-element`](apis/mute-element.md)             |
| `respo.util.list`         | [`map-val`](#map-val)                              |
|                           | [`map-with-idx`](#map-with-idx)                    |
| `respo.render.diff`       | [`find-element-diffs`](apis/find-element-diffs.md) |
| `respo.render.patch`      | [`apply-dom-changes`](apis/apply-dom-changes.md)   |
| `respo.controller.client` | [`activate-instance!`](apis/activate-instance.md)  |
|                           | [`patch-instance!`](apis/patch-instance.md)        |

### APIs

##### map-with-idx

```cirru
respo.util.list/map-with-idx identity ([] :a :b)
; [] ([] 0 :a) ([] 1 :b)
```
