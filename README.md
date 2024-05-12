## Respo: A virtual DOM library in Calcit-js

> Inspired by React and Reagent. Previously [Respo/respo.cljs](https://github.com/Respo/respo.cljs).

- Home http://respo-mvc.org
- [Bundled example](http://repo.respo-mvc.org/respo.calcit/)
- [Guide](https://github.com/Respo/guidebook)

### Usage

In `package.cirru` and run `caps`:

```cirru
{}
  :dependencies $ {}
    |Respo/respo.calcit |main
```

![Latest](https://img.shields.io/github/v/release/calcit-lang/calcit)

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
defn dispatch! (op)
  reset! *store (updater @*store op)

; TODO
defn updater (store op)
  tag-match op
    (:TODO a b) TODO
    _ (do (eprintln "|Unknown op:" op) store)

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
  remove-watch *store :changes
  add-watch *store :changes $ fn ()
    render-app!
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

Define a hooks plugin based on Calcit Record, better use a pure function:

```cirru
defn plugin-x (states options)
  %::
    %{} PluginX
      :render $ fn (self) (nth self 1)
      :show $ fn (self d! ? text)
    , :plugin-name
    div ({}) (<> "|Demo")
```

### License

MIT
