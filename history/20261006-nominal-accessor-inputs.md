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

## 后续：字段访问器的剩余输入

继续审阅同一调用链，收紧七个参数 schema：component-name、component-tree、
component-listeners 接收 Component；element-event、element-attrs、element-style
接收 Element；listener-handler 接收 RespoListener。这七个函数的运行时代码与
断言同样不变。没有框架调用的 helper 由其字段所属的名义类型确定公共参数合同，
不以一次测试样本推断泛型或回调签名。

component-tree 保留 Option<Struct> 返回值；attrs/style 保留 List<List<Dynamic>>，
listener-handler 保留 Fn 返回值。它们的开放 payload / callable 不能通过参数
收窄自动获得更具体的合同。element-name 的调用方仍会读取兼容 Struct tree，
element-ref 则经过开放 purify-element 返回值，本轮没有用裸声明收窄这些输入。

同一检查脚本扩展为 20 个静态反例，以及 events/attrs/style/listeners 的容器
身份、Listener handler 身份、Element 与 Component 两种 tree payload 身份和
None tree 正例。正式 alpha.6 的默认与 325/325 框架定义检查、106/106 原有
native 测试、listener/event lookup/effect traversal JS 9/9 回归通过。

正式 registry alpha.7 的六个定向 assert-type-proof-v1 审计由基线
220c0e3 的 E_ASSERT_TYPE_UNPROVEN 变为零 diagnostics：component-name、
component-listeners、element-event、element-attrs、element-style、listener-handler。
component-tree 的审计仍失败，编译器要求独立审阅 producer render-node-value：
后者从 RenderNode 的 Element / Component 分支原样返回具体 Struct payload，
但 concrete-return-proof-v1 报 E_FN_RETURN_UNPROVEN，推断结果为 unknown。
这项仍是待解决的返回证据，不能把普通检查或身份回归通过当作 proof 通过。

可用固定正式 alpha.7 CLI 复查：

```sh
calcit fix --rule concrete-return-proof-v1 --ns respo.util.detect --def render-node-value --format json
calcit fix --rule assert-type-proof-v1 --ns respo.util.detect --def component-tree --format json
```

本批源码 schemaDynamic 181 → 175、typeNotFull 185 → 181、unresolved 207 → 201；
unsafe19/assert84 保持不变。仅下调对应定义和聚合预算。原始报告留在临时目录；
完整 strict workflow、typed dispatch 和两个真实下游的验收仍未完成。


## 后续：Effect method 的输入证据

完整 strict workflow 的诊断中，effect-method 的参数仍为 Dynamic，无法
证明对 Effect 的断言。本轮将参数声明为 respo.schema/Effect；函数体、
assert-type、字段读取和 Fn 返回合同保持原样。该 getter 不会为异构
effect payload 或 lifecycle callback 建立更具体的调用合同。

既有检查脚本扩展为 22 个静态反例，新增 Number / Component 对
effect-method 的调用参数拒绝，并确认返回原有 method 对象。正式 alpha.6
的默认与 325/325 框架定义检查、106/106 native 测试、相关 effect/listener
JS 回归和 quality 通过；正式 registry alpha.7 的同范围
assert-type-proof-v1 审计从 E_ASSERT_TYPE_UNPROVEN 变为零 diagnostics。

源码 schemaDynamic 175 → 174、typeNotFull 181 → 180、unresolved 201 → 200；
unsafe19/assert84 保持。该定义的三个预算从 1 降为 0，聚合预算分别降为
178 / 182 / 206，其余预算保持原值。完整严格迁移与真实下游仍未验收。
