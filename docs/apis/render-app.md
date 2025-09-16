## `render-app`

This function renders virtual DOM markups into virtual DOM data:

```cirru
render-app markup states build-mutate old-element
```

`old-element` is a caches of the old virtual DOM.
It can help speed up rendering since arguments and results are cached.

Each component comes with a `render` function defined with `defcomp`.
So those `render` functions needs to be rendered with `render-app`.

it's usually used inside Respo.
