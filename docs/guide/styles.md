## Styles

Styles are represented in HashMap so it's very trival to extend with `merge` and `if`:

```cirru
def style-a $ {}
  :line-height 1.6
  :color (hsl 0 0 80)

def style-b $ merge style-a
  {}
    :font-size "|16px"
  if (> size 0)
    {}
      :font-weight "|bold"
```

The keys have to be keywords, the values can be either of keywords, numbers or strings.
Also I prepared a function called [`hsl`](https://github.com/mvc-works/hsl.clj) as a helper.

In Respo, style updates are defined with direct accessing to `el.style`:

```cirru
defn add-style (target op)
  let
      style-name (dashed->camel (name (key op))
      style-value (val op)
    aset (.-style target) style-name style-value

defn rm-style (target op)
  let
      style-name (dashed->camel (name op))
    aset (.-style target) style-name nil

defn replace-style (target op)
  let
      style-name (dashed->camel (name (key op)))
      style-value (val op)
    aset (.-style target) style-name style-value
```

For convenience, I collected my frequent used styles in a package called [respo-ui](https://github.com/Respo/respo-ui).
You can find more in the [source code][styles].

[styles]: https://github.com/Respo/respo-ui/blob/master/src/respo_ui/style.cljc

### Static Styles

A macro `respo.css/defstyle` has been added for add `<style>...</style>` referred with `:class-name`. It's less dynamic, which means you cannot pass parameters to styles in this way. It will insert into `<head>...</head>` a `<style>...</style>` element. It runs before `main!` and `reload!`.

![](https://user-images.githubusercontent.com/449224/165848778-5fb6e192-e1f3-426d-b387-e4ab7cb120c5.png)

define style:

```cirru
defstyle style-input $ {}
  "\"$0" $ {} (:font-size |16px)
    :line-height |24px
    :padding "|0px 8px"
    :outline :none
    :min-width |300px
    :background-color $ hsl 0 0 94
    :border :none
```

`$0` will be replace by a string of `className`. So if you want to add rules for `:hover`, just write `$0:hover`.

```cirru
input $ {} (:placeholder "\"Text")
  :value $ :draft state
  :class-name style-input
  :style $ {}
    :width $ &max 200
      + 24 $ text-width (:draft state) 16 |BlinkMacSystemFont
```

Internally, a definition of `respo.app.comp.task/style-done` generates className as `style-done__respo_app_comp_task`(with help of a new API `&get-calcit-running-mode`), so it's still unique across files and modules. During hot code swapping, the hashmap will be compared to previous hashmap to decide whether or not update.

Since it's not a GC-based solution, `<style>..</style>` created before hot code swapping remains in the DOM tree and will alway occupy memory. This solution is far from perfect, but it's supposed to cover current needs in Respo.

### Node.js rendering

During HTML rendering in Node.js , styles are collected in a list in `respo.css/*style-list-in-nodejs`. It's an unstable design but you can get styles from it.
