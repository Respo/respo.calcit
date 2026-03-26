---
title: "mute-element"
scope: "module"
kind: "reference"
category: "reference"
aliases:
  - "respo.core/mute-element"
entry_for:
  - "remove events"
  - "mute vnode"
---

## `mute-element`

This function removes events from a virtual DOM tree:

```cirru
mute-element element
```

When server side rendering is used, the first screen does not respond to events.
That can be seen as rendered with a virtual DOM with no events.
So `mute-element` is used to simulate such a virtual DOM tree.
