## `render!`

`render!` comes with side effects, it renders virtual to the mount pointer:

```cirru
render! target
  comp-container @global-store
  , dispatch!
```

`target` is the mount pointer. `global-states` is the reference to the atom of states.

Internally there's a mutable state tracking the DOM state.
And the state `realize-ssr!` changes is this one.
