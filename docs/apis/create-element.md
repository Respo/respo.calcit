## `create-element`

**📚 Documentation Index**
- [← Back to README](../../README.md)
- [API Overview](../api.md)
- [Beginner Guide](../beginner-guide.md)
- [Related APIs](../api.md): [`div`](div.md) | [DOM Elements](../guide/dom-elements.md) | [DOM Properties](../guide/dom-properties.md)

Function to create virtual element. Pass to it a name, a HashMap, and some children:

```cirru
defmacro a (props & children)
  create-element :a ~props ~@children
```

`children` is normally a list. But in some cases we need dynamic children element, then it can be a HashMap.
