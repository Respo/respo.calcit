---
title: "Virtual DOM"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "virtual dom"
  - "vdom"
entry_for:
  - "element tree"
  - "virtual nodes"
---

## Virtual DOM

**📚 Documentation Index**

- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
- [All Guides](./): [Why Respo](./why-respo.md) | [Base Components](./base-components.md) | [Component States](./component-states.md) | [Styles](./styles.md) | [Events](./dom-events.md)

There are elements and components before they are actually rendered. After rendering, all elements have specific definitions:

```cirru.no-check
defrecord Element :name :coord :attrs :style :event :children

defrecord Component :name :effects :tree

defrecord Effect :name :coord :args :method
```

`coord` means "coordinate" in Respo, it looks like `[] 0 1 3` or even `[] 0 0 0 :container 0 0 "|a"`.

If you define component like this:

```cirru.no-check
div
  {}
    :style $ {}
      :color "|red"
    :class-name "|demo"
    :on-click $ fn (e dispatch!)
  div $ {}
```

You may get a piece of data in Calcit-js:

```clojure
#respo.core.Element{:name :div,
                    :coord nil,
                    :attrs ([:class-name "demo"]),
                    :style {:color "red"},
                    :event {:click #object[Function "function (e,dispatch_BANG_){
                                                       return null;
                                                     }"]},
                    :children [[0 #respo.core.Element{:name :div,
                                                      :coord nil,
                                                      :attrs (),
                                                      :style nil,
                                                      :event (),
                                                      :children []}]]}
```

You may have noticed that in `children` field it's a vector.
There is a `0` indicating it's the first child.
And yes internally that's the true representation of children.

As I told, virtual DOM is normal Calcit-js data,
you can [transform the virtual DOM][transform] in the runtime:

[transform]: https://github.com/Respo/respo-border/blob/master/compiled/src/respo_border/transform/border.cljs

```cirru.no-check
defn interpose-borders (element border-style)
  if (contains? element :children)
    update element :children $ fn (children)
      interpose-item ([]) 0 children
        hr $ {}
          :style $ merge default-style border-style
```

This demo inserts borders among child elements. You can think of more.

## 名义类型 helper 与开放输入

`element-name` 和 `coerce-element` 接收 `respo.schema/Element`，
`coerce-component` 接收 `respo.schema/Component`。两个 `coerce-*` helper
只是返回原值，不承担运行时校验，也不会复制字段、children 或 ref。
错误的具体类型和未经验证的 Dynamic 输入应在调用处被拒绝。

`purify-element` 仍保留原有开放入口、nil 及未知 markup 的行为。需要把它的
结果传给具体 Element 合同时，先用 `as-element` 做运行时名义类型校验；
不要用另一个 `assert-type` 将开放返回值直接当作已验证的 Element。

```cirru
ns app.demo $ :require
  respo.core :refer $ span
  respo.util.detect :refer $ as-element element-name
  respo.util.format :refer $ coerce-element purify-element

let
    element $ span $ {} $ :inner-text |ready
    purified $ as-element $ purify-element element
  assert |keeps-original-identity $ identical? element $ coerce-element element
  assert= :span $ element-name purified
```

SSR 的 `make-string` 与 `realize-ssr!` 在净化后使用同一校验边界；合法
Element/Component 的净化顺序、HTML 内容、事件与 ref 清理方式保持不变。
应用从开放宿主数据获得 Component 时，可使用 `as-component` 校验后再调用
`coerce-component`，而已经具有名义类型的值可直接调用 helper。

`purify-element-node` 同样要求具体的 Element；开放 markup 继续使用
`purify-element`。`element-ref` 接收 Element，返回 `JsNullish<Fn>`，与当前
Element 字段一致：它保留原回调身份，不承诺该字段尚未证明的参数类型或 Unit
返回值。需要具体回调签名的应用应在创建回调的边界保留自己的类型合同。

`purify-events` 的事件名必须为 Tag。沿用 `non-nil?` 的规则：nil 被过滤，
JS undefined 的 key 仍保留。
它先过滤再校验留下的 key，不把 String key 转换成 Tag，也不检查或改写 handler。

### HTML 键值对边界

`respo.render.html/coerce-pairs` 现在是 `Fn<Value> (Value) -> Value` 的泛型恒等
helper：保留输入的类型和对象身份，不提供键值对结构证明。已有代码可以继续
调用它，混合成员和空列表均保留；不能用它将开放数据声明为键值对列表。

HTML 的开放 `:style` 值先经过 `respo.util.list/checked-pairs` 检查外层和每个
成员都是 List，再进入 `style->html`。成员值、顺序、空列表及既有样式转换规则
保留；该检查不增加“必须两项”的长度约束。具有 `Map<Tag, Dynamic>` 类型的
props 直接使用 `&map:to-list` 的结果，无须再次断言。
