## `defcomp`

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
