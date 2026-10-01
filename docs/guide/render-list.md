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

子元素按列表中的顺序渲染。请使用稳定且唯一的业务 key，并用实际应用负载测量大列表性能。

开发模式报告原列表中最先出现的重复 key。检测使用哈希成员查询；结构相等的 Calcit key 仍视为重复，哈希碰撞通过深度相等检查区分。除复杂 key 的哈希与比较成本、极端碰撞外，预期遍历成本为线性。

`list->` validates each `[key child]` pair, then omits pairs whose child is `nil`, just as ordinary elements omit nil children. Adding or deleting a nil-valued pair creates no DOM node. Changing an element to nil removes that node; changing it back restores the node at its keyed position. Remaining children keep their original keys and order. Every pair must still have a non-nil key, including pairs that will be omitted; invalid child values are rejected before filtering.

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

## Reordering keyed children

Respo matches retained children across the whole keyed list. It keeps a longest increasing subsequence of their old positions and moves the remaining nodes. Swapping two adjacent items needs one move; reversing a list of `n` retained items needs `n - 1` moves. Common prefixes and suffixes are reconciled separately, and unchanged key order skips index maps and LIS work.

Moves reuse DOM nodes, preserving edited input values, selection, and scroll positions. Retained components keep their mount/unmount lifecycle; their normal prop and effect updates still run. Only added children mount and removed children unmount.

Connected DOM nodes use `Element.moveBefore` when available. The fallback uses `insertBefore` or `appendChild`, restores focus with `preventScroll`, and restores scroll offsets in the moved subtree. The fallback may emit native blur/focus events while restoring focus.

Run `yarn test-keyed-moves` for permutation and nested-list regressions, `yarn bench-keyed-moves` for diff timings, or open `test/examples/keyed-moves.html` in Vite for a real-browser regression. Add `?fallback=1` to exercise the insertion fallback.

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
