## `render!`

**📚 Documentation Index**

- [← Back to README](../../README.md)
- [🤖 Respo-Agent Guide](../Respo-Agent.md) - Rendering patterns & debugging
- [API Overview](../api.md)
- [Beginner Guide](../beginner-guide.md)
- [Related APIs](../api.md): [`clear-cache!`](clear-cache!.md) | [`render-app`](render-app.md) | [`mount-app!`](../guide/)

`render!` comes with side effects, it renders virtual to the mount pointer:

```cirru
render! target
  comp-container @global-store
  , dispatch!
```

`target` is the mount pointer. `global-states` is the reference to the atom of states.

Internally there's a mutable state tracking the DOM state.
And the state `realize-ssr!` changes is this one.
