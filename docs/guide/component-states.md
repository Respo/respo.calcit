## Component States

Unlike React, states in Respo is maintained manually for stablility during hot code swapping.
At first, states is a HashMap inside the store:

```cirru
defatom *store {}
  :states $ {}
```

By design, if states is added, you would a tree:

```cirru
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

```cirru
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

```cirru
defcomp comp-task (states)
  let
      cursor (:cursor states)
      state $ or (:data states) $ {}
        :draft "|empty"
    (div {}))
```

By accessing `(:data states)`, you get `nil`, so `&{} :draft "|empty"` is used.
After there's data in states, you get data that was set.

Then you want to update component state

```cirru
defcomp comp-task (states)
  let
      cursor (:cursor states)
      state $ or (:data states) $ {}
        :draft "|empty"
    div $ {}
      :on-click $ fn (e dispatch!)
        dispatch! cursor (assoc state :draft "|New state")
```

So `(dispatch! cursor state)` sends the new state.

The last step to to update global states with `respo.cursor/update-states`.
Internally `(dispatch! cursor op-data)` will be transformed to `(dispatch! :states ([] cursor op-data))`.
And then in `updater` you add:

```cirru
case-default op
  ; other actions
  do store

  ; "where op-data is [cursor new-state]"
  :states (update-states store op-data)
```

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

```cirru
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
