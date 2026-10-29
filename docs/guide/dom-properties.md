---
title: "DOM properties"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "dom properties"
  - "props mapping"
  - "dom props"
  - ":class-name"
entry_for:
  - "class-name"
  - "property naming"
  - "dom attributes"
  - ":ref"
---

## DOM properties

**📚 Documentation Index**

- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Base Components](./base-components.md) | [Virtual DOM](./virtual-dom.md) | [Component States](./component-states.md)

Respo is updating DOM properties with a simple solution. It's okay but not that friendly. Here are some example on the name mapping:

- `className` ->`:class-name`
- `innerText` ->`:inner-text`
- `innerHTML` ->`:innerHTML`
- `value` ->`:value`

I'm afraid you have to figure out more by yourself.

Properties(except for `style` and `event`) are specified in `attrs` field. `style` is a HashMap. `event` is followed with a HashMap of events too.

### `:innerHTML` and `:inner-text` own the content

Setting `:innerHTML` or `:inner-text` replaces all DOM children of the element, so an element should use either one of them or child nodes. When an element of the same tag switches from child nodes to `:innerHTML` or `:inner-text` (for example a paragraph turning into a highlighted code block), Respo removes the old children first, running their unmount effects, and then writes the content. Switching back clears the content before the new children are added.

### Special `:ref` prop

`:ref` accepts a callback, but it is not a DOM attribute. Respo calls it with the real element on mount and with `nil` when the ref is replaced or the element unmounts:

```cirru.no-check
div
  {} $ :ref
    fn (target)
      println target
```

This guarantees that a removed ref is actually cleared instead of leaving `ref="null"` or another string in the DOM. Keep DOM handles outside the immutable application store. Lifecycle order and update behavior are documented in [Common primitives](./common-primitives.md#dom-refs).

Ref callback identity is compared during diffing. Inline closures are new values on each render and therefore cause an old `nil` callback followed by a new element callback even when the DOM node itself is unchanged. Keep callbacks idempotent, or explicitly reuse a stable callback when that repeated lifecycle work is undesirable.

The impelementation details is:

```cirru.no-check
defn replace-prop (target op)
  let
      prop-name (dashed->camel (name (key op)))
      prop-value (val op)
    if (= prop-name "value")
      if
        not= prop-value (.-value target)
        aset target prop-name prop-value
      aset target prop-name prop-value

defn add-prop (target op)
  let
      prop-name $ dashed->camel (name (key op))
      prop-value $ val op
    match prop-name
      "|style" $ aset target prop-name (style->string prop-value)
      _ $ aset target prop-name prop-value

defn rm-prop (target op)
  aset target (dashed->camel (name op)) nil
```
