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

Here is a simple demo handling `input` events:

```cirru.no-check
input $ {}
  :on-input $ fn (e dispatch!)
    println (:value e)
```

`e` is a HashMap with several entries:

```cirru.no-check
; ns app.demo

let
    e $ {}
      :type "|input"
      :original-event nil
  :type e
```

The details:

```cirru.no-check
defn event->edn (event)
  ; js/console.log "|simplify event:" event
  ->
    case-default (.-type event)
      {}
        :msg (str "|Unhandled event: " (.-type event))
        :type (.-type event)
      |click $ {}
        :type :click
      |keydown $ {}
        :key-code (.-keyCode event)
        :type :keydown
      |keyup $ {}
        :key-code (.-keyCode event)
        :type :keyup
      |input $ {}
        :value (aget (.-target event) "|value")
        :type :input
      |change $ {}
        :value (aget (.-target event) "|value")
        :type :change
      |focus $ {}
        :type :focus
  assoc :original-event event
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

`DomProps` supports `:on-paste` with the same nullable `EventHandler` type as other event fields. For example:

```cirru
respo.core/textarea $ {}
  :on-paste $ fn (event dispatch!) &unit
```

Paste follows the existing generic event conversion: `:type` is the string `"paste"`, and both `:original-event` and `:event` hold the native event. Read clipboard data from the native event's `clipboardData` at the browser boundary. By default, Respo stops propagation and leaves the browser's default paste action enabled; call `preventDefault` on the original event when the application needs to override it. Removing `:on-paste` removes the Respo handler according to the configured listener mode.

When a position switches between a `defcomp` component and a plain element, Respo refreshes event coordinates throughout the resulting subtree. Root and descendant events resolve the current handlers, including descendants whose virtual nodes are reused unchanged. Removing an event prop still removes its DOM handler.
