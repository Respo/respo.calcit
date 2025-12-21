## Render list

**📚 Documentation Index**
- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Base Components](./base-components.md) | [Virtual DOM](./virtual-dom.md) | [Component States](./component-states.md)

To render a list, you need use `respo.core/list->` with children in `key/value` pairs:

```cirru
list->
  {}
    :style $ {}
  []
    [] "a" (comp-text "|this is A" nil)
    [] "b" (comp-text "|this is B" nil)
```

If the tag is `:div`, you can omit that and just write:

```cirru
list-> props children
```

It's common pattern to use `->` to transform the list:

```cirru
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
