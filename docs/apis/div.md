## `div`

Here's how you use `div` macro to create a tree of `<div>`s:

```cirru
div
  {}
    :class-name "|example"
    :style $ {}
    :on $ {}
  div $ {}
  div $ {}
```

Its first argument is a HashMap consists of `:style` `:on` and other properties. For property like `el.className`, you write in `:class-name`.

Find more in [DOM elements](../guide/dom-elements.md).
