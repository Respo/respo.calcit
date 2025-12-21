## Hot swapping

**📚 Documentation Index**

- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Base Components](./base-components.md) | [Virtual DOM](./virtual-dom.md) | [Component States](./component-states.md)

Hot swapping is done by the compiler. What you need to do is to call `respo.core/clear-cache!` before re-rendering happens:

```cirru
defn reload! ()
  ; "clear component caches"
  clear-cache!
  ; "rerender DOM tree, I mean, a diff/patch loop"
  render-app!
  println "|Code update."
```

If you don't, in the next rendering phase old element tree would be used if no argument changes found, which means Respo would still use render functions defined previously.

In Respo, you are asked to define `*store` explicitly. They the global states of data. As an Atom, the value inside is immutable, but the reference is mutable. During hot swapping, variables defined with `defatom` will be retained. As a result, component states are persistent even code is swapped:

```cirru
defatom *store $ atom
  or
    let
        raw $ or
          js/localStorage.getItem "|respo"
          , "|{:data [], :states {}}"
      read-string raw
    , schema/store
```
