## Base components

**📚 Documentation Index**
- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Virtual DOM](./virtual-dom.md) | [Component States](./component-states.md) | [Styles](./styles.md) | [Events](./dom-events.md)

There are some base components for building apps built inside Respo:

```cirru
respo.comp.space/comp-space
respo.comp.space/=< ; "which is an alias for `comp-space`"
respo.comp.inspect/comp-inspect
```

Also I got some simple component to help:

- [`respo-ui`](http://github.com/Respo/respo-ui) for base styles
- [`respo-value`](https://github.com/Respo/respo-value) for displaying values
- [`respo-router`](https://github.com/Respo/respo-router) for routing (Respo not required)
- [`global-popup`](https://github.com/Respo/global-popup) for global popups
- [`inflow-popup`](https://github.com/Respo/inflow-popup) for local popups(demo only)
- [`notifier`](https://github.com/Respo/notifier) for showing notifications(Respo not required)

Respo components are pure, without side effects.

### Component for keydowns

It's tricky to listen to global events since Respo does not allow `useEffect` or `useMounted`. Respo added a component for listening to global keydowns:

```cirru
respo.comp.global-keydown :refer $ comp-global-keydown

comp-global-keydown
  {} $ :disabled-commands (#{} "\"s" "\"p")
  fn (e d!) (js/console.log "\"keydown" e)
```

Internally it listens events on `window` and dispatches events to a `<span/>` element.
