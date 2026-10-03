---
title: "Dispatch 类型槽：配置与当前迁移状态"
summary: "按 entry 配置应用 Op，了解尚未贯通的回调签名与 #195 的验证方式"
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
  - "d! enum shorthand"
---

# Dispatch 类型槽：配置与当前迁移状态

Respo 定义了 `respo.schema/*dispatch-op`，demo 的入口也配置了应用 Op。
**当前事件 handler、保存的 dispatch 函数及 wrap-dispatch 签名仍使用 Dynamic，
配置类型槽本身不能保证事件回调中的错误 Op 会被发现。** #195 正在迁移，
不应把配置成功或正常 demo 编译成功视为 typed dispatch 的验收。

## 每个 entry 单独配置

应用先定义 Op，再配置完整的 namespace/definition 路径：

```bash
calcit config set-type-slot :dispatch-op app.schema/Op
calcit config type-slots
```

命名 entry 不继承默认入口的配置；检查和生成 JS 应选择同一个 entry：

```bash
calcit config set-type-slot --entry test :dispatch-op app.test-schema/TestOp
calcit config type-slots --entry test
calcit --entry test --check-only
calcit --entry test js
```

需要开放边界时，可以明确配置 `:dynamic`。不要将它作为修复错误 Op 的办法。
入口绑定放在 config，不在 main! 中调用旧 bind-type，也不依赖
with-type-slot wrapper。不同 Calcit 版本的未绑定 slot 行为存在差异，
因此应检查所选 entry 的实际配置。

## 目前可检查的具体回调标注

下面展示直接标注应用 Op 的方式；需替换为项目实际类型路径：

```cirru.no-check
button $ {}
  :on-click $ fn (event d!)
    hint-fn $ {} (:return 'Unit)
      :args $ [] (:: 'Map 'Tag 'Dynamic)
        :: 'Fn $ {} (:return 'Unit)
          :args $ [] 'app.schema/Op
    d! $ app.schema/Op :clear
```

这只能证明该回调的调用约束，不能代替框架内的类型贯通。#195 还需要让
render!、保存的 dispatch、事件与 listener 保持同一个应用 Op，并验证
旧 cursor list、tag 调用的兼容性。不能通过放宽成 Dynamic 伪造验收。

## 可重复的迁移探针

在 Respo 源码仓库中运行：

```bash
CALCIT_BIN=/path/to/calcit-0.28.0 node scripts/probe-dispatch-boundary.mjs
```

可用 `CHECK_CALCIT_BIN` 指定候选编译器做检查；源码编辑仍由匹配项目 pin 的
0.28.0 完成。脚本在临时副本中使用 CLI 修改 demo 入口和 handler schema，
覆盖 map/struct props、错误 Number、合法 Op、旧 list/tag 及显式回调标注。
输出是调查结果，不是发布门禁的成功标记；临时副本结束后删除。

最新结果、对类型槽与泛型路线的约束见
[迁移调查记录](../../history/20261004-dispatch-boundary-probe.md)。

安装为模块后，可以通过 CLI 重读本指南：

```bash
calcit docs search 'typed dispatch' --module respo.calcit
calcit docs read type-slots.md --full --module respo.calcit
```
