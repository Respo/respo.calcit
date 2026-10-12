---
title: "DOM elements"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "dom elements"
  - "html elements"
  - "query-selector"
  - "挂载节点查询"
entry_for:
  - "element syntax"
  - "create dom"
---

## DOM elements

### 查询真实 DOM 挂载节点

应用使用 `respo.ffi.browser/query-selector` 查询浏览器 `document`，返回
`Option<respo.dom/DomElement>`。命中时保留元素身份，无结果返回 `Option :none`。
调用方通过 `match` 决定是否挂载，或在必须存在的挂载点显式 unwrap。

```cirru.no-run
ns app.main $ :require
  respo.ffi.browser :refer $ query-selector
  respo.core :refer $ render! defcomp div

let
    comp-app $ defcomp comp-app () $ div ({})
  match (query-selector |.app)
    (:some element)
      render! element (comp-app) $ fn (op) &unit
    (:none) (raise |Missing-app-mount)
```

原先使用 `js-ffi.browser/query-selector` 的 Respo 应用可将查询 import 改为
`respo.ffi.browser`，保留原有 Option 处理；不要在应用侧强转两个库不同的 DOM trait。
此函数复用 Respo 既有 `narrow-element` 宿主信任边界，不克隆元素、不添加属性，也不逐字段
验证完整 `DomElement`。它只完成查询，不创建节点或执行渲染。

可通过 `calcit query def respo.ffi.browser/query-selector` 查询签名与说明。

#### 限制

- 该入口需要浏览器 document，无效选择器及缺少 document 的宿主错误继续抛出。
- SVG 查询保留 SVG 元素身份；具体渲染能力仍按 Respo renderer 的合同验证。

**📚 Documentation Index**

- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Base Components](./base-components.md) | [Virtual DOM](./virtual-dom.md) | [Component States](./component-states.md)

An element is defined with `respo.core/create-element` like:

```cirru
defmacro a (props & children)
  quasiquote
    create-element :a ~props ~@children
```

Where `children` comes with keys since Respo always need keys(in keyword, string, or number) to compare children:

```cirru.no-check
[]
  [] 1 (span $ {})
  [] 2 (span $ {})
```

And an element created like:

```cirru.no-check
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

```cirru.no-check
{}
  :name tag-name
  :coord nil
  :attrs attrs
  :style styles
  :event event
  :children children
```

Some of the frequently used elements are defined in `respo.core`:

```cirru.no-check
a body br button canvas code div footer
  h1 h2 head header html hr img input li link
  option p pre script section select span style textarea title
  ul
```

Some are not, but you can create them very quickly with `respo.core/create-element`. For details, run `calcit query def respo.core/create-element`.
