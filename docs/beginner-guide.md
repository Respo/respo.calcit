Want to explore by yourself?

- Minimal App <https://github.com/Respo/minimal-respo>
- Examples <https://github.com/Respo/respo-examples>
- Complicated editor in Respo <https://github.com/Cirru/calcit-editor>

### What is Respo?

Respo is a virtual DOM library like React, built with Calcit-js to embrace functional programming.

### Before start

Besides experiences on Web apps, you also need to know:

- Calcit-js <http://calcit-lang.org>

### Component definition

Components are defined with a macro called `defcomp`:

```cirru
defcomp comp-space (w h)
  div $ {}
    :style $ {}
```

where `div` is a macro for creating virtual element for `<div>`.

The full code looks like:

```cirru
ns respo.comp.space
  :require
    respo.core :refer $ defcomp div

def style-space $ {}
  :width "|1px"
  :display "|inline-block"
  :height "|1px"

defn compute (w h)
  if (some? w)
    assoc style-space :width w
    assoc style-space :height h

defcomp comp-space (w h)
  div $ {}
    :style (compute w h)
```

Internally, `defcomp` will expand the expression to:

```
defn comp-space (w h)
  merge respo.schema/component
    {}
      :args (list w h)
      :name :comp-space
      :render $ fn (w h)
        div $ {}
          :style (compute w h)
```

So `comp-space` is a function:

```cirru
comp-space nil 16
```

DOM properties are divided into `style` `on`(events) and attributes. Specify them in HashMaps or nothing:

```cirru
input
  {}
    :style $ {}
      :color "|grey"
    ; a function for each event, will explain later
    :on-input $ on-text-statecursor
    ; attributes
    :placeholder "|A name"
```

### Short hands

`<>` is a macro, like alias:

```cirru
<> text style
```

expands to

```cirru
span $ {}
  :inner-text text
  :style style
```

Being a multiple arity macro, it also supports:

```cirru
<> text
```

`=<` is an alias for `comp-space`, just use it like that:

```cirru
=< 8 nil
; (comp-space 8 nil)
```

### States

A component can also be created with states, it also need a `cursor` for updating states:

```cirru
defcomp comp-demo (states
  let
      ; "passing togather with states"
      cursor (:cursor states)
      ; "setting initial state with `(or nil |)`"
      state (or (:data states) {:text "|"})]
    input $ {}
      :value (:text state)
      :on-input $ fn (e dispatch!)
        ; will update component state(saved in global store)
        dispatch! cursor (assoc state :text (:value e)))
```

`(dispatch! cursor new-state)` updates state of current component.
Internally it's transformed into `(dispatch! :states [cursor new-state])` which can be handled in `updater` function.

Component states are not saved inside components, but as a tree in the store. Suppose store is:

```cirru
{}
  :states $ {}
```

Use `respo.core/>>` to specify a new branch of the state tree:

```cirru
comp-demo (>> states :demo)
```

Then the state of `comp-demo` would be in global store:

```cirru
{}
  :states $ {}
    :cursor $ []
    :data $ {}
    :demo $ {}
      :data $ {}
```

Actually it's still `{:states {}}`, but it's like we got `nil` when you look into `(:demo state)`.

You need to handle states operation in the store with function `respo.cursor/update-states`:

```cirru
defatom *store $ {}
  :states $ {}

defn updater (store op op-data)
  case-default op store
    :states (update-states store op-data)
```

### Render to the DOM

In order to render, you need to define `store` and `states`.
Use Atoms here since they are the data sources that change over time:

```cirru
defatom *store $ {}
  :states $ {}

defn id! () (.!valueOf (new js/Date))

defn dispatch! (op op-data)
  let
      op-id $ id!
      new-store (updater @*store op op-data op-id)
    reset! *store new-store

def mount-target (js/document.querySelector "|#app")

defn render-app! ()
  let
      app (comp-container @*store)
    render! mount-target app dispatch!
```

Note that you need to define `dispatch!` function by yourself.

### Adding effects

To define effects, use `defeffect`:

```cirru
defeffect effect-a (x y) (action el at-place?)
  println "|action" action el
```

A vector is required to add effects into component:

```cirru
defcomp comp-a (a b)
  []
    effect-a a b
    div $ {}
```

Effects will be called multiple during moumting, updating and unmounting with different `action` value.
Users need to detect and insert effects by need.

Effects can be shared across component, it's just a piece of data.
Dispatching actions is not allowed inside effects, which is unlike React.

### Rerender on updates

Better to render on page load and changes of data sources:

```cirru
defn main! ()
  render-app!
  add-watch global-store :rerender render-app!

set! (.-onload js/window) main!
```

To cooperate with hot swapping:

```cirru
defn reload! ()
  clear-cache!
  render-app!
```

Notice that `clear-cache!` is from `respo.core` and it clears component caches after code updated.
Caching is a mechanism to speed up virtual DOM rendering. It's invalidated after code changes.

### Handling events

To make state update, you need to pass a function to `:on-input` field.
This function will be called with parameters of `event`(wrapped in `:original-event` of `e`), `dispatch!`(function we defined before). And you also need a cursor:

```cirru
input $ {}
  :value (:text task)
  :style style-input
  :on-input $ fn (e dispatch!)
    dispatch! cursor (:value e)
```

To handle a global action, call `dispatch!` with an action type and a parameter:

```cirru
div
  {}
    :style style-button
    :on-click $ fn (e dispatch!)
      dispatch! :remove (:id (:task props))
  <> "|Remove"
```

`dispatch!` will cause a change in `*store`. Also note previously `:on` was `:event`.

### Composing component

Reusing components is easy. They are wrapped functions that return components:

```cirru
div
  {}
    :style style-task
  comp-debug task $ {}
    :left "|160px"
  button $ {}
    :style (style-done (:done task))
  =< 8 nil
  input $ {}
    :value (:text task)
    :style style-input
    :on-input (on-text-change props state)
  =< 8 nil
  div
    {}
      :style style-time
    span $ {}
      :inner-text (:time state)
      :style style-time
```

### Others

Find working examples:

- Minimal app <https://github.com/Respo/minimal-respo>
- Wanderlist <https://github.com/Memkits/wanderlist>

Find me on [Twitter](https://twitter.com/jiyinyiyong) if you got interested.
