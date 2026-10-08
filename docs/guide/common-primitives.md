---
title: "常用原语"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "common primitives"
  - "conditional rendering"
  - "resource state"
  - "error boundary"
  - "render batching"
entry_for:
  - "show"
  - "for-keyed"
  - "memo-value-by"
  - "effect-watch"
  - ":ref"
  - "resource-reducer"
  - "error-boundary"
  - "make-render-scheduler"
---

<a id="common-primitives"></a>

## 常用原语

**文档索引**

- [← 返回 README](../../README.md)
- [API 参考](../api.md)
- [列表渲染](./render-list.md)
- [DOM 属性](./dom-properties.md)

这些原语用于常见的 UI 场景。应用 store 保持不可变，组件仍是纯粹的树构建函数；外部操作通过明确的 effect、ref、资源和调度边界执行。

| 需求 | API | 数据约定 |
| --- | --- | --- |
| 条件子节点 | `show` | 选择已有值，自身不持有状态 |
| keyed 列表 | `for-keyed` | 把有序列表转换为 `[key child]` |
| 派生数据 | `memo-value-by` | 按函数、key 和不可变参数列表缓存 |
| DOM 生命周期 | `effect-on-*`, `effect-watch` | 副作用在 store updater 之外执行 |
| DOM 引用 | `:ref` | 接收 DOM 节点或 `nil`，不序列化为属性 |
| 异步请求 | `respo.resource` | 发出 action，由纯 reducer 生成下一份资源状态 |
| 渲染失败 | `error-boundary` | 计算回退结果，不保留隐藏的错误状态 |
| 渲染批处理 | `make-render-scheduler` | 仅持有排队标记，不保存应用数据 |

<a id="conditional-and-keyed-rendering"></a>

## 条件渲染与 keyed 列表

`show` 接收一个子节点和一个可选的回退节点：

```cirru
ns app.demo $ :require
  respo.core :refer $ show div <>

let
    ready? true
  show ready?
    div ({})
      <> |Ready
    div ({})
      <> |Loading
```

`for-keyed` 返回 `list->` 所需的有序键值对。key 回调接收列表项；渲染回调接收列表项及其当前索引：

```cirru.no-check
list->
  {} (:class-name |task-list)
  for-keyed tasks
    fn (task) (:id task)
    fn (task _idx)
      comp-task task
```

应使用稳定的业务 key。遇到 `nil` key 时，错误包含对应的列表索引，便于在构建列表的位置定位缺失的 ID。

`show` 在宏展开时检查分支数量。`for-keyed` 的 schema 检查普通 Calcit 调用；在动态或 JavaScript 边界，仍保留明确的 `[Respo/for-keyed]` 运行时错误。

<a id="memoizing-immutable-derived-values"></a>

## 缓存不可变派生值

使用 `memo-value-by` 缓存代价较高、结果确定的数据转换：

```cirru.no-check
let
    visible-tasks $ memo-value-by filter-key derive-visible-tasks tasks filter-options
  list-> ({})
    for-keyed visible-tasks :id $ fn (task _idx)
      comp-task task
```

缓存身份由函数和稳定的 key 组成。命中还要求完整参数列表相等。传入 `nil` key 会绕过缓存。

在传给 `render-with!` 的树构建函数内计算缓存值，渲染帧才能清理从最新树中消失的 key。外层缓存命中时，递归保留其记录的嵌套依赖；外层未命中时重新记录依赖。帧外调用始终直接计算，即使该函数和 key 曾被缓存，也不会读取或修改缓存。组件树构建失败时，丢弃当前帧的部分结果，保留上次成功提交的缓存，并重新抛出原 Calcit 错误消息。返回值应保持不可变；请求、定时器、DOM 操作等副作用应在各自边界执行。

`memo-value-by` 的返回 schema 使用 Dynamic：Calcit 尚不能在保留所有固定回调签名的同时表达这种可变参数高阶函数。回调仍在运行时验证。后续静态分析需要具体结果类型时，应在使用位置通过对应的运行时校验器取得类型证据；不能仅用 `assert-type` 将开放结果宣称为具体类型。组件结果可使用 `memo-comp-by`，它会验证返回值是 `respo.schema/Component`，并保持原组件身份。

<a id="lifecycle-effects"></a>

## 生命周期 effect

Effect 是放在组件根元素之前的值：

```cirru.no-check
defcomp comp-chart (chart-data)
  []
    effect-watch ([] chart-data)
      fn (target)
        mount-chart! target chart-data
      fn (target)
        dispose-chart! target chart-data
    div $ {} (:class-name |chart)
```

可用的辅助函数：

- `effect-on-mount mount!`
- `effect-on-update deps update!`
- `effect-on-unmount unmount!`
- `effect-watch deps setup! cleanup!`

`effect-watch` 在挂载和依赖变化后执行 setup，在更新后的 setup 之前及卸载时执行 cleanup。更新时，cleanup 来自旧组件闭包，setup 来自新组件闭包，避免清理逻辑意外读取新 props。

依赖参数必须是列表。应保持列表较小，并使用不可变值，其相等关系应能表达外部 setup 是否需要替换。

<a id="dom-refs"></a>

## DOM 引用

在特殊的 `:ref` prop 中传入回调：

```cirru.no-check
div
  {} $ :ref
    fn (target)
      if (nil? target)
        println |detached
        println |attached target
```

`:ref` 不进入元素的属性列表，也不会在 DOM 或 SSR 输出中生成 `ref="..."`。

- 挂载时，回调接收真实 DOM 元素。
- 替换 ref 时，先用 `nil` 调用旧回调，再用元素调用新回调。
- 卸载时，先清理子节点，再用 `nil` 调用当前回调。

回调身份属于 ref 生命周期的一部分。内联 `fn` 每次渲染都会创建新回调，因此即使 DOM 元素不变，也会先清除旧回调、再分配给新回调。ref 回调应保持幂等；若要避免重复清除和设置，可显式复用稳定的回调值。

ref 适用于焦点、测量、第三方控件等命令式浏览器集成。不要把可变 DOM 节点放入不可变应用 store。

<a id="immutable-async-resources"></a>

## 不可变异步资源

`respo.resource` 将请求执行与应用状态分开。`load-resource!` 发出不可变的 `ResourceAction`，应用 updater 通过纯函数 `resource-reducer` 应用这些 action。

```cirru.no-check
; 应用 schema 中
defenum Op
  :reload
  :resource ResourceAction

; updater 中
(:resource action)
update store :tasks-resource $ fn (state)
  resource-reducer state action

; 事件或 effect 边界中
load-resource!
  fn () (js/fetch |/api/tasks)
  fn (action)
    d! $ :: :resource action
```

使用 `resource-idle` 创建初始状态。reducer 生成以下状态：

| 状态 | 含义 |
| --- | --- |
| `:idle` | 尚未发起请求 |
| `:pending` | 没有旧数据的加载过程 |
| `:refreshing` | 保留旧数据的加载过程 |
| `:ready` | 最新请求完成 |
| `:error` | 最新请求失败，保留旧数据 |

每个请求有一个数字 ID。来自旧请求的完成或失败 action 会返回当前状态原值，防止过期响应覆盖新数据。`load-resource!` 接受普通值或兼容 Promise 的结果，并将同步抛出的错误转换为 `:failed` action。

`load-resource!` 只调用一次 fetcher。Promise 链中的失败，包括发出 `:ready` action 时抛出的异常，都会转换为相同请求 ID 的 `:failed` action。已完成的 `:ready` 状态即使有效 payload 为 `nil`，后续加载也进入刷新流程；加载状态根据资源状态判断。

<a id="error-boundaries"></a>

## 错误边界

包装一个子表达式，并提供回退函数：

```cirru
ns app.demo $ :require
  respo.core :refer $ error-boundary div <>

error-boundary
  fn (_error)
    div ({})
      <> |Unable_to_render
  div ({})
    <> |Ready
```

`error-boundary` 捕获构建该子节点时抛出的同步错误。事件回调、effect、定时器和 Promise 后续回调的错误应在对应边界处理。

边界不保留持久的错误标记。下一次由不可变 store 数据触发的渲染，会重新计算子节点。若应用需要持久的错误记录，应 dispatch 明确的应用操作，并将该状态存入 store。

<a id="render-batching"></a>

## 渲染批处理

为应用渲染回调创建一次调度包装，然后在 store watch 中调用：

```cirru.no-check
let
    schedule-render! $ make-render-scheduler
      fn ()
        render-with! mount-target
          fn () (comp-container @*store)
          , dispatch!
      %:: Option :none
  add-watch *store :changes $ fn (_current _previous)
    schedule-render!
  schedule-render!
```

默认使用 `queueMicrotask` 调度。在排队的回调执行前，多次调度调用合并为一次渲染。调度器只持有排队标记；真实数据仍在 `*store` 中，渲染回调执行时读取最新的不可变值。

传入 `Option :some enqueue!` 可替换 `queueMicrotask`，用于确定性测试或宿主专用调度器。
自定义实现控制回调时机，也可以同步执行，因此不保证默认的微任务批处理行为。
末尾的 Option 参数可以省略，以使用默认队列。

`render!` 和 `render-with!` 仍同步执行；需要立即读取更新后的 DOM 时，直接调用它们，
或使用同步 store watch。调度测试应等待微任务或清空注入的队列。每次注册 watch
复用一个调度器，热更新替换 watch 时应让旧队列中的回调失效；
[入门指南](../beginner-guide.md#rerender-on-updates)展示了这个保护逻辑。

<a id="error-behavior"></a>

## 错误处理

公开宏和高阶函数使用带 API 前缀的错误消息，例如 `[Respo/show]` 和 `[Respo/load-resource!]`。宏形状错误在展开阶段报告，函数 schema 检查普通 Calcit 误用，动态边界验证器保留同样明确的消息，不额外输出泛化的断言错误。