---
title: "Typed dispatch with type slots"
summary: "Bind Respo's dispatch operation type once per Calcit entry so d! shorthand is checked across the whole component call graph"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "type slot"
  - "typed dispatch"
  - "dispatch op"
  - "dispatch-op"
  - "d! enum shorthand"
entry_for:
  - "cr config set-type-slot"
  - "*dispatch-op"
  - "d! $ ::"
  - "invalid dispatch variant"
---

# Typed dispatch with type slots

Respo declares the `:dispatch-op` type slot in `respo.schema`. An application binds that slot to its own `Op` enum once for each Calcit entry. The compiler can then type the `d!` callback throughout the reachable component tree without adding a generic type parameter to every component, element, listener, and render helper.

## Application setup

Define the application operation enum as usual, then bind its full definition path in the default entry configuration:

```bash
cr config set-type-slot :dispatch-op app.schema/Op
cr config type-slots
```

The command writes this shape to `calcit.cirru`:

```cirru.no-check
:configs $ {}
  :init-fn |app.main/main!
  :type-slots $ {}
    :dispatch-op |app.schema/Op
```

The type path must contain both namespace and definition. A bare `Op` is rejected because configuration is loaded before Calcit expressions are evaluated.

No type-slot call belongs in `main!`:

```cirru.no-check
defn main! ()
  render-app!
```

The selected entry installs its bindings before any definition is preprocessed, so the same choice applies to the whole reachable call graph and does not depend on which component is compiled first.

## Named entries are independent

A named entry is a complete configuration and does not inherit `:configs.type-slots`. Bind the slot explicitly when another entry compiles Respo components:

```bash
cr config set-type-slot --entry test :dispatch-op app.test-schema/TestOp
cr config type-slots --entry test
```

Client and server entries can bind the same slot to different enums because each invocation selects one entry:

```bash
cr config set-type-slot :dispatch-op app.schema/ClientOp
cr config set-type-slot --entry server :dispatch-op app.schema/ServerOp
```

Use `:dynamic` as an explicit opt-out when an entry intentionally does not want dispatch checking:

```bash
cr config set-type-slot --entry test :dispatch-op :dynamic
```

## Dispatch shorthand

Respo's event handler schema accepts `'*dispatch-op`. Once the entry binds that slot, the compiler knows that `d!` accepts the configured enum and can resolve the short tuple syntax:

```cirru.no-check
button $ {}
  :on-click $ fn (event d!)
    d! $ :: :toggle (:id task)
```

For `app.schema/Op`, this is checked like `%:: app.schema/Op :toggle (:id task)`. The compiler validates the variant name, payload count, and payload types. Writing an unknown variant such as `:: :toogle` blocks code generation with the enum diagnostic.

An explicit enum tuple remains valid and can be useful outside an inferred dispatch callback:

```cirru.no-check
d! $ %:: app.schema/Op :toggle (:id task)
```

If `d! $ :: ...` is not checked, first confirm that the selected entry binds `:dispatch-op` and that the callback schema still flows from a Respo event/listener API. A callback that has fallen back to `:dynamic` cannot drive the shorthand rewrite.

## Migration from older setup

Older applications may contain `bind-type` or wrap an entry body with `with-type-slot`:

```cirru.no-check
defn main! () $ with-type-slot (:dispatch-op Op)
  render-app!
```

Move the binding to config and remove the wrapper:

```bash
cr config set-type-slot :dispatch-op app.schema/Op
```

`with-type-slot` remains a compile-time compatibility form in Calcit and is erased for both single and multiple bodies; adding `do` is no longer required. Entry configuration is preferred because it states the build-wide type choice directly and avoids making a global compile decision look like runtime or lexical behavior. `bind-type` is obsolete and should not be used.

## Verification and troubleshooting

After changing the enum or entry binding, run:

```bash
cr config type-slots
cr --check-only
cr js
```

For a named entry, pass the same selection to inspection and compilation:

```bash
cr config type-slots --entry server
cr --entry server --check-only
cr --entry server js
```

Common failures:

- `expects a full namespace/definition path`: use `app.schema/Op`, not `Op`.
- configured definition is missing: ensure the namespace belongs to the project or to a module listed by that same entry.
- default entry works but a named entry does not: named entries do not inherit the default binding or module list.
- shorthand silently stays dynamic: inspect the event/listener callback schema and ensure it accepts `'*dispatch-op`.
- Rust execution works but generated JS fails around old slot runtime code: align the Calcit CLI and `@calcit/procs` versions, then regenerate JS; current Calcit erases `with-type-slot` before codegen.

## Reusing this guide with `cr docs`

When Respo is installed as a module, search and reopen this page instead of copying its rules into each application:

```bash
cr docs search 'typed dispatch' --module respo.calcit
cr docs search 'dispatch-op' --module respo.calcit
cr docs read type-slots.md --full --module respo.calcit
```

Use `cr docs scopes` if the installed module scope has a different displayed name.
