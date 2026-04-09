---
title: "defcomp"
scope: "module"
kind: "reference"
category: "reference"
aliases:
  - "defcomp"
  - "respo.core/defcomp"
  - "defcomp macro"
  - "component definition"
  - "component component"
entry_for:
  - "defcomp"
  - "define component"
  - "component macro"
  - "props component"
---

## `defcomp`

## Define a component

Use `defcomp` to declare a reusable component that receives props and renders virtual DOM.

**📚 Documentation Index**

- [← Back to README](../../README.md)
- [🤖 Respo-Agent Guide](../Respo-Agent.md) - Component patterns & debugging
- [API Overview](../api.md)
- [Beginner Guide](../beginner-guide.md)
- [Related APIs](../api.md): [`div`](div.md) | [`defeffect`](defeffect.md) | [`create-element`](create-element.md)

```cirru
defcomp comp-demo (content)
  div
    {}
      :class-name "|demo-container"
      :style $ {}
        :color :red
    <> content
```

`defcomp` is a Macro(https://github.com/Respo/respo.calcit/blob/master/compact.cirru#L1295) transforming code to another function with effects extracted.
