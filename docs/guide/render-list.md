---
title: "Render list"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "render list"
  - "list rendering"
  - "component memoization"
  - "memof migration"
entry_for:
  - "list->"
  - "keyed list"
  - "for-keyed"
  - "memo-comp-by"
  - "memo-value-by"
---

## Render list

**📚 Documentation Index**

- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Base Components](./base-components.md) | [Virtual DOM](./virtual-dom.md) | [Component States](./component-states.md)

To render a list, you need use `respo.core/list->` with children in `key/value` pairs:

```cirru.no-check
list->
  {}
    :style $ {}
  []
    [] "a" (comp-text "|this is A" nil)
    [] "b" (comp-text "|this is B" nil)
```

If the tag is `:div`, you can omit that and just write:

```cirru.no-check
list-> props children
```

It's common pattern to use `->` to transform the list:

```cirru.no-check
list->
  {}
    :class-name "|task-list"
    :style style-list
  -> tasks
    reverse
    map $ fn (task)
      [] (:id task) (task-component task)
```

Child elements are rendered in the order that items appear in the list. Diffing is not very fast, so don't make the list too large.

`for-keyed` packages the common ordered-list transformation and reports a `nil` key with its source index:

```cirru.no-check
list->
  {} (:class-name |task-list)
  for-keyed tasks
    fn (task) (:id task)
    fn (task _idx)
      task-component task
```

See [Common primitives](./common-primitives.md#conditional-and-keyed-rendering) for its callback contract and error behavior.

## Memoizing components

Business applications can use Respo's built-in `memo-comp-by` to avoid rebuilding
an unchanged component subtree. Import `render-with!` and `memo-comp-by` from
`respo.core`; no `memof` dependency or import is required.

The application render entry must build its tree inside the zero-argument function
passed to `render-with!`:

```cirru.no-check
; ns app.main $ :require
  respo.core :refer $ render-with! memo-comp-by

defn render-app! ()
  render-with! mount-target
    fn () $ comp-container @*store
    , dispatch!
```

Call `memo-comp-by` where the component is added to the tree. Its arguments are the
stable key, the component function, and the complete component argument list:

```cirru.no-check
list->
  {} (:class-name |task-list)
  -> tasks .to-list $ map
    fn (task)
      let
          task-id $ :id task
        [] task-id $ memo-comp-by task-id comp-task (>> states task-id) task
```

The cache identity includes the component function and key. The cached `Component`
is reused only when the full argument list is unchanged. Use a stable domain ID as
the key; an array index is unsafe when items can be inserted, removed, or reordered.
Passing `nil` deliberately bypasses caching.

`render-with!` starts and finishes the memo frame automatically. At the end of the
frame, Respo removes cached keys that were not visited, so business code must not
call frame lifecycle functions itself. During hot reload, call `clear-cache!` before
rendering again so components defined by the old code are not retained:

```cirru.no-check
defn reload! ()
  clear-cache!
  render-app!
```

Use `memo-comp-by` only for component functions returning a Respo `Component`. It is
not a replacement for requests or effects. For deterministic immutable data
transformations, use `memo-value-by` inside the same managed render frame; see
[Common primitives](./common-primitives.md#memoizing-immutable-derived-values).

## Migrating from memof

For component rendering, the common migration is:

| Old `memof.once` usage | Respo replacement |
| --- | --- |
| `memof1-call-by key comp-f & args` | `memo-comp-by key comp-f & args` |
| `begin-memof1-frame!` / `finish-memof1-frame!` | Remove them; use `render-with!` at the application render entry |
| `reset-memof1-caches!` during hot reload | `respo.core/clear-cache!` |
| `memof.once` import and `memof/` module | Remove them when no non-component usage remains |

For example, change a memoized list child from:

```cirru.no-check
[] task-id $ memof1-call-by task-id comp-task (>> states task-id) task
```

to:

```cirru.no-check
[] task-id $ memo-comp-by task-id comp-task (>> states task-id) task
```

Then make sure the top-level render uses `render-with!`, remove the `memof.once`
require rule, remove `memof/` from the entry's modules, and remove
`calcit-lang/memof` from `deps.cirru` if the project no longer uses it elsewhere.

There is no direct Respo replacement for `memof1-call` without a business key or
for `memof1-as` around an arbitrary expression. If those calls produce components,
choose a stable domain key and rewrite them with `memo-comp-by`. If they cache
non-component computations, keep `memof` or adopt another cache appropriate to that
data lifecycle; do not pass a non-Component result to `memo-comp-by`.
