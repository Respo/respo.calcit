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
