---
title: "Common primitives"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "common primitives"
  - "conditional rendering"
  - "resource state"
  - "error boundary"
  - "render batching"
entry_for:
  - "show"
  - "for-keyed"
  - "memo-value-by"
  - "effect-watch"
  - ":ref"
  - "resource-reducer"
  - "error-boundary"
  - "make-render-scheduler"
---

## Common primitives

**Documentation Index**

- [← Back to README](../../README.md)
- [API Reference](../api.md)
- [Render Lists](./render-list.md)
- [DOM Properties](./dom-properties.md)

These primitives cover recurring UI needs without adding a second reactive runtime to Respo. The application store remains an immutable value, components remain pure tree builders, and external work is kept at explicit effect, ref, resource, and scheduling boundaries.

| Need | API | Data rule |
| --- | --- | --- |
| Conditional child | `show` | Selects an existing value; owns no state |
| Keyed list | `for-keyed` | Transforms an ordered list into `[key child]` pairs |
| Derived data | `memo-value-by` | Caches by function, key, and immutable argument list |
| DOM lifecycle | `effect-on-*`, `effect-watch` | Side effects stay outside the store updater |
| DOM handle | `:ref` | Receives a DOM node or `nil`; is never serialized as an attribute |
| Async request | `respo.resource` | Emits actions; a pure reducer creates the next resource state |
| Render failure | `error-boundary` | Computes a fallback; keeps no hidden error state |
| Render batching | `make-render-scheduler` | Stores only one queued flag, never application data |

## Conditional and keyed rendering

`show` accepts one child and an optional fallback:

```cirru
ns app.demo $ :require
  respo.core :refer $ show div <>

let
    ready? true
  show ready?
    div ({})
      <> |Ready
    div ({})
      <> |Loading
```

`for-keyed` returns the ordered pairs expected by `list->`. The key callback receives the item; the render callback receives the item and its current index:

```cirru.no-check
list->
  {} (:class-name |task-list)
  for-keyed tasks
    fn (task) (:id task)
    fn (task _idx)
      comp-task task
```

Use stable domain keys. A `nil` key raises an error containing the item index, so a missing ID is reported where the list is built instead of surfacing later in DOM diffing.

`show` validates its branch count while expanding the macro. `for-keyed` has a schema for normal Calcit calls and preserves explicit `[Respo/for-keyed]` runtime errors at dynamic or JavaScript boundaries.

## Memoizing immutable derived values

Use `memo-value-by` for an expensive, deterministic transformation:

```cirru.no-check
let
    visible-tasks $ memo-value-by filter-key derive-visible-tasks tasks filter-options
  list-> ({})
    for-keyed visible-tasks :id $ fn (task _idx)
      comp-task task
```

The cache identity is the function plus the stable key. A hit also requires the complete argument list to remain equal. Passing `nil` as the key bypasses caching.

Build memoized values inside the tree function passed to `render-with!`. That lets the existing render frame prune keys that disappeared from the latest tree. Prefer immutable return values, and do not use this API for requests, timers, DOM work, or other effects.

`memo-value-by` deliberately has a dynamic return schema: Calcit cannot express a variadic higher-order function that preserves every fixed callback signature without rejecting valid callbacks. The callback is still validated at runtime. Add a local `assert-type` when downstream static analysis needs a concrete result type.

## Lifecycle effects

Effects are values placed before the component's root element:

```cirru.no-check
defcomp comp-chart (chart-data)
  []
    effect-watch ([] chart-data)
      fn (target)
        mount-chart! target chart-data
      fn (target)
        dispose-chart! target chart-data
    div $ {} (:class-name |chart)
```

Available helpers:

- `effect-on-mount mount!`
- `effect-on-update deps update!`
- `effect-on-unmount unmount!`
- `effect-watch deps setup! cleanup!`

For `effect-watch`, setup runs on mount and after a dependency change. Cleanup runs before the changed setup and on unmount. During an update, cleanup comes from the old component closure and setup comes from the new closure. This preserves the immutable-render model and prevents cleanup from seeing new props by mistake.

The dependency argument must be a list. Keep it small and composed of immutable values whose equality represents whether the external setup must be replaced.

## DOM refs

Pass a callback in the special `:ref` prop:

```cirru.no-check
div
  {} $ :ref
    fn (target)
      if (nil? target)
        println |detached
        println |attached target
```

`:ref` is not copied into the element's attribute list and never appears as `ref="..."` in the DOM or SSR output.

- Mount calls the callback with the real DOM element.
- Replacing a ref calls the old callback with `nil`, then the new callback with the element.
- Unmount calls the active callback with `nil` after child cleanup.

Use refs only for imperative browser integrations such as focus, measurement, or third-party widgets. Do not put the mutable DOM node into the immutable application store.

## Immutable async resources

`respo.resource` separates request execution from application state. `load-resource!` emits immutable `ResourceAction` values; the application updater applies them with the pure `resource-reducer`.

```cirru.no-check
; in application schema
defenum Op
  :reload
  :resource ResourceAction

; in the updater
(:resource action)
update store :tasks-resource $ fn (state)
  resource-reducer state action

; at an event/effect boundary
load-resource!
  fn () (js/fetch |/api/tasks)
  fn (action)
    d! $ :: :resource action
```

Create initial state with `resource-idle`. The reducer produces these statuses:

| Status | Meaning |
| --- | --- |
| `:idle` | No request has started |
| `:pending` | Loading without previous data |
| `:refreshing` | Loading while retaining previous data |
| `:ready` | The latest request completed |
| `:error` | The latest request failed; previous data is retained |

Every request has a numeric ID. Ready or failed actions from an older request return the identical current state, preventing stale network completion from overwriting newer data. `load-resource!` accepts a value or Promise-compatible result and converts synchronous throws into `:failed` actions.

## Error boundaries

Wrap exactly one child expression and provide a fallback function:

```cirru
ns app.demo $ :require
  respo.core :refer $ error-boundary div <>

error-boundary
  fn (_error)
    div ({})
      <> |Unable_to_render
  div ({})
    <> |Ready
```

`error-boundary` catches synchronous errors raised while building that child. It does not catch errors from event callbacks, effects, timers, or Promise continuations.

The boundary keeps no persistent error flag. On the next render caused by immutable store data, it evaluates the child again. Applications that need a lasting error record should dispatch an explicit application operation and represent that state in the store.

## Render batching

Wrap the application's render callback once, then schedule it from store watches:

```cirru.no-check
let
    schedule-render! $ make-render-scheduler
      fn ()
        render-with! mount-target
          fn () (comp-container @*store)
          , dispatch!
  add-watch *store :changes $ fn ()
    schedule-render!
  schedule-render!
```

Multiple calls before the next microtask produce one render. The scheduler owns only its queued flag; the authoritative data remains in `*store`, and the render callback reads the newest immutable value when it runs.

An optional `enqueue!` callback can replace `queueMicrotask`, mainly for deterministic tests or a host-specific scheduler.

## Error behavior

Public macros and higher-order functions use API-prefixed messages such as `[Respo/show]` and `[Respo/load-resource!]`. Macro shape errors are raised during expansion. Function schemas catch ordinary Calcit misuse, while dynamic boundary validators preserve the same clean messages without printing an additional generic assertion failure.
