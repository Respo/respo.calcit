---
title: "<>"
scope: "module"
kind: "reference"
category: "reference"
aliases:
  - "expand-tag"
  - "respo.core/<>"
  - "<>"
  - "text component"
entry_for:
  - "text macro"
  - "span shorthand"
  - "render text"
---

## `<>`

This macro expands

```cirru
<> text style
```

into

```cirru
span $ {}
  :inner-text text
  :style style
```
