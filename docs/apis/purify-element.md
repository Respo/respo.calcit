## `purify-element`

This function flattens `:data-events` in the virtual DOM tree:

```cirru
purify-element element
```

Event handlers in the virtual DOM tree can not be stringified.
`purify-element` will turn the functions into a `true`.
