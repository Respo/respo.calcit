## DOM properties

**📚 Documentation Index**
- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Base Components](./base-components.md) | [Virtual DOM](./virtual-dom.md) | [Component States](./component-states.md)

Respo is updating DOM properties with a simple solution. It's okay but not that friendly. Here are some example on the name mapping:

- `className` ->`:class-name`
- `innerText` ->`:inner-text`
- `innerHTML` ->`:innerHTML`
- `value` ->`:value`

I'm afraid you have to figure out more by yourself.

Properties(except for `style` and `event`) are specified in `attrs` field. `style` is a HashMap. `event` is followed with a HashMap of events too.

The impelementation details is:

```cirru
defn replace-prop (target op)
  let
      prop-name (dashed->camel (name (key op)))
      prop-value (val op)
    if (= prop-name "value")
      if
        not= prop-value (.-value target)
        aset target prop-name prop-value
      aset target prop-name prop-value

defn add-prop (target op)
  let
      prop-name $ dashed->camel (name (key op))
      prop-value $ val op
    case-default prop-name
      aset target prop-name prop-value
      "|style" $ aset target prop-name (style->string prop-value)

defn rm-prop (target op)
  aset target (dashed->camel (name op)) nil
```
