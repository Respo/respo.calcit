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

### 混合类型的 cursor key

状态树保留原始 key：Tag、String 和已有的 Number key 可以共存；`|7`、
`7` 与 `:7` 是不同的分支。`:data` 和 `:cursor` 使用 Tag，并不意味着整个
状态 map 的 key 都是 Tag。`>>` 的返回类型因此是 `Map<Dynamic, Dynamic>`；
开放的分支值需要在使用处验证，不能通过 `Map<Tag, Dynamic>` 声明排除已有数据。

`>>` 不改变状态树层级或 key，也不写回传入的 map。nil 分支视为空 map，
已有 `:cursor` 必须为 List；非 map 的状态或分支会报错。

```cirru
ns app.demo $ :require
  respo.core :refer $ >>

let
    states $ {} $ :tasks $ {}
      |task-1 $ {} $ :data |draft
    task-states $ >> (>> states :tasks) |task-1
  assert= (&map:get task-states :cursor) ([] :tasks |task-1)
  assert= (&map:get task-states :data) |draft
```

迁移时保留 String/Number key，不要将它们转成 Tag。若应用将 `>>` 的结果
继续传给 helper，helper 的状态 map 合同也应允许混合 key；组件自己的
`:data` 可以在应用边界解码为具体 Struct。

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
Define a Store-specific typed helper, then call it from the `:states` branch of
your `(store op op-id)` updater after matching `(:states cursor new-state)`:

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

## 状态路径校验与宿主无关的更新

状态树仍使用原有 Map 和 `:data` 存取方式。Map / nil 路径写入使用 Map 原语，保留 Tag、String 以及已有 Number key；nil 中间分支按旧行为创建 Map。其他已有容器继续走 `assoc-in`，例如 Number 索引的 List。读取不再把每一级节点强转为 Map，而由已有 `get` 检查实际容器。

局部 Struct 的单字段和合并更新使用 `struct-with`，保持合法对象的名义定义与未修改字段。String 字段名可以使用；不存在的字段、错误 key 或与字段类型不符的值会被拒绝。更新产生新值，原始状态不变。
