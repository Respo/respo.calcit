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

By default, events are bound through each element's `on*` property, and Respo
calls `stopPropagation` after delivering the event. Browser default actions remain
enabled. This preserves the existing behavior for applications that do not configure events.

### Mount-time event configuration

Call `respo.core/configure-events!` before the first `render!`, `render-with!`, or
`realize-ssr!`. It accepts a typed `respo.schema/EventConfig`:

```cirru
respo.core/configure-events! $ %{} respo.schema/EventConfig
  :stop-propagation? false
  :listener-mode $ respo.schema/ListenerMode :add-event-listener
```

| Option | Default | Effect |
| --- | --- | --- |
| `:stop-propagation?` | `true` | `false` permits bubbling to ancestor and document listeners, unless the application handler stops propagation itself. |
| `:listener-mode` | `ListenerMode :property` | `ListenerMode :add-event-listener` attaches independent native listeners and preserves user `on*` properties. |

Use `:stop-propagation? false` for document-level integrations such as outside-click
detection. Respo ancestor handlers also receive bubbling events in that mode.
Choose `:add-event-listener` when other code owns handlers on the same DOM node.
Respo updates or removes only its own registered callback; user property handlers
and independently registered listeners keep working. SSR adoption uses the same
configuration and preserves preexisting property handlers in this mode.

Configuration is fixed once the tree is mounted. Later calls to `configure-events!`
raise `[Respo/configure-events!]-configure-before-mount`; hot reload keeps the
original options. Put configuration in startup setup, before the initial render,
and omit it from the reload callback. Event handlers can still call
`preventDefault` or `stopPropagation` on `:original-event` for a particular event.

`DomProps` supports `:on-paste` with the same nullable `EventHandler` type as other event fields. For example:

```cirru
respo.core/textarea $ {}
  :on-paste $ fn (event dispatch!) &unit
```

Paste follows the existing generic event conversion: `:type` is the string `"paste"`, and both `:original-event` and `:event` hold the native event. Read clipboard data from the native event's `clipboardData` at the browser boundary. By default, Respo stops propagation and leaves the browser's default paste action enabled; call `preventDefault` on the original event when the application needs to override it. Removing `:on-paste` removes the Respo handler according to the configured listener mode.

When a position switches between a `defcomp` component and a plain element, Respo refreshes event coordinates throughout the resulting subtree. Root and descendant events resolve the current handlers, including descendants whose virtual nodes are reused unchanged. Removing an event prop still removes its DOM handler.
