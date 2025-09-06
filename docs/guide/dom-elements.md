## DOM elements

An element is defined with [`create-element`](../apis/create-element.md) like:

```cirru
defmacro a (props & children)
  quasiquote
    create-element :a ~props ~@children
```

Where `children` comes with keys since Respo always need keys(in keyword, string, or number) to compare children:

```cirru
[]
  [] 1 (span $ {})
  [] 2 (span $ {})
```

And an element created like:

```cirru
input $ {}
  :placeholder "|Pick a name, and hit Enter"
  :on-keydown (fn (e dispatch!))
  :style $ {}
    :line-height 2
    :width "|100%"
```

might be rendered to an element with events bound:

```xml
<input placeholder="Pick a name, and hit Enter"
       style="line-height:2;width:100%;">
```

Internally an element is stored with EDN like:

```cirru
{}
  :name tag-name
  :coord nil
  :attrs attrs
  :style styles
  :event event
  :children children
```

Some of the frequently used elements are defined in `respo.core`:

```cirru
a body br button canvas code div footer
  h1 h2 head header html hr img input li link
  option p pre script section select span style textarea title
  ul
```

Some are not, but you can create them very quickly with [`create-element`](../apis/create-element.md).
