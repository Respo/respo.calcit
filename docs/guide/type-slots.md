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
CALCIT_BIN=/path/to/calcit-0.29.0-alpha.6 node scripts/probe-dispatch-boundary.mjs
```

可用 `CHECK_CALCIT_BIN` 指定候选编译器做检查；源码编辑由与
`deps.cirru :calcit-version` 精确匹配的已发布 CLI 完成，脚本解析该声明并拒绝不匹配的 mutator。
脚本复制 Snapshot 与固定版本的 deps 到临时目录，使用 CLI dry-run、
`--expect-revision` 事务修改 demo 入口和 handler schema；根项目源码不变。
覆盖 map/struct props、错误 Number、合法 Op、旧 list/tag、显式回调标注
及泛型回调的 Op 转发/捕获。持有链探针另测递归节点、保存 dispatch 的 Ref、
泛型树 factory、保存整棵树后的 render 派发与两种应用 Op 混接，
并保留直接 Controller 构造的诊断。Props/Store 原型独立携带 Op 与状态类型，
检查 Number/String 状态的正确转发、错误状态写入及异类事件回调。
同一 Props/Store 原型还提供 type-slot 版本：复用树 Ref 持有链，保留独立
State 泛型，通过 entry 绑定固定 Op，以相同的五项输入比较泛型与槽路线。
组合调用还检查从前项 AppController 推断 Op，再传入带内联事件回调的 Props；
合法输入会实际执行，错误 Number 的诊断与正式版本的接受结果分别保存。
factory 正例是否被接受取决于 checker 的实际泛型推断能力；输出会保留失败，
不将旧 checker 的其他拒绝诊断视为名义 Op 关系已经贯通。
新增可变参数场景会为 d! 声明独立的 data rest 合同，比较合法 Op、额外 data、
旧 cursor/tag、错误 Number 和未知 variant；它区分参数个数错误与第一参数的类型错误。
正式 0.28 对这些 slot 调用的接受结果不能证明安全，需同时查看 Number 与未知 variant
反例。普通 raw props Map 的回调上下文仍未贯通。
输出包含每个场景的子进程端到端检查耗时（含启动与模块加载），是调查结果，
不是发布门禁的成功标记；临时副本结束后删除。

已发布 alpha.6 的实际检查与正例失败见
[发布版复查](../../history/20261005-dispatch-published-alpha6.md)。
此前正式 0.28 与本地候选的实验见
[迁移调查记录](../../history/20261004-dispatch-boundary-probe.md)。
内联 `hint-fn` 的 bare slot 与持久化 schema 的 quoted symbol 分别检查，
holder 的 `defstruct` 字段类型表达式也使用 bare `*dispatch-op`；持久化 schema
仍使用 `'*dispatch-op`，不能对两个输入位置套用同一种替换。
可变参数正例必须先通过，才检查合法 Op 与额外 data；该正例失败会使探针退出失败，
不会跳过反例检查后记作通过。legacy 失败需定位首参数。
holder 的输入位置修正与本地候选完整对照见
[slot holder 复查](../../history/20261006-slot-holder-inputs.md)。

安装为模块后，可以通过 CLI 重读本指南：

```bash
calcit docs search 'typed dispatch' --module respo.calcit
calcit docs read type-slots.md --full --module respo.calcit
```
