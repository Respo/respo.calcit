---
title: "DOM events"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "dom events"
  - "event handling"
entry_for:
  - "input events"
  - "event props"
---

## DOM events

**📚 Documentation Index**

- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Base Components](./base-components.md) | [Virtual DOM](./virtual-dom.md) | [Component States](./component-states.md)

输入事件处理示例：

```cirru.no-check
input $ {}
  :on-input $ fn (e dispatch!)
    println (:value e)
```

`e` 是不可变 Map，包含事件类型、表单字段和原生事件。输入事件的
`:type` 是 Tag `:input`；未单独识别的事件（例如 paste）保留原生类型字符串。

```cirru.no-check
; ns app.demo

let
    e $ {}
      :type :input
      :value |draft
      :checked false
      :original-event nil
  :type e
```

### 原生事件的类型边界

框架通过 `respo.util.format/event->edn` 转换事件，`:original-event` 与
`:event` 都保留同一个原生对象。读取事件类型使用 `respo.dom/DomEvent`；
input / change 的 target 使用该接口已经声明的
`JsNullish<DomElement>`，不需要再次强转事件。

`input-event-value` 与 `input-event-checked?` 将 target 转为 Option 后读取
原宿主字段。null 或 undefined target 会抛出各 helper 原有的
`event-has-no-target` 错误，空字符串和 `false` 保持原值。value 仍是开放类型，
这里没有添加字段校验、类型转换或默认值。

键盘分支使用 `DomKeyboardEvent` 描述 key、code 和修饰键等宿主字段；
这一真实事件种类边界的转换仍保留。应用读写额外的原生字段时，也应在
自己的浏览器边界声明相应合同。可查询当前实现与签名：

```bash
calcit query def 'respo.util.format/event->edn'
calcit query def 'respo.util.format/input-event-checked?'
calcit query def respo.dom/DomEvent
```

默认通过元素的 `on*` 属性绑定事件，Respo 在交付事件后调用 `stopPropagation`。
浏览器默认行为保持启用；没有配置事件的应用沿用原有行为。

<a id="mount-time-event-configuration"></a>

### 挂载前配置事件

在首次 `render!`、`render-with!` 或 `realize-ssr!` 前调用
`respo.core/configure-events!`，参数为 `respo.schema/EventConfig`：

```cirru
respo.core/configure-events! $ %{} respo.schema/EventConfig
  :stop-propagation? false
  :listener-mode $ respo.schema/ListenerMode :add-event-listener
```

| 选项 | 默认值 | 行为 |
| --- | --- | --- |
| `:stop-propagation?` | `true` | 设为 `false` 时允许冒泡到祖先和 document，应用处理器仍可自行阻止传播。 |
| `:listener-mode` | `ListenerMode :property` | `ListenerMode :add-event-listener` 注册独立原生监听器，保留用户的 `on*` 属性。 |

document 级的外部点击检测等集成可使用 `:stop-propagation? false`；此时 Respo
祖先节点的处理器也会接收冒泡事件。其他代码需要在同一节点处理事件时，可选择
`:add-event-listener`。Respo 更新和移除时只处理自己注册的回调，用户属性处理器和
其他原生监听器继续工作。SSR 接管也使用相同配置，并在独立模式下保留原有属性处理器。

挂载后配置固定，再次调用会抛出 `[Respo/configure-events!]-configure-before-mount`。
热更新保留初始配置：应在启动时、首次渲染前配置，不要放入 reload 回调。
处理单个事件时仍可对 `:original-event` 调用 `preventDefault` 或 `stopPropagation`。

`DomProps` 的 `:on-paste` 与其他事件字段一样，使用可空 `EventHandler`：

```cirru
respo.core/textarea $ {}
  :on-paste $ fn (event dispatch!) &unit
```

Paste 沿用通用事件转换：`:type` 是字符串 `"paste"`，`:original-event` 和
`:event` 均保留原生事件。剪贴板数据从浏览器边界的 `clipboardData` 读取。
默认阻止传播，但保留浏览器粘贴行为；应用需要覆盖默认行为时，对原生事件调用
`preventDefault`。移除 `:on-paste` 会按照配置的监听模式移除 Respo 处理器。

同一位置在 `defcomp` 组件与普通元素之间切换时，Respo 会刷新结果子树的事件
坐标。根节点与后代事件均解析当前处理器，包括复用未变化虚拟节点的后代。
移除事件 prop 仍会移除对应 DOM 处理器。
