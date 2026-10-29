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

- **联合类型**：子节点可以是 `Element`、`Component` 或 `nil`；cursor 的 key 可以是
  Tag、String 或 Number；样式值可以是 String、Number 或 Tag。Calcit 目前没有联合类型，
  这些位置只能写 `Dynamic`，再由 Respo 在运行时检查（例如 `confirm-child`、
  `checked-pairs`）。
- **元组**：`list->` 的子节点是 `[key child]` 对，`Element` 的 `:attrs`、`:style`
  是键值对列表。没有元组类型时只能写 `List Dynamic`。
- **应用自己的数据**：states 树、memo 的参数、resource 的 `:data`/`:error`、effect
  的依赖列表，形状由应用决定，Respo 只负责原样传递。

所以使用 Respo 的代码不需要照抄这些 `Dynamic`。应用自己的 props、state、Op 都应该
写成具名 Struct 或 Enum，在下文列出的位置把类型接回来。

## 元素和组件

| API | schema | 说明 |
| --- | --- | --- |
| `div` 等元素函数 | `Fn PropsInput & Dynamic (-> Element)`，`:generics PropsInput` | props 接受 `nil`、`Map Tag _` 或 `respo.schema/DomProps`；子节点是 `Element`、`Component` 或 `nil` |
| `create-element` | `Fn Tag PropsInput & Dynamic (-> Element)` | 同上，第一个参数是标签名 |
| `<>` | `Fn String & Dynamic (-> Element)` | 第一个参数是文本；可选第二个参数是 class-name 字符串或 style map |
| `list->` | `Fn PropsInput (List (List Dynamic)) (-> Element)` | 子节点是 `[key child]` 对，key 为 Tag、String 或 Number |
| `for-keyed` | `Fn (List T) (Fn T (-> K)) (Fn T Number (-> Dynamic)) (-> (List (List Dynamic)))`，`:generics T K` | items 和 key-fn 是精确泛型；渲染结果仍是开放的子节点 |
| `defcomp` | 宏，生成 `Fn … (-> Component)` | 组件参数的类型写在组件定义的 schema 上 |
| `comp-space` / `=<` | `Fn Dynamic Dynamic (-> Component)` | 宽、高传 Number 或 `nil`；不用的一侧传 `nil`，不要传 `&unit` |

props 最好用 `respo.schema/DomProps` 记录或字面量 `{}`。`DomProps` 的事件字段按
`EventHandler` 检查，类型写错会在预处理阶段报出来，见 [DOM Events](./dom-events.md)。

## 状态

| API | schema | 说明 |
| --- | --- | --- |
| `>>` | `Fn Dynamic Dynamic (-> (Map Dynamic Dynamic))` | 从父 states 取出子分支，并把 key 追加到 `:cursor` |
| `state-cursor` | `Fn Dynamic (-> (List Dynamic))` | 读取 cursor；缺失或 nil 时返回空列表 |
| `pick-state` | 宏，`pick-state states TypeExpr default` | 返回值的类型就是 `TypeExpr`，这是把组件状态接回精确类型的位置 |

组件的 `states` 参数本身保持 `Dynamic`：states 树把 `:cursor` 和各个子分支放在同一个
map 里，是异构的。读取自己的状态时用 `pick-state` 并给出 Struct 类型：

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
| `respo.schema/EventHandler` | `Fn (Map Tag Dynamic) (Fn *dispatch-op (-> Unit)) (-> Unit)` | 事件是 `event->edn` 生成的不可变 Map，不是 `RespoEvent` |
| `event-value` | `Fn Dynamic (-> String)` | 读取 `:value` 并检查是字符串 |
| `event-checked?` | `Fn Dynamic (-> Bool)` | 读取 `:checked` 并检查是布尔值 |
| `keyboard-info` | `Fn Dynamic (-> KeyboardInfo)` | 读取键盘字段，得到 `respo.schema/KeyboardInfo` 记录 |
| `d!` | `Fn *dispatch-op (-> Unit)` | `*dispatch-op` 是类型槽，由每个 entry 绑定到应用的 `Op` |

事件 Map 的字段类型因事件而异，所以 handler 的第一个参数写 `Map Tag Dynamic`。
读字段时用上面三个函数，它们在边界检查类型并返回精确值。`d!` 的类型由
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
| `effect-on-mount` / `effect-on-unmount` | `Fn Fn (-> Effect)` | 回调收到挂载的 DOM 节点 |
| `effect-on-update` | `Fn (List Dynamic) (Fn Dynamic (-> Unit)) (-> Effect)` | 依赖列表由应用决定，回调收到 DOM 节点 |
| `effect-watch` | `Fn (List Dynamic) (Fn Dynamic (-> Unit)) (Option (Fn Dynamic (-> Unit))) (-> Effect)` | setup 和可选的 cleanup |
| `respo.ffi.browser/effect-element` | `Fn Dynamic (-> DomElement)` | 在只跑浏览器的 effect 里把节点检查成 `DomElement` |

回调参数是 `Dynamic`，因为同一个 effect 在 SSR 和测试里拿到的不是浏览器节点。
只在浏览器里运行的 effect 先用 `effect-element` 把它转成 `respo.dom/DomElement`，
之后的 DOM 调用就都有类型了。

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
| `resource-idle` | `Fn (Option Dynamic) (-> ResourceState)` | 初始数据可选 |
| `resource-reducer` | `Fn ResourceState ResourceAction (-> ResourceState)` | 纯函数状态迁移 |
| `load-resource!` | `Fn (Fn (-> T)) (Fn ResourceAction (-> Unit)) (-> Number)`，`:generics T` | 返回请求 id |

`ResourceState` 的 `:status` 是 Tag，`:request-id` 是 `Option Number`；`:data` 和
`:error` 是应用负载，类型是 `Dynamic`。读取时在应用里用 `try-decode-map-as` 解码成
自己的类型。

## 查看和检查

- `calcit query def respo.core/<name>`：看单个 API 的 schema、文档和示例。
- `calcit analyze weak-types --summary-only`：统计项目里剩余的弱类型位置。Respo 的 CI
  用 `UNRESOLVED_LIMIT` 限制它不再增加。
- `calcit fix --workflow strict --verify`：用 strict 模式检查调用处的类型。
