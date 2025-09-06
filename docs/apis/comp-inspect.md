## `comp-inspect`

This component is similiar to `comp-text`, it shows data in string with styles.
The difference is, `x` can be any type (formatted with `pr-str`):

```cirru
comp-inspect "|a tip" x
  {}
    :color "|red"
```

This component also comes with special styles to show it in an absolute position.
When clicked, it will print data with `(to-js-data x)`.

Disable component in production:

```cirru
comment (comp-inspect x nil)
```
