---
title: "Server Rendering"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "server rendering"
  - "SSR"
  - "server side rendering"
  - "ssr"
entry_for:
  - "make-string"
  - "realize-ssr!"
  - "first screen html"
  - "hydrate app"
---

For more details please read <https://github.com/Respo/ssr-stages>

### Rendering assumptions

Before talking about **S**erver **S**ide **R**endering(SSR), you should know about how Respo mounts and rerenders. There's a Atom called `*global-element` which represents the virtual DOM of currently rendered HTML content on the page:

```cirru.no-check
defatom *global-element $ Option :none
```

And every time you call `render!`, it checks if old virtual DOM exists. If exists, it will do patching with `rerender-app!` rather than mounting:

```cirru.no-check
defn render! (target markup dispatch!)
  reset! *dispatch-fn dispatch!
  match @*global-element
    (:none) (mount-app! target markup *dispatch-fn)
    (:some _) (rerender-app! target markup *dispatch-fn)
```

### What is SSR in Respo?

So SSR is there's already HTML in `<div class="app">{"some HTML existed"}</div>` and Respo need to patch the DOM in the first screen. And in order to generate the patches, we must prepare an old virtual DOM so that we can call diff function.

HTML transferred over the network does not bind events. During `realize-ssr!`, Respo diffs a copy with events removed by `mute-element` against the live component tree. This produces event patches for the existing DOM, including descendant nodes, before mount effects run.

### Server rendering

**📚 Documentation Index**

- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Base Components](./base-components.md) | [Virtual DOM](./virtual-dom.md) | [Component States](./component-states.md)

Virtual DOM can be rendered on a server, use it like in JavaScript.

`respo.render.html/make-string` is the function to render HTML. `respo.core/realize-ssr!` is also useful to make first screen look smoother; make sure it is called before `respo.core/render!`.

`make-string` serializes the component tree without event handlers. On the client, `realize-ssr!` attaches those handlers while adopting the existing HTML.

Text and attribute values escape ampersands before other HTML characters, so literal entities such as `&amp;` keep their original text after the browser parses the SSR output. Explicit `:innerHTML` content is inserted as HTML.

`text->html` 将 nil 转为空字符串；String、Tag、Symbol、Number、Bool 经现有标量检查后转换和转义。集合或任意宿主对象不自动字符串化；失败复用 `scalar-attribute-text` 的 `Attribute value must be a scalar` 消息，而不是依赖底层转换错误。需要显示集合或业务对象时，先由应用明确选择展示文本。

生成的 JS 中，Calcit nil 对应 `null`；宿主 `undefined` 不自动视为 nil，需先在 FFI 边界明确处理。
Without `respo.core/realize-ssr!`, `respo.core/render!` will remove existing DOM and mount the whole tree.

### `realize-ssr!` solution

How to prepare that virtual DOM? You have to render that by yourself. Since Respo components are like functions, it's not hard. Read code below:

```cirru.no-check
defatom *store $ {}

def mount-target (js/document.querySelector "|.app")

defn -main ()
  if server-rendered?
    realize-ssr! target
      render-element (comp-container @*store)
      , dispatch!
  render-app!
  add-watch *store :changes render-app!
```

It can be divided into several steps:

- call `(comp-container store)` to create component
- call `(render-element component)` to render component to virtual DOM
- call `(realize-ssr! target element dispatch!)` to reset `*global-element` we mentioned above
- then call `render!` with `(render-app!)`

When `realize-ssr!` returns, event handlers are already attached and the ref callbacks and mount effects have run once. It records the live component tree and the shared dispatch reference. The first `render!` can reuse that same tree and update `dispatch!`; later renders resolve the latest handlers without remounting the adopted nodes or repeating mount effects.

### Extracting CSS defined in Calcit

Respo introduced `defstyle` macro for generating `<style/>` tags for more CSS code, which is also required when SSR is performed. Simple way is to read `@*style-list-in-nodejs` and join them into CSS code. CSS rules are handled inside Respo. A rough demo:

```cirru.no-check
let
    app-html $ make-string
      comp-container $ let
          s schema/store
        assoc reel-schema/reel :base s :store s
    styles $ .join-str @*style-list-in-nodejs (str &newline &newline)

  ;nil
```

### Report bugs

This feature has not been well tested in real world yet. Submit bugs at https://github.com/Respo/respo/issues
