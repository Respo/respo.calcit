# #194 / #104：保留运行行为的名义类型访问器

审阅正式 alpha.7 的 strict proof 报告时，三个字段访问器的断言缺少输入证据：

| 访问器 | 原参数声明 | 新参数声明 | 框架调用来源 |
| --- | --- | --- | --- |
| component-effects | Struct | respo.schema/Component | mounting、unmounting、updating 的 Component 参数 |
| effect-args | Dynamic | respo.schema/Effect | Component.effects 中的 Effect，以及 nth / Option 提取的 Effect |
| effect-name | Dynamic | respo.schema/Effect | updating 中的 old/new Effect |

本轮只通过 CLI transaction、dry-run 和 revision 前置条件修改这三个参数
schema。原函数体、assert-type、字段读取及错误传播保留，原列表和回调不重建。
effect-args 的返回值仍是 List<Dynamic>；异构 effect payload 与 lifecycle
参数合同需要独立设计，不能从访问器的名义类型输入推导它们已封闭。

新增 `scripts/check-nominal-accessors.sh` 并接入 CI：正确的 Component/Effect
实际 native 执行，验证 effects 和 args 的原列表身份及 effect 名称；六个反例
分别传入 Number 或另一名义类型，必须在目标函数 arg 1 出现
W_FN_ARG_TYPE_MISMATCH，不能以运行时断言失败代替静态拒绝。

正式 alpha.6 的默认检查、23 个框架命名空间 325/325 定义检查、原有 native
106/106 测试及 effect traversal 的 JS 4/4 回归通过。JS 回归覆盖原 DOM
target 身份、异常、mount/unmount 顺序、空 child 和 callback 调用次数。

另用正式 registry alpha.7 执行三个定向 assert-type-proof-v1 审计：基线
f2f03d8 的三个访问器分别报告 E_ASSERT_TYPE_UNPROVEN；仅修改参数 schema
后，三个同范围审计均退出 0、无 diagnostics。这不是整个 strict workflow
验收；其余 identity facade、effect callable 和真实下游仍须继续验证。

源码 unsafeCoerce 保持 19，assert-type 保持 84；schemaDynamic 183 → 181，
typeNotFull 186 → 185，unresolved 209 → 207。仅下调两个 Effect 访问器
对应的质量预算及聚合预算；component-effects 不涉及 Dynamic 计数。没有
提高其他预算，也没有修改 core、js-ffi 或生产 type slot。

开放 Dynamic 输入现在需要调用方提供真实的 Effect / Component 证据。
不要通过未经证明的 identity facade 或新增 unsafe-coerce 满足该签名。
本轮未将旧 as-element/as-component/as-effect/as-listener 的开放返回声明
认定为类型证明，也未改变它们的运行时行为。
