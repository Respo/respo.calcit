---
title: "purify-element"
scope: "module"
kind: "reference"
category: "reference"
aliases:
  - "respo.core/purify-element"
entry_for:
  - "flatten events"
  - "serialize vnode"
---

## `purify-element`

This function flattens `:data-events` in the virtual DOM tree:

```cirru
purify-element element
```

Event handlers in the virtual DOM tree can not be stringified.
`purify-element` will turn the functions into a `true`.
