---
title: "Component States"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "component states"
  - "state tree"
  - "local states"
  - "state cursor"
  - ">> states"
entry_for:
  - "local state"
  - "state cursor"
  - "pick-states"
  - "hot swapping states"
---

## Component States

## Local state and state cursor

Interactive components usually pass `states` downward and branch it with `>>` to keep local state isolated.

**📚 Documentation Index**

- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [🤖 Respo-Agent Guide](../Respo-Agent.md) - For LLM development
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Base Components](./base-components.md) | [Virtual DOM](./virtual-dom.md) | [Styles](./styles.md) | [Events](./dom-events.md)

Unlike React, states in Respo is maintained manually for stablility during hot code swapping.
At first, states is a HashMap inside the store:

```cirru.no-check
; ns app.demo

let
    *store $ atom $ {}
      :states $ {}
  :states @*store
```

By design, if states is added, you would a tree:

```cirru.no-check
{}
  :states $ {}
    :data $ {}
    :todolist $ {}
      :data $ {}
        :input "|xyz..."
      "task-1-id" $ {}
        :data $ {}
          :draft "|xxx..."
      "task-2-id" $ {}
        :data $ {}
          :draft "|yyy..."
      "task-2-id" $ {}
        :data $ {}
          :draft "|zzz.."
```

`:data` is a special field for holding state of each component.
It has to be a tree since Virtual DOM is a tree.
You also notice that its structure is simpler than a DOM tree, it only contains states.

`respo.core/>>` is the "picking branch" function. It also maintains a `:cursor` field.

When you call `(>> states :todolist)`, you get new `states` variable for a child component:

```cirru.no-check
{}
  ; "generated cursor, nil at top level"
  :cursor $ [] :todolist
  ; "state at current level"
  :data $ {}
    :input "|xyz..."

  ; states for children
  "task-1-id" $ {}
    :data $ {}
      :draft "|xxx..."
  "task-2-id" $ {}
    :data $ {}
      :draft "|yyy..."
  "task-2-id" $ {}
    :data $ {}
      :draft "|zzz.."
```

Then you call `(>> states "task-1-id")` and you get new `states` for child "task-1":

```cirru
{}
  ; "generated cursor"
  :cursor $ [] :todolist "|task-1-id"

  ; "state of task-1"
  :data $ {}
    :draft "|xxx..."
```

For state inside each component, it's `nil` at first.
You want to have an initial state, use `or` to provide one.

```cirru.no-check
; ns app.demo
  :require
    respo.core :refer $ defcomp div

let
    comp-task $ fn (states)
      let
          cursor (:cursor states)
          state $ or (:data states) $ {}
            :draft "|empty"
        respo.core/div $ {}
  , comp-task
```

By accessing `(:data states)`, you get `nil`, so `&{} :draft "|empty"` is used.
After there's data in states, you get data that was set.

Then you want to update component state

```cirru.no-check
; ns app.demo
  :require
    respo.core :refer $ defcomp div

let
    comp-task $ fn (states)
      let
          cursor (:cursor states)
          state $ or (:data states) $ {}
            :draft "|empty"
        respo.core/div
          {}
            :on-click $ fn (e dispatch!)
              dispatch! cursor (assoc state :draft "|New state")
  , comp-task
```

So `(dispatch! cursor state)` sends the new state.

The last step is to update global states. A nominal application `Store` should
keep its Struct field access typed and pass only the intentionally deep state
tree to `respo.cursor/update-state-tree`:
Internally `(dispatch! cursor op-data)` will be transformed to `(dispatch! :states ([] cursor op-data))`.
And then in `updater` you add:

```cirru
ns app.demo $ :require
  respo.cursor :refer $ update-state-tree

defstruct Store (:states 'Map)

defn update-component-state (store cursor new-state)
  hint-fn $ {}
    :args $ [] 'app.demo/Store 'List 'S
    :return 'app.demo/Store
    :generics $ [] 'S
  assoc store :states $ update-state-tree (:states store) cursor new-state
```

`update-state-tree`, `update-state-tree-kv`, and
`update-state-tree-merge` accept the state `Map` directly. This keeps the
application `Store` nominal and lets Calcit derive the real `:states` field
index at the call site. Do not use `&struct:nth` in a reusable cursor helper:
the same field can occupy a different index in another Struct.

The older `update-states*` functions remain Map-store compatibility wrappers.
Their first argument is now explicitly `Map`; Struct stores should migrate to
the state-tree functions above instead of crossing a dynamic record boundary.

---

Let's wrap it. First we have empty states inside store:

```cirru
{}
  :states $ {}
```

And it is passed to `(comp-todolist (>> states :todolist) data)`,
and then passed to `(comp-task (>> states (:id task)) task)`.

In `comp-todolist`, `(:data states)` provides component state, `(:cursor states)` provides its cursor.
Call `(dispatch! cursor {:input "|New draft"})` and global store will become:

```cirru
{}
  :states $ {}
    :todolist $ {}
      :data $ {}
        :input "|New draft"

```

In `comp-task` of "task-1", you also get `state` and `cursor`, so call `(dispatch! cursor {:draft "New text"})` you will get:

```cirru.no-check
{}
  :states $ {}
    :todolist $ {}
      :data $ {}
        :input "|New draft"
      "task-1-id" $ {}
        :data $ {}
          :draft "|New text"
```

And that's how Respo states is maintained.
