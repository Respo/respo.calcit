---
title: "公共 API 的类型契约"
summary: "Respo 公共 API 的 schema：哪些位置是精确类型，哪些是有意开放的边界，应用代码该怎样标注"
scope: "module"
kind: "guide"
category: "reference"
aliases:
  - "api types"
  - "type contracts"
  - "public api schema"
  - "respo types"
entry_for:
  - "respo api schema"
  - "Dynamic in respo"
  - "how to type a component"
---

# 公共 API 的类型契约

**📚 Documentation Index**

- [← Back to README](../../README.md)
- [API Reference](../api.md)
- [Typed dispatch](./type-slots.md) | [Component States](./component-states.md) | [DOM Events](./dom-events.md) | [Render Lists](./render-list.md)

这一页列出 Respo 公共 API 的 schema，并说明每个签名里哪些位置是精确类型、
哪些位置有意写成 `Dynamic`。逐个定义的说明在源码 doc string 里，用
`calcit query def <ns/def>` 查看；这里只讲类型。签名以当前 `calcit.cirru` 为准，
可以用 `calcit query def respo.core/div` 之类的命令核对。

## 为什么还有 Dynamic

Respo 里剩下的 `Dynamic` 大多不是“还没来得及写”，而是当前类型系统写不出来的形状：

- **开放的 props / style map**：Calcit 0.34 起有受限 union（`defunion`），Respo 用它声明了
  `respo.schema/CoordKey`（Tag、String 或 Number，子节点 key 和 cursor key）和
  `respo.schema/CssValue`（String、Number 或 Tag，样式值）。`ChildPair :key`、`>>` 的
  key 参数、`keyed-element` / `keyed-component` 的 key 和 `get-style-value` 的值已经用这两个
  类型；`list->` 的 `[key child]` 与 props 里的样式仍是开放数据，由 `read-coord-key`、
  `style-value-text` 在边界检查后转换，Bool、集合等其他值会报错。props map 本身还是
  `Map Tag Dynamic`：同一个 map 里有样式 map、字符串、回调等不同类型的值，Calcit 还没有按键
  区分值类型的记录类型。
- **元组**：`Element` 的 `:style` 是 `List (Tuple StyleKey CssValue)`，在 props 边界解码一次；
  `list->` 的 `[key child]` 对和 `:attrs` 仍是 `List Dynamic`：调用方自己拼的 `[] k v`
  没有期望类型时不会推断成 `Tuple`，属性值也是开放的 DOM 值。
- **应用自己的数据**：states 树、memo 的参数、resource 的 `:data`/`:error`、effect
  的依赖列表，形状由应用决定，Respo 只负责原样传递。

所以使用 Respo 的代码不需要照抄这些 `Dynamic`。应用自己的 props、state、Op 都应该
写成具名 Struct 或 Enum，在下文列出的位置把类型接回来。

## 元素和组件

| API | schema | 说明 |
| --- | --- | --- |
| `div` 等元素函数 | `Fn PropsInput & Dynamic (-> Element)`，`:generics PropsInput` | props 接受 `nil`、`Map Tag _` 或 `respo.schema/DomProps`；子节点是 `Element`、`Component` 或 `nil` |
| `create-element` | `Fn Tag PropsInput & Dynamic (-> Element)` | 同上，第一个参数是标签名 |
| `<>` | `Fn String & TextStyle (-> Element)` | 第一个参数是文本；可选第二个参数是 `respo.schema/TextStyle`：class-name 字符串或 `Map Tag CssValue`。传入的样式 def 要写 `Map Tag respo.schema/CssValue` schema，裸 `Map` 会被拒绝 |
| `list->` | `Fn PropsInput (List (List Dynamic)) (-> Element)` | 子节点是 `[key child]` 对，key 为 Tag、String 或 Number |
| `for-keyed` | `Fn (List T) (Fn T (-> K)) (Fn T Number (-> Dynamic)) (-> (List (List Dynamic)))`，`:generics T K` | items 和 key-fn 是精确泛型；渲染结果仍是开放的子节点 |
| `defcomp` | 宏，生成 `Fn … (-> Component)` | 组件参数的类型写在组件定义的 schema 上 |
| `space-x` / `space-y` | `Fn CssValue (-> Component)` | 水平或垂直间隔；Number 按像素，String / Tag 原样使用 |
| `comp-space` / `=<` | `Fn Dynamic Dynamic (-> Component)` | 已标记 `:deprecated`，改用 `space-x` / `space-y`。用 `nil` 表示不设的写法无法写类型，而且非 nil 的宽度优先，`=< 0 16` 得到的是宽 0 |

props 最好用 `respo.schema/DomProps` 记录或字面量 `{}`。`DomProps` 的事件字段按
`EventHandler` 检查，类型写错会在预处理阶段报出来，见 [DOM Events](./dom-events.md)。

`DomProps` 的每个字段都是 `Option`，构造时只写要设置的字段，其余自动填入 `Option :none`；
`none` 表示不写这个属性：

```cirru
respo.core/input $ respo.schema/DomProps :value (Option :some |Alice) :placeholder (Option :some |Name)
```

props Map 和 `:style` Map 的值同样可以是 `Option`：`Option :some v` 取 `v`，`Option :none`
不写该属性或样式。普通值照旧表示有值，`nil` 也照旧被丢弃，所以已有写法不用改。

## 状态

| API | schema | 说明 |
| --- | --- | --- |
| `>>` | `Fn Dynamic respo.schema/CoordKey (-> respo.schema/States)` | 从父 states 取出子分支，并把 key 追加到 `:cursor` |
| `as-states-map` | `Fn Dynamic (-> respo.schema/States)` | 在开放边界校验 states：nil 视为空 map，不是 map 时报错 |
| `state-cursor` | `Fn Dynamic (-> (List CoordKey))` | 读取 cursor 并逐项检查成 `CoordKey`；缺失或 nil 时返回空列表 |
| `pick-state` | 宏，`pick-state states TypeExpr default` | 返回值的类型就是 `TypeExpr`，这是把组件状态接回精确类型的位置 |

`respo.schema/States` 是 `Map Dynamic Dynamic` 的类型名，可以用在 store 的字段上，
例如 `:states 'respo.schema/States`。它只是别名，不校验内部结构。`update-state-tree` 系列为了兼容
非 map 的旧状态仍返回 `Dynamic`，写回这样的字段前用 `as-states-map` 收窄。

组件的 `states` 参数可以声明成 `respo.schema/States`：调用方传入的是 `>>` 的结果，它已经是
`States`（demo 的 `comp-task`、`comp-todolist` 就这样写）。如果调用方传的是没收窄的 Dynamic，
检查器不允许直接传给 `States` 参数，这时参数保持 `Dynamic`，或者先用 `as-states-map` 收窄。
states 树把 `:cursor` 和各个子分支放在同一个 map 里，是异构的，所以 `States` 本身仍是 `Map Dynamic Dynamic`。读取自己的状态时用 `pick-state` 并给出 Struct 类型：

```cirru.no-check
defcomp comp-task (states task)
  let
      cursor $ state-cursor states
      state $ pick-state states app.comp.task/TaskState $ TaskState :draft |
    input $ {} (:value $ :draft state)
      :on-input $ fn (e d!)
        d! $ :: :states cursor $ assoc state :draft $ event-value e
```

更多写法见 [Component States](./component-states.md)。

## 事件和派发

| API | schema | 说明 |
| --- | --- | --- |
| `respo.schema/EventHandler` | `Fn RespoEvent (Fn *dispatch-op (-> Unit)) (-> Unit)` | 事件是 `event->edn` 生成的 `respo.schema/RespoEvent` struct |
| `event-value` | `Fn Dynamic (-> String)` | 读取 `:value` 并检查是字符串 |
| `event-checked?` | `Fn Dynamic (-> Bool)` | 读取 `:checked` 并检查是布尔值 |
| `keyboard-info` | `Fn Dynamic (-> KeyboardInfo)` | 读取键盘字段，得到 `respo.schema/KeyboardInfo` 记录 |
| `d!` | `Fn *dispatch-op (-> Unit)` | `*dispatch-op` 是类型槽，由每个 entry 绑定到应用的 `Op` |

handler 的第一个参数是 `respo.schema/RespoEvent`：`:type` 是 Tag，`:original-event` / `:event`
是原生 `respo.dom/DomEvent`，`:key`、`:checked`、`:key-code` 等字段在不相关的事件里为 nil，
`:value` 保持开放（自定义元素的 value 可以是任意宿主值）。字段用 `(:value e)` 读取，
需要确定类型时用上面三个函数，它们在边界检查类型并返回精确值，也仍接受普通 Map。`d!` 的类型由
`calcit config set-type-slot :dispatch-op app.schema/Op` 决定，绑定后写错的 Op 会被
检查出来，见 [Typed dispatch](./type-slots.md)。

## 渲染入口

| API | schema | 说明 |
| --- | --- | --- |
| `render!` | `Fn (JsNullish DomElement) Component (Fn *dispatch-op (-> Unit)) (-> Unit)` | 挂载点用 `respo.ffi.browser/query-selector` 取得 |
| `render-with!` | `Fn (JsNullish DomElement) (Fn (-> Component)) (Fn *dispatch-op (-> Unit)) (-> Unit)` | 每帧调用 render 函数，配合 memo 使用 |
| `realize-ssr!` | `Fn DomElement Component (Fn *dispatch-op (-> Unit)) (-> Unit)` | 接管服务端渲染出的 DOM |
| `respo.ffi.browser/query-selector` | `Fn String (-> (Option DomElement))` | 找不到时返回 `Option :none` |
| `respo.render.html/make-string` | `Fn Dynamic (-> String)` | 接受 `Element` 或 `Component`，输出 HTML |
| `configure-events!` | `Fn EventConfig (-> Unit)` | 事件安装策略 |
| `make-render-scheduler` | `Fn (Fn (-> Unit)) (Option (Fn (Fn (-> Unit)) (-> Unit))) (-> (Fn (-> Unit)))` | 合并同一微任务里的多次渲染请求 |

## Effect

| API | schema | 说明 |
| --- | --- | --- |
| `effect-on-mount` / `effect-on-unmount` | `Fn (Fn DomElement (-> Unit)) (-> Effect)` | 回调收到挂载的 DOM 节点 |
| `effect-on-update` | `Fn (List Dynamic) (Fn DomElement (-> Unit)) (-> Effect)` | 依赖列表由应用决定，回调收到 DOM 节点 |
| `effect-watch` | `Fn (List Dynamic) (Fn DomElement (-> Unit)) (Option (Fn DomElement (-> Unit))) (-> Effect)` | setup 和可选的 cleanup |
| `Effect :method` | `Fn (List Dynamic) EffectParams (-> Unit)` | `respo.schema/EffectParams` 带 `:action`、`:target`（`DomElement`）和 `:at-place?` |

effect 只在浏览器里运行（SSR 不执行 effect），所以回调和 `defeffect` 的 `el` 直接是
`respo.dom/DomElement`。这个 trait 覆盖了 effect 常用的成员：布局读取（`:offset-*`、`:client-*`、
`:scroll-*`）、兄弟节点、`.closest`、`.contains?`、`.clone-node`、属性读写、`.focus!`、
`.scroll-into-view!` 等。trait 里没有的宿主成员，在应用自己的 `:js-ffi` 适配函数里读取。
原生测试里可以用 `respo.core/stub-dom-target` 代替真实节点。依赖列表和 memo 参数仍是
`Dynamic`，原因见审查文档：它们是调用方随手写的异构列表，需要变长泛型才能写准。

## Memo

| API | schema | 说明 |
| --- | --- | --- |
| `memo-comp-by` | `Fn Dynamic Fn & Dynamic (-> Component)` | key 为 `nil` 时不缓存 |
| `memo-value-by` | `Fn Dynamic Fn & Dynamic (-> Dynamic)` | 返回值是 `Dynamic` |

`memo-value-by` 的回调和参数是任意的，返回值目前写不出泛型。调用处如果需要精确类型，
把结果交给有 schema 的函数或用 `assert-type` 标注。

## Resource

| API | schema | 说明 |
| --- | --- | --- |
| `resource-idle` | `Fn (Option T) (-> ResourceState T E)`，`:generics T E` | 初始数据可选 |
| `resource-reducer` | `Fn (ResourceState T E) (ResourceAction T E) (-> ResourceState T E)` | 纯函数状态迁移 |
| `resource-ready` / `resource-failed` | `Fn Number T (-> ResourceAction T E)` / `Fn Number E (-> ResourceAction T E)` | 构造结果 |
| `load-resource!` | `Fn (Fn (-> T)) (Fn (ResourceAction Dynamic Dynamic) (-> Unit)) (-> Number)`，`:generics T` | 返回请求 id；fetcher 可能返回 Promise、错误来自宿主，所以发出的 action 是 `Dynamic` 负载 |

`ResourceState T E` 的 `:status` 是 Tag，`:request-id` 是 `Option Number`；`:data` 是
`Option T`，`:error` 是 `Option E`。`:data` 初始为传给 `resource-idle` 的 Option（给了初始数据就是
some，否则为 none），`:ready` 后为 `Option :some payload`（payload 可以是 nil）；`:error` 初始为
none，`:failed` 后为 `Option :some error`。
取出负载后在应用里用 `try-decode-map-as` 解码成自己的类型。

## 查看和检查

- `calcit query def respo.core/<name>`：看单个 API 的 schema、文档和示例。
- `calcit analyze weak-types --summary-only`：统计项目里剩余的弱类型位置。Respo 的 CI
  用 `UNRESOLVED_LIMIT` 限制它不再增加。
- `calcit fix --workflow strict --verify`：用 strict 模式检查调用处的类型。
