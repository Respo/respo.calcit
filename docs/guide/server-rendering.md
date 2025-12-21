For more details please read <https://github.com/Respo/ssr-stages>

### Rendering assumptions

Before talking about **S**erver **S**ide **R**endering(SSR), you should know about how Respo mounts and rerenders. There's a Atom called `*global-element` which represents the virtual DOM of currently rendered HTML content on the page:

```cirru
defatom *global-element nil
```

And every time you call `render!`, it checks if old virtual DOM exists. If exists, it will do patching with `rerender-app!` rather than mounting:

```cirru
defn render! (target markup dispatch!)
  if (some? @*global-element)
    rerender-app! target markup dispatch!
    mount-app! target markup dispatch!
```

### What is SSR in Respo?

So SSR is there's already HTML in `<div class="app">{"some HTML existed"}</div>` and Respo need to patch the DOM in the first screen. And in order to generate the patches, we must prepare an old virtual DOM so that we can call diff function.

And note that the HTML transferred over the network does not bind events, and we need to bind them on client side. Internally there's `mute-element` function to remove events from virtual DOM.

### Server rendering

**📚 Documentation Index**

- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Base Components](./base-components.md) | [Virtual DOM](./virtual-dom.md) | [Component States](./component-states.md)

Virtual DOM can be rendered on a server, use it like in JavaScript.

[`make-string`](../apis/make-string.md) is the function to render HTML. [`realize-ssr!`](../apis/realize-ssr_.md) is also useful to make first screen look smoother, make sure it's called before `render!`.

Notice that when rendering on server, events are not bound,
internally we use [`mute-element`](../apis/mute-element.md) to remove events before rendering.
Without [`realize-ssr!`](../apis/realize-ssr_.md), [`render!`](../apis/render_.md) function will remove existing DOM and mount the whole tree.

### `realize-ssr!` solution

How to prepare that virtual DOM? You have to render that by yourself. Since Respo components are like functions, it's not hard. Read code below:

```cirru
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

In `realize-ssr!` we also setup the event listener, and all listeners are finished registering after `render!` is called, i.e. DOM patching finished.

### Extracting CSS defined in Calcit

Respo introduced `defstyle` macro for generating `<style/>` tags for more CSS code, which is also required when SSR is performed. Simple way is to read `@*style-list-in-nodejs` and join them into CSS code. CSS rules are handled inside Respo. A rough demo:

```cirru
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
