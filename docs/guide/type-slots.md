---
title: "Dispatch 类型槽：d! 只接受应用 Op"
summary: "按 entry 绑定应用 Op；d! 只收一个 Op；库组件发元组；什么位置会被检查"
scope: "module"
kind: "guide"
category: "ecosystem"
aliases:
  - "type slot"
  - "typed dispatch"
  - "dispatch op"
  - "dispatch-op"
entry_for:
  - "calcit config set-type-slot"
  - "*dispatch-op"
  - "d! migration"
---

# Dispatch 类型槽：d! 只接受应用 Op

Respo 定义了类型槽 `respo.schema/*dispatch-op`。`render!`、`render-with!`、
`realize-ssr!`、保存的 dispatch 函数和 `EventHandler` 的 `d!` 都引用它，
所以 `d!` 只接受一个参数，类型是当前 entry 绑定的应用 Op。Respo 在运行时
不再改写 op，原样交给应用的 dispatch。

## 每个 entry 绑定一次

```bash
calcit config set-type-slot :dispatch-op app.schema/Op
calcit config type-slots
```

命名 entry 不继承默认入口的绑定，需要各自配置：

```bash
calcit config set-type-slot --entry test :dispatch-op app.test-schema/TestOp
```

只有确实开放的边界才配置 `:dynamic`，它会关闭整个 entry 的 dispatch 检查。

## 发送 op

应用里用 Op 构造器或者普通元组都可以，元组按 Op 的变体检查：

```cirru.no-check
d! $ app.schema/Op :clear
d! $ :: :toggle task-id
d! $ :: :states cursor new-state
```

库组件拿不到应用的 Op 构造器，统一发普通元组。约定如下，应用的 Op
缺少对应变体时会在编译期报错：

| 用途 | 元组 | 应用 Op 需要的变体 |
| --- | --- | --- |
| 组件局部状态 | `:: :states cursor state` | `:states (quote (List Dynamic)) 'Dynamic` |
| reel 的 `comp-reel` 控制面板 | `:: :reel/toggle`、`:: :reel/recall idx` 等 | `:reel/toggle` `:reel/recall 'Number` `:reel/run` `:reel/step` `:reel/merge` `:reel/reset` `:reel/remove 'Number` |
| respo-router 的路由 handler | `:: :router/route route-map` | `:router/route 'Dynamic` |

alerts 的组件只发 `:states`，respo-ui 的组件转发调用方传入的 op。router 的 `listen!` 和 reel 的
`listen-devtools!` 调用的是应用自己传入的 dispatch 函数，不经过 `d!`。

## 从旧写法迁移

| 旧写法 | 新写法 |
| --- | --- |
| `d! cursor state` | `d! $ :: :states cursor state` |
| `d! :clear` | `d! $ :: :clear` |
| `d! :add text` | `d! $ :: :add text` |
| `respo.controller.client/wrap-dispatch` | 已删除，直接使用应用的 dispatch 函数 |

## 哪些位置会被检查

检查器需要知道回调的期望类型，才会给 `d!` 套上 Op 类型：

- 有 schema 的 handler 定义、`hint-fn` 标注过的回调、`DomProps` 等 struct 字段里的回调：会检查，写错类型的值、未知变体和旧的 cursor 简写都会报错。元组变体的参数个数和参数类型目前不检查，`:: :toggle 1` 也能通过。
- 普通 `{}` props map 里内联的回调：Calcit 目前不给 map 字面量的值提供期望类型，所以不检查。需要检查时，把回调提成带 schema 的定义，或者用 `hint-fn` 标注。

内联 `hint-fn $ Fn …` 与持久化 `quote $ Fn …` 中都使用类型槽名 `*dispatch-op`：

```cirru.no-check
:on-click $ fn (e d!)
  hint-fn $ Fn (Map Tag Dynamic) (Fn *dispatch-op (-> Unit)) (-> Unit)
  d! $ :: :toggle task-id
```

回调放进带类型的字段时（比如 respo-ui 组件的 `:on-change` 选项），可以用
`respo.core/dispatch-fn` 省掉这段标注。它展开成同样的 `fn` 和 `hint-fn`：
最后一个参数是 `d!`，类型是 `*dispatch-op`；前面的参数都是 `Dynamic`；
回调返回 `Unit`，body 的结果被丢弃。

```cirru.no-check
comp-input text $ Option :some $ InputOptions
  , :on-change $ Option :some $ dispatch-fn (value d!)
    d! $ :: :update task-id value
```

`d!` 仍然按 Op 检查：传错类型的值、不存在的变体都会报错。前面的参数是
`Dynamic`，需要更精确的类型时还是手写 `hint-fn`。最后一个参数总被当作 `d!`，
即使 body 不发 op 也要写上。这个宏依赖 entry 绑定了 `:dispatch-op`；没绑定时，
带类型的字段会拒绝这个回调。

`test/typed-dispatch.test.mjs` 在 demo 的 entry 上验证正例与反例，可以用
`yarn test-typed-dispatch` 运行。

## 编译器版本

当前模块需要 Calcit CLI 与 `@calcit/procs` `0.32.0` 配对。`0.30.1-alpha.4` 修复了 codegen 线程丢失 entry 类型槽绑定的问题（calcit-lang/calcit#2108，由 #2109 修复）：此前可能出现 `--check-only` 通过而 `calcit js` 报 `E_UNBOUND_TYPE_SLOT`。这只是历史背景，不表示当前模块兼容旧工具链。

迁移调查的过程记录保留在 `history/20261004-dispatch-boundary-probe.md` 等文件中。

安装为模块后，可以通过 CLI 重读本指南：

```bash
calcit docs search 'typed dispatch' --module respo.calcit
calcit docs read type-slots.md --full --module respo.calcit
```
