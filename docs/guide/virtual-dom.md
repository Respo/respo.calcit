## Virtual DOM

**📚 Documentation Index**
- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Base Components](./base-components.md) | [Component States](./component-states.md) | [Styles](./styles.md) | [Events](./dom-events.md)

There are elements and components before they are actually rendered. After rendering, all elements have specific definitions:

```cirru
defrecord Element :name :coord :attrs :style :event :children

defrecord Component :name :effects :tree

defrecord Effect :name :coord :args :method
```

`coord` means "coordinate" in Respo, it looks like `[] 0 1 3` or even `[] 0 0 0 :container 0 0 "|a"`.

If you define component like this:

```cirru
div
  {}
    :style $ {}
      :color "|red"
    :class-name "|demo"
    :on-click $ fn (e dispatch!)
  div $ {}
```

You may get a piece of data in Calcit-js:

```clojure
#respo.core.Element{:name :div,
                    :coord nil,
                    :attrs ([:class-name "demo"]),
                    :style {:color "red"},
                    :event {:click #object[Function "function (e,dispatch_BANG_){
                                                       return null;
                                                     }"]},
                    :children [[0 #respo.core.Element{:name :div,
                                                      :coord nil,
                                                      :attrs (),
                                                      :style nil,
                                                      :event (),
                                                      :children []}]]}
```

You may have noticed that in `children` field it's a vector.
There is a `0` indicating it's the first child.
And yes internally that's the true representation of children.

As I told, virtual DOM is normal Calcit-js data,
you can [transform the virtual DOM][transform] in the runtime:

[transform]: https://github.com/Respo/respo-border/blob/master/compiled/src/respo_border/transform/border.cljs

```cirru
defn interpose-borders (element border-style)
  if (contains? element :children)
    update element :children $ fn (children)
      interpose-item ([]) 0 children
        hr $ {}
          :style $ merge default-style border-style
```

This demo inserts borders among child elements. You can think of more.
