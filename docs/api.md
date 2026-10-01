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

#### make-render-scheduler

`respo.core/make-render-scheduler` takes a zero-argument render callback and a
trailing `Option<enqueue!>`, and returns a zero-argument request function.
`Option :none` (or omission of that trailing argument) uses `queueMicrotask`.
Calls made before the queued callback runs are coalesced into one render. Create
the scheduler once per watch registration and read the authoritative store inside
the callback:

```cirru.no-check
let
    schedule! $ respo.core/make-render-scheduler
      fn () $ render-app!
      %:: Option :none
  add-watch *store :rerender $ fn (_current _previous) (schedule!)
```

The scheduler stores only a queued flag. It resets that flag before invoking the
callback, allowing a later request to enqueue another render. It does not cancel
callbacks when a watch is removed; use a registration guard during hot swapping,
as shown in the [beginner guide](beginner-guide.md#rerender-on-updates).

`Option :some enqueue!` supplies custom timing. The enqueue function receives the
zero-argument callback; it should enqueue it once. A synchronous enqueue function
renders immediately and does not provide microtask batching. This runnable example
captures callbacks to test batching without a browser:

```cirru
let
    *renders $ atom 0
    *tasks $ atom $ []
    request! $ respo.core/make-render-scheduler
      fn () (swap! *renders inc)
        , &unit
      %:: Option :some $ fn (task) (swap! *tasks conj task)
        , &unit
  request!
  request!
  assert= 0 @*renders
  assert= 1 $ count @*tasks
  let
      task $ &list:nth @*tasks 0
    task
  assert= 1 @*renders
```

**Choosing timing:** `render!` and `render-with!` always update the DOM
synchronously. Use a direct call or synchronous watch for tests that inspect the
DOM immediately after dispatch. Use the scheduler for store update bursts; await
its microtask before inspecting the DOM, or inject and explicitly flush a test queue.

##### map-with-idx

```cirru.no-check
respo.util.list/map-with-idx identity ([] :a :b)
; [] ([] 0 :a) ([] 1 :b)
```
