## `create-element`

Function to create virtual element. Pass to it a name, a HashMap, and some children:

```cirru
defmacro a (props & children)
  create-element :a ~props ~@children
```

`children` is normally a list. But in some cases we need dynamic children element, then it can be a HashMap.
