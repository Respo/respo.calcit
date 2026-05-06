## Respo: A virtual DOM library in Calcit-js

> Inspired by React and Reagent. Previously [Respo/respo.cljs](https://github.com/Respo/respo.cljs).

- Home http://respo-mvc.org
- [Bundled example](http://repo.respo-mvc.org/respo.calcit/)
- [Guide](https://github.com/Respo/guidebook)

### Project Info

- **Version**: 0.16.21
- **Init Function**: `respo.main/main!`
- **Reload Function**: `respo.main/reload!`
- **Core Namespaces**: 33 namespaces providing virtual DOM, rendering, components, and utilities
- **Dependencies**: memof, lilac, calcit-test modules

### Usage

In `package.cirru` and run `caps`:

```cirru
{}
  :dependencies $ {}
    |Respo/respo.calcit |main
```

![Latest](https://img.shields.io/github/v/release/Respo/respo.calcit)

DOM syntax

```cirru
ns app.demo $ :require
  respo.core :refer $ div

defn comp-demo (dispatch!)
  div
    {}
      :class-name "|demo-container"
      :style $ {} (:color :red)
      :on-click $ fn (event d!)
        d! :clicked
    div $ {}
```

More examples adapted from `compact.cirru`:

```cirru
ns app.demo $ :require
  respo.core :refer $ defcomp a <>

defcomp comp-link (href text)
  a
    {} $ :href href
    <> text
```

```cirru
ns app.demo $ :require
  respo.core :refer $ list-> div

defn comp-list ()
  list-> ({})
    [] $ [] :a
      div $ {}
```

Text Node:

```cirru
ns app.demo $ :require
  respo.core :refer $ <>

defn comp-text (content)
  <> content

  ; with styles
  <> content $ {}
    :color :red
    :font-size 14
```

Component definition:

```cirru
ns app.demo $ :require
  respo.core :refer $ div <>

let
    comp-container $ fn (content)
      div
        {}
          :class-name |demo-container
          :style $ {} (:color :red)
        <> content
```

App initialization:

```cirru
ns app.demo $ :require
  respo.core :refer $ render!

; initialize store and update store
let
    *store $ atom $ {} (:point 0) (:states {})
    updater $ fn (store op)
      tag-match op
        (:TODO a b) store
        _ store
    dispatch! $ fn (op)
      reset! *store $ updater @*store op
    mount-point nil
    comp-container $ fn (state) state
  dispatch! $ :: :TODO 1 2

  ; render to the DOM
  defn render-app! ()
    render! mount-point (comp-container @*store) dispatch!
```

Rerender on store changes:

```cirru
let
    *store $ atom $ {} (:point 0)
    render-app! $ fn () nil
  add-watch *store :changes $ fn ()
    render-app!
```

Reset virtual DOM caching during hot code swapping, and rerender:

```cirru
ns app.demo $ :require
  respo.core :refer $ clear-cache!

let
    *store $ atom $ {} (:point 0)
    render-app! $ fn () nil
  add-watch *store :changes $ fn ()
    render-app!
  remove-watch *store :changes
  add-watch *store :changes $ fn ()
    render-app!
  clear-cache!
  render-app!
```

Adding effects to component:

```cirru
ns app.demo $ :require
  respo.core :refer $ div

let
    effect-a $ fn (text)
      fn (action parent-element at-place?)
        println action
        ; action could be :mount :update :amount
        when (= :mount action) nil
  defn comp-a (text)
    []
      effect-a text
      div {}
```

Define a hooks plugin based on Calcit Record, better use a pure function:

```cirru
ns app.demo $ :require
  respo.core :refer $ div <>

let
    plugin-x $ fn (states options)
      %::
        %{} :PluginX
          :render $ fn (self) (nth self 1)
          :show $ fn (self d! ? text) nil
        , :plugin-name
        div {} (<> "|Demo")
```

### License

MIT

---

## Documentation Index (For LLM Tool Integration)

This index helps LLM tools automatically fetch and reference documentation using relative paths and the `cr` CLI.

### Getting Started

- [Beginner Guide](./docs/beginner-guide.md) - Introduction to Respo concepts and component definition
- **[Respo-Agent Guide](./docs/Respo-Agent.md)** - 🤖 Detailed guide for LLM agents developing Respo apps (debugging, patterns, CLI tools)
- [API Documentation Overview](./docs/api.md) - Quick reference for all APIs

### Guides and Concepts (see `docs/guide/`)

| Topic            | Path                                                             | Overview                           |
| ---------------- | ---------------------------------------------------------------- | ---------------------------------- |
| Why Respo        | [docs/guide/why-respo.md](docs/guide/why-respo.md)               | Motivation and design philosophy   |
| Virtual DOM      | [docs/guide/virtual-dom.md](docs/guide/virtual-dom.md)           | Understanding virtual DOM concepts |
| Base Components  | [docs/guide/base-components.md](docs/guide/base-components.md)   | Core component patterns            |
| DOM Elements     | [docs/guide/dom-elements.md](docs/guide/dom-elements.md)         | HTML element creation and usage    |
| Component States | [docs/guide/component-states.md](docs/guide/component-states.md) | Managing component state           |
| DOM Properties   | [docs/guide/dom-properties.md](docs/guide/dom-properties.md)     | DOM property binding               |
| DOM Events       | [docs/guide/dom-events.md](docs/guide/dom-events.md)             | Event handling in Respo            |
| Styles           | [docs/guide/styles.md](docs/guide/styles.md)                     | CSS and styling approach           |
| Render Lists     | [docs/guide/render-list.md](docs/guide/render-list.md)           | Efficient list rendering           |
| Hot Swapping     | [docs/guide/hot-swapping.md](docs/guide/hot-swapping.md)         | Hot code reloading setup           |
| Server Rendering | [docs/guide/server-rendering.md](docs/guide/server-rendering.md) | SSR capabilities                   |
| Pros and Cons    | [docs/guide/pros-and-cons.md](docs/guide/pros-and-cons.md)       | Framework comparison               |

### API Reference

Core API descriptions are now stored in source doc strings inside `compact.cirru`.
Use `docs/api.md` for the overview, or inspect a definition directly with Calcit CLI:

```bash
cr query def respo.core/defcomp
cr query def respo.core/render!
cr query def respo.render.html/make-string
```

| API                  | Namespace                        | Purpose                        |
| -------------------- | -------------------------------- | ------------------------------ |
| `defcomp`            | `respo.core/defcomp`             | Define components with macro   |
| `defeffect`          | `respo.core/defeffect`           | Define lifecycle effects       |
| `div`                | `respo.core/div`                 | Create div elements            |
| `create-element`     | `respo.core/create-element`      | Dynamically create elements    |
| `render!`            | `respo.core/render!`             | Sync virtual DOM to real DOM   |
| `<>`                 | `respo.core/<>`                  | Create text nodes              |
| `comp-space`         | `respo.comp.space/comp-space`    | Spacing component              |
| `comp-inspect`       | `respo.comp.inspect/comp-inspect`| Inspection/debugging component |
| `clear-cache!`       | `respo.core/clear-cache!`        | Clear memoization cache        |
| `patch-instance!`    | `respo.controller.client/patch-instance!` | Patch DOM instances    |
| `activate-instance!` | `respo.controller.client/activate-instance!` | Activate DOM instances |
| `>>`                 | `respo.core/>>`                  | Create state cursors           |
| `purify-element`     | `respo.util.format/purify-element` | Clean element markup         |
| `mute-element`       | `respo.util.format/mute-element` | Silence element output         |
| `make-string`        | `respo.render.html/make-string`  | Serialize to string            |
| `find-element-diffs` | `respo.render.diff/find-element-diffs` | Find DOM differences     |
| `apply-dom-changes`  | `respo.render.patch/apply-dom-changes` | Apply DOM patches        |
| `realize-ssr!`       | `respo.core/realize-ssr!`        | Server-side rendering          |
| `list->`             | `respo.core/list->`              | Create list containers         |

Legacy page names such as `make-html` and `render-app` were removed during the migration to source doc strings.

### Agent Workflows

Agent-oriented CLI workflows (query/check-md automation) are maintained in [Agents.md](./Agents.md).
