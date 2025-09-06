## `defeffect`

Add effects:

```cirru
defeffect effect-a (a b) (action el at-place?)
  case-default action
    do
    :mount (println "|mounted")
    :before-update (println "|before update")
    :update (println "|updated")
    :unmount (println "|will unmount")

defcomp comp-a (x y z)
  []
    effect-a a b
    div {}
      <> "|DEMO"
```

- `[] a b` are arguments. they can also be old arguments during unmounting,
- `action` can be `:mount` `:before-update` `:update` or `:unmount`,
- `el` refers to root element of component.
- `at-place?` being `true` if change happen exactly from this component, rather than from parents.

Notice that to add effects into component, we need to use a vector.
So it's also possible to add multiple effects here:

```cirru
[]
  defeffect-a a b
  defeffect-b c d
  div $ {}
```

Respo is different from React. You can not dispatch action during rendering, or inside effects.
So there will be no access to `dispatch!`, and should not have actions.
