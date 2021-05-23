
Respo: A virtual DOM library in Calcit-js
----

> Inspired by React and Reagent. Previous [Respo/respo.cljs](https://github.com/Respo/respo.cljs).

* Home http://respo-mvc.org
* [Bundled example](http://repo.respo-mvc.org/respo.calcit/)
* [Docs](https://github.com/Respo/respo/wiki)

### Usage

DOM syntax

```cirru
div
  {}
    :class-name "|demo-container"
    :style $ {} (:color :red)
    :on-click $ fn (event dispatch!)
  div $ {}
```

Text Node:

```cirru
<> content

; with styles
<> content $ {}
  :color :red
  :font-size 14})
```

Component definition:

```cirru
defcomp comp-container (content)
  div
    {}
      :class-name |demo-container
      :style $ {} (:color :red)
    <> content
```

App initialization:

```cirru
; initialize store and update store
defatom *store $ {} (:point 0)
  :states $ {}
defn dispatch! (op op-data)
  reset! *store updated-store

; render to the DOM
render! mount-point (comp-container @*store) dispatch!
```

Rerender on store changes:

```cirru
defn render-app! ()
  render! mount-point (comp-container @*store) dispatch!

add-watch *store :changes $ fn ()
  render-app!
```

Reset virtual DOM caching during hot code swapping, and rerender:

```cirru
defn reload! ()
  clear-cache!
  render-app!
```

Adding effects to component:

```cirru
defeffect effect-a (text) (action parent-element at-place?)
  println action
  ; action could be :mount :update :amount

  when (= :mount action)
    do nil

defcomp comp-a (text)
  []
    effect-a text
    div {}
```

Define a hooks plugin, like components it has caching support:

```cirru
defn plugin-x (a b)
  {}
    :ui $ div ({}) (<> "|Demo")
    :show $ fn () nil
```

### Workflow

https://github.com/calcit-lang/calcit-workflow

### License

MIT
