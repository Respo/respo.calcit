---
title: "make-html"
scope: "module"
kind: "reference"
category: "reference"
aliases:
  - "respo.core/make-html"
entry_for:
  - "html output"
  - "template engine"
---

## `make-html`

Generate HTML from virtual DOM:

```cirru
make-html (div $ {})
; "<div></div>"
```

This feature makes Respo a simple template engine.
`<html>`, `<head>` and `<body>` are supported, so it's capable of rendering the entry HTML file.
