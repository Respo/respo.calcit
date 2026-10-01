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

Events are bound directly on the elements for simplicity and consistency. And it stops propagation when event is triggered.

`DomProps` supports `:on-paste` with the same nullable `EventHandler` type as other event fields. For example:

```cirru
respo.core/textarea $ {}
  :on-paste $ fn (event dispatch!) &unit
```

Paste follows the existing generic event conversion: `:type` is the string `"paste"`, and both `:original-event` and `:event` hold the native event. Read clipboard data from the native event's `clipboardData` at the browser boundary. Respo stops propagation and leaves the browser's default paste action enabled; call `preventDefault` on the original event when the application needs to override it. Removing `:on-paste` removes the DOM handler.

When a position switches between a `defcomp` component and a plain element, Respo refreshes event coordinates throughout the resulting subtree. Root and descendant events resolve the current handlers, including descendants whose virtual nodes are reused unchanged. Removing an event prop still removes its DOM handler.
