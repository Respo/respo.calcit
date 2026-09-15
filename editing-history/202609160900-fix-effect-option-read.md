# Fix option read for component effects during diffing

`respo.render.effect/collect-updating` indexed `old-effects`/`new-effects` with
`&list:nth` after the Calcit 0.14.16 migration, but `&list:nth` returns the raw
element (or `nil` when out of range) rather than an `Option`. The result was
passed to `if-let`, which expands to `option:fold`; an out-of-range read turned
into `nil`, so diffing a component whose effect count changed threw
`Does not support nth on this type` at runtime.

- Read effect slots with `get`, which returns `%none`/`%some` and keeps the
  `Option<Effect>` contract that `if-let` expects.
- Reproduced in a Respo app by re-rendering a component with effects; diffing no
  longer throws and the modal/effect patch is applied.
