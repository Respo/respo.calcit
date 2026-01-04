## DOM events

**📚 Documentation Index**

- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Base Components](./base-components.md) | [Virtual DOM](./virtual-dom.md) | [Component States](./component-states.md)

Here is a simple demo handling `input` events:

```cirru
input $ {}
  :on-input $ fn (e dispatch!)
    println (:value e)
```

`e` is a HashMap with several entries:

```cirru
def e $ {}
  :type "|input"
  :original-event event
```

The details:

```cirru
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
