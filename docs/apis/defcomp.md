## `defcomp`

**📚 Documentation Index**
- [← Back to README](../../README.md)
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
