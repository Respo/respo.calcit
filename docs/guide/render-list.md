---
title: "列表渲染"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "render list"
  - "list rendering"
  - "component memoization"
  - "memof migration"
entry_for:
  - "list->"
  - "keyed list"
  - "for-keyed"
  - "memo-comp-by"
  - "memo-value-by"
---

<a id="render-list"></a>

## 列表渲染

**📚 文档索引**

- [← 返回 README](../../README.md)
- [入门指南](../beginner-guide.md)
- [API 参考](../api.md)
- [全部指南](./): [为什么选择 Respo](./why-respo.md) | [基础组件](./base-components.md) | [虚拟 DOM](./virtual-dom.md) | [组件状态](./component-states.md)

使用 `respo.core/list->` 渲染列表，子元素以 `[key child]` 的形式传入：

```cirru.no-check
list->
  {}
    :style $ {}
  []
    [] "a" (comp-text "|this is A" nil)
    [] "b" (comp-text "|this is B" nil)
```

标签为 `:div` 时，可以省略标签参数：

```cirru.no-check
list-> props children
```

通常使用 `->` 转换列表：

```cirru.no-check
list->
  {}
    :class-name "|task-list"
    :style style-list
  -> tasks
    reverse
    map $ fn (task)
      [] (:id task) (task-component task)
```

子元素按列表中的顺序渲染。大列表仍会增加构建、diff 和 DOM 更新的成本；必要时应按页加载或采用虚拟列表。请使用稳定且唯一的业务 key，并用实际应用负载测量性能。

开发模式报告原列表中最先出现的重复 key。检测使用哈希成员查询；结构相等的 Calcit key 仍视为重复，哈希碰撞通过深度相等检查区分。除复杂 key 的哈希与比较成本、极端碰撞外，预期遍历成本为线性。

`list->` 先验证每个 `[key child]`，再过滤 child 为 `nil` 的项，与普通元素过滤 nil 子节点的行为一致。添加或删除 nil 项不会创建 DOM 节点。将元素变为 nil 会移除节点，变回元素时按 key 对应的位置恢复。其余子元素保留原有 key 和顺序。包括被过滤的项在内，每项都必须有非 nil 的 key；无效子节点在过滤之前就会被拒绝。

`for-keyed` 封装常见的有序列表转换；遇到 `nil` key 时，错误中包含对应的源列表索引：

```cirru.no-check
list->
  {} (:class-name |task-list)
  for-keyed tasks
    fn (task) (:id task)
    fn (task _idx)
      task-component task
```

回调契约和错误处理见[常用原语](./common-primitives.md#conditional-and-keyed-rendering)。

<a id="memoizing-components"></a>

## 组件缓存

业务应用可以使用 Respo 内置的 `memo-comp-by`，避免重新构建没有变化的组件子树。
从 `respo.core` 导入 `render-with!` 和 `memo-comp-by` 即可，无需依赖或导入 `memof`。

应用的渲染入口应在传给 `render-with!` 的零参数函数内构建组件树：

```cirru.no-check
; ns app.main $ :require
  respo.core :refer $ render-with! memo-comp-by

defn render-app! ()
  render-with! mount-target
    fn () $ comp-container @*store
    , dispatch!
```

在把组件加入树的位置调用 `memo-comp-by`，依次传入稳定的 key、组件函数和完整的组件参数列表：

```cirru.no-check
list->
  {} (:class-name |task-list)
  -> tasks .to-list $ map
    fn (task)
      let
          task-id $ :id task
        [] task-id $ memo-comp-by task-id comp-task (>> states task-id) task
```

`memo-comp-by` 要求回调返回 `respo.schema/Component`。开放的回调结果会经过组件校验，返回原组件，不包装或复制；返回其他值时保留既有报错。回调自身抛出的异常会继续传递。

缓存身份由组件函数和 key 共同组成。只有完整参数列表相等时，才复用缓存的 `Component`。
key 应使用稳定的业务 ID；列表会插入、删除或重排时，不应使用数组索引。传入 `nil` 会绕过缓存。

`render-with!` 自动开始并结束 memo 帧。帧结束时，Respo 清除本次没有访问到的缓存 key。
外层 memo 命中时，其记录的嵌套依赖也保持活跃，包括依赖的依赖。外层回调重新计算且不再调用
某个子 memo 时，对应条目可在当前帧清理。帧外调用直接计算，不读取或增加缓存。

若组件树构建抛出异常，`render-with!` 丢弃当前帧的临时条目和依赖栈，保留上次成功提交的缓存，
再重新抛出原 Calcit 错误消息。后续帧外调用仍直接计算，下一次渲染可正常重新开始。
业务代码无需自行调用帧生命周期函数。热更新时先调用 `clear-cache!`，再重新渲染，
避免继续保留旧代码定义的组件：

```cirru.no-check
defn reload! ()
  clear-cache!
  render-app!
```

`memo-comp-by` 仅用于返回 Respo `Component` 的组件函数。请求和副作用应在对应的边界执行。
确定性的不可变数据转换，可以在同一渲染帧中使用 `memo-value-by`，见
[常用原语](./common-primitives.md#memoizing-immutable-derived-values)。

<a id="reordering-keyed-children"></a>

## keyed 子节点重排

Respo 在整个 keyed 列表中匹配保留的子节点，保留旧位置的最长递增子序列（LIS），移动其余节点。交换相邻两项需要一次移动；反转包含 `n` 个保留项的列表需要 `n - 1` 次移动。公共前缀和后缀分别处理；key 顺序不变时，跳过索引映射和 LIS 计算。

移动复用原有 DOM 节点，保留用户编辑的输入值、选区和滚动位置。保留的组件不会因移动重新挂载或卸载，其正常的属性和 effect 更新仍会执行。只有新增子节点会挂载，移除子节点会卸载。

对已连接的 DOM 节点，优先使用浏览器支持的 `Element.moveBefore`。回退路径使用 `insertBefore` 或 `appendChild`，通过 `preventScroll` 恢复焦点，并恢复移动子树的滚动偏移。回退路径在恢复焦点时可能触发浏览器原生 blur/focus 事件。

运行 `yarn test-keyed-moves` 验证排列和嵌套列表回归，运行 `yarn bench-keyed-moves` 测量 diff 耗时。也可通过 Vite 打开 `test/examples/keyed-moves.html` 进行真实浏览器验证；添加 `?fallback=1` 可测试插入回退路径。

<a id="migrating-from-memof"></a>

## 从 memof 迁移

组件渲染中的常见迁移方式：

| 原 `memof.once` 用法 | Respo 替代方式 |
| --- | --- |
| `memof1-call-by key comp-f & args` | `memo-comp-by key comp-f & args` |
| `begin-memof1-frame!` / `finish-memof1-frame!` | 移除手动帧调用，在应用渲染入口使用 `render-with!` |
| `reset-memof1-caches!` 热更新时 | `respo.core/clear-cache!` |
| `memof.once` import and `memof/` module | 不存在其他非组件用途时移除 |

例如，原先的列表子组件缓存：

```cirru.no-check
[] task-id $ memof1-call-by task-id comp-task (>> states task-id) task
```

改为：

```cirru.no-check
[] task-id $ memo-comp-by task-id comp-task (>> states task-id) task
```

确认顶层渲染使用 `render-with!`，然后移除 `memof.once` 导入规则和入口 modules 中的 `memof/`。
项目不再有其他用途时，也从 `deps.cirru` 移除 `calcit-lang/memof`。

没有业务 key 的 `memof1-call`，以及包装任意表达式的 `memof1-as`，没有直接对应的 Respo API。
若结果是组件，应选择稳定的业务 key，改用 `memo-comp-by`。若缓存的是非组件计算，可保留
`memof` 或选择适合该数据生命周期的缓存；不要把非 Component 结果传给 `memo-comp-by`。
