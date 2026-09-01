# Typed component-state boundary

The reusable cursor updater previously accepted an unconstrained store and
read `:states` through a persisted Struct index. That index belonged to one
nominal layout and could silently address another field when an application
Store used a different order.

This change makes the deep state tree the explicit reusable boundary:

- `update-state-tree*` accepts and returns a `Map` state tree.
- Nominal application stores keep `(:states store)` and `assoc` at the typed
  call site, where Calcit can derive and verify the real field index.
- Legacy `update-states*` wrappers are restricted to Map stores.
- Missing partial-state updates preserve the existing state tree instead of
  inserting `nil`.
- Merge updates validate the effective base before `assoc-in`; invalid or
  absent fallback values also preserve the whole state tree.
- Invalid deep-state diagnostics use cross-backend `eprintln` rather than a raw
  JavaScript console form, so native tests exercise the same failure paths.
- The checked quality baseline prevents new Dynamic, nil, unresolved type, or
  unsafe-coerce debt from entering unnoticed.
