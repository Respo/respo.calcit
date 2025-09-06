## `list->`

A macro for rendering lists:

```cirru
list->
  {}
    :style $ {}
  [] 1 (<> "|1")
  [] 2 (<> "|2")
```

The first argument should be a keyword. The last argument should be a collection.
