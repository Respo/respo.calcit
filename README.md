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

### API Reference (see `docs/apis/`)

Core macros and functions for building applications:

| API                  | Path                                                               | Purpose                        |
| -------------------- | ------------------------------------------------------------------ | ------------------------------ |
| `defcomp`            | [docs/apis/defcomp.md](docs/apis/defcomp.md)                       | Define components with macro   |
| `defeffect`          | [docs/apis/defeffect.md](docs/apis/defeffect.md)                   | Define lifecycle effects       |
| `div`                | [docs/apis/div.md](docs/apis/div.md)                               | Create div elements            |
| `create-element`     | [docs/apis/create-element.md](docs/apis/create-element.md)         | Dynamically create elements    |
| `render!`            | [docs/apis/render!.md](docs/apis/render!.md)                       | Sync virtual DOM to real DOM   |
| `render-app`         | [docs/apis/render-app.md](docs/apis/render-app.md)                 | Application rendering          |
| `expand-tag`         | [docs/apis/expand-tag.md](docs/apis/expand-tag.md)                 | Expand tag shortcuts           |
| `comp-space`         | [docs/apis/comp-space.md](docs/apis/comp-space.md)                 | Spacing component              |
| `comp-inspect`       | [docs/apis/comp-inspect.md](docs/apis/comp-inspect.md)             | Inspection/debugging component |
| `clear-cache!`       | [docs/apis/clear-cache!.md](docs/apis/clear-cache!.md)             | Clear memoization cache        |
| `patch-instance!`    | [docs/apis/patch-instance.md](docs/apis/patch-instance.md)         | Patch DOM instances            |
| `activate-instance`  | [docs/apis/activate-instance.md](docs/apis/activate-instance.md)   | Activate DOM instances         |
| `pick-states`        | [docs/apis/pick-states.md](docs/apis/pick-states.md)               | Extract component states       |
| `purify-element`     | [docs/apis/purify-element.md](docs/apis/purify-element.md)         | Clean element markup           |
| `mute-element`       | [docs/apis/mute-element.md](docs/apis/mute-element.md)             | Silence element output         |
| `make-html`          | [docs/apis/make-html.md](docs/apis/make-html.md)                   | Generate HTML                  |
| `make-string`        | [docs/apis/make-string.md](docs/apis/make-string.md)               | Serialize to string            |
| `find-element-diffs` | [docs/apis/find-element-diffs.md](docs/apis/find-element-diffs.md) | Find DOM differences           |
| `apply-dom-changes`  | [docs/apis/apply-dom-changes.md](docs/apis/apply-dom-changes.md)   | Apply DOM patches              |
| `realize-ssr!`       | [docs/apis/realize-ssr\_.md](docs/apis/realize-ssr_.md)            | Server-side rendering          |
| `list->`             | [docs/apis/list->.md](docs/apis/list->.md)                         | Create list containers         |

### Using with Calcit CLI Tools

To explore the codebase using `cr` commands:

```bash
# List all namespaces
cr query ls-ns

# Explore core APIs
cr query read-ns respo.core
cr query peek-def respo.core defcomp
cr query read-def respo.core render!

# Search for specific functionality
cr query find-symbol render!
cr query usages respo.core render!

# Check project configuration
cr query configs
```

For more CLI tool information, see [Agents.md](./Agents.md).
