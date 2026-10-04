# 回调类型边界进度（#218）

基线：Respo main `b94962e`。本工作区独立于用户的 `feat/render-node-types-194`
checkout，未改动其中未提交的 RenderNode 设计。

## 已实现

`respo.util.detect/expect-function` 的入参和返回值使用同一个泛型 `Callback`，
保留传入函数的具体参数、返回类型和对象身份。函数体、运行时验证和错误消息不变。
开放 Dynamic 输入仍需在业务边界建立具体合同，泛型不会凭空证明签名。

泛型名使用 `Callback`，避开调用方 `for-keyed` 的泛型 `T`；当前编译器对同名
泛型的推导会使其局部回调被误认为不可调用。现有 keyed 测试覆盖该调用链。

新增 definition-attached 正控制验证 Number → Number 回调的身份与调用结果；
负控制验证非法值仍抛出指定消息。独立 scratch 将该回调参数换为 String，正式版
和候选版均以 `W_LOCAL_FN_ARG_TYPE_MISMATCH` 拒绝，避免把模块加载错误当作类型拒绝。

## 验证

- 正式 Calcit 0.28.0：76/76 原生测试通过。
- 候选编译器 `8e42f4a1`（版本字段 0.28.0，未发布）：69/76 通过。
  修改前为 66/74；恢复了原有 effect-on-update 生命周期测试，新增两项均通过。
- 正式编译器生成 JS，事件配置、SSR、memo 共 11 项 Node 回归通过；质量门禁通过。

## 尚未完成

#218 尚有 nullable event、ref 回调及事件表具体签名需要处理。候选版仍失败的七项：

- create-list-element：ignores-new-nil-child、replaces-and-removes-nil-children
- collect-event-refreshing：skips-nil-children-and-handlers
- find-element-diffs：clears-old-ref-before-setting-new-ref
- collect-mounting：runs-ref-mount-and-unmount-lifecycle
- make-string：serializes-component-root-after-muting-option-tree
- mute-element：clears-events-through-component-tree

这些失败继续按 #218 / #194 分别追踪，不能据正式版通过宣称候选版或类型迁移完成。
RenderNode / ChildPair 全量迁移、两个真实下游回归、dispatch 类型生效和动态告警复查
仍属于 0.19.0 milestone 的未完成工作。

## nullable event 与 ref 合同续进

通过 CLI 将 `Element.event` 和 `element-event` 如实声明为
`Map<Tag, JsNullish<EventHandler>>`。已有 raw Element 测试刻意保存 nil handler，
事件遍历已经在交付前排除 nil；本次只改声明，不删除这些业务样例或扩大为 Dynamic。
既有五个 attached 测试的 ref/event 回调补全实际参数与 Unit 返回签名，保留原测试
名称、unit 标签、执行内容和预期。ref 仍接收 JsNullish<DomElement>，事件仍接收
事件 map 与 dispatch 回调，无用参数明确忽略。

正式 Calcit 0.28.0：76/76 原生测试通过；真实生成 JS 的事件配置与 SSR 共八项
Node 回归通过，严格编译、规范格式与质量门禁通过。

重新在独立只读源码副本构建 Calcit main `b10dcad1`（0.29.0-alpha.1），回放为
71/76：clears-old-ref-before-setting-new-ref 与 runs-ref-mount-and-unmount-lifecycle
恢复通过。没有复用旧二进制假冒最新 main。

剩余五项：两项 create-list-element、collect-event-refreshing 的 nil handler、
make-string 的事件表、mute-element 的事件表。最新诊断仍包含 nullable Map 的
字段证明缺口、ref 创建边界的 Dynamic 合并、子节点累积，以及 Option<Never> 的
recur 约束。并非这些字段已完成迁移。

独立 scratch 将 EventHandler 展开为精确 Fn，仍拒绝如下合法合同转换：

```cirru.no-check
; immutable Map<Tag, Fn(Map<Tag,Dynamic>, Fn(Dynamic)->Unit)->Unit>
; 应可用于 Map<Tag, JsNullish<相同 Fn>>，当前字段 proof 拒绝。
```

诊断为 W_FN_ARG_TYPE_MISMATCH，明确指出 :event 字段；所以不是模块加载失败或
单纯别名未解析。此处不添加 unsafe-coerce、宽化 Dynamic 或删除 nil handler 来通过。
继续完成共享类型关系与真实开放创建边界后，再做 DOM/SSR 与两组下游最终回归。

## ref 创建边界与独立回放

新增内部 `normalize-ref`，集中两个创建入口原有的验证，返回
`JsNullish<Fn(JsNullish<DomElement>)->Unit>`。泛型 `RefInput` 保留输入证据；
函数身份、nil 行为、验证顺序和两个入口各自的错误消息不变。
两项 attached 测试覆盖合法 callback/nil 和非法值的实际报错。

本次精确源码回放：正式 0.28.0 原生 78/78、质量门禁通过；重新生成 JS 后
事件配置、nullish props、SSR、keyed、memo、patch lookup 共 28 项通过。
DOM host smoke 通过，覆盖事件安装、SSR ref 与事件、组件坐标和 paste 合同。

候选编译器基于 `b10dcad1`（0.29.0-alpha.1，未发布），另含尚未提交的
nullable 集合字段证明修复，使用独立 target 构建：78 项中 76 项通过，
#218 原先暴露的五项全部恢复。剩余两项 create-list-element 测试属于 #194：
children 累积得到 Dynamic，以及 loop 的 Option<Never> 初值无法接收
Option<Number> 的 recur。候选版 DOM JS 编译仍被这三处诊断阻断。

编译器正例已在 native 和同源码生成的 0.29.0-alpha.1 JS runtime 回放，
两种 Struct 构造语法的错误 payload 反例准确报告字段诊断。此前临时 target
含共享软链接，容易被其他构建替换；以上结果以独立目录重跑为准。
候选修复尚未发布，不能将这些结果归于上游 main，也不能宣称 #218 或
整个 0.19.0 milestone 已完成。

## 循环证据与完整 demo 回放

`create-element` 的子节点累积循环通过 `hint-fn` 声明实际入参和返回类型，
保留每个 child 的验证、原索引及 nil 过滤顺序。两个以空 Option 开始的循环
明确初值为 `Option<Number>`，避免把后续索引固定成 `Option<Never>`。
这只恢复当前结构的证明；子节点仍是旧的 `List<List<Dynamic>>`，没有据此
宣称 RenderNode / ChildPair 迁移完成。

完整 demo 编译另外暴露 `effect-focus` 和 `effect-log` 返回 nil；两者在原有
副作用之后明确返回 Unit，与 `Effect.method` 的声明一致。

以上源码在正式 0.28.0 和包含本地 nullable 集合修复的候选 0.29.0-alpha.1
分别通过 78/78 原生测试、重新生成 JS 后的 28 项 Node 回归，以及 DOM host
smoke。候选 JS 使用同一编译器源码生成的 runtime，正式 JS 使用 0.28.0
runtime。正式质量门禁通过，没有扩大预算。

编译器修复已保存在本地提交 `30874465`，尚未发布。全量 Rust 测试、clippy、
TypeScript 编译已通过；`yarn check-all` 在 Agent interface 的迁移报告检查处
失败：两个项目定义实际报告 `E_CALL_ARGUMENT_MISMATCH`，脚本预期
`W_FN_ARG_TYPE_MISMATCH`。独立重建未经修改的 `b10dcad1` 后，三条诊断与修复版
完全相同。测试预期已在本地提交 `3bd2d5bb` 精确更新，剩余集成门禁重新运行；
不能将整个编译器验证视为完成。已完成的 known assertion 与 spread 回归通过。

另一个 scratch 以 Number 单参函数调用 `build-effect`，正式与候选编译器均报告
`W_FN_ARG_TYPE_MISMATCH`，指向调用第三个参数；确认保留泛型 callback 并未放开
生命周期 method 的 arity 与参数合同。

## #194 计数基线

通过 `query search` 的结构化 AST 结果统计 project definition 的 `code@` 路径，
排除依赖模块、schema、doc、examples 和 attached tests；保留宏模板及项目测试
命名空间的定义代码。`b94962e` 为 124 处 `assert-type`、41 处 `unsafe-coerce`，
当前为 125、41。新增的初值合同尚未带来 #194 要求的整体下降。

当前主要区域：

| 命名空间 | assert-type | unsafe-coerce |
| --- | ---: | ---: |
| respo.render.diff | 38 | 1 |
| respo.render.patch | 11 | 4 |
| respo.render.effect | 2 | 0 |
| respo.render.html | 2 | 0 |
| respo.core | 19 | 3 |
| respo.cursor | 2 | 12 |

完整逐项消除表、RenderNode / ChildPair 字段迁移、Tag/String cursor 合同及
Calcium / TopixIM 两组真实下游回归仍需完成。

## 编译器门禁续记

诊断预期更新后，Agent interface 53/53、后续 native / JS / IR 门禁均通过。
WASM 脚本优先选中了缓存的 0.28.0 release 二进制，引起六个 remainder trap
失败；显式指定本次独立构建的 debug 0.29.0-alpha.1 后全部 WASM 检查通过。
literal-paths 与 typed-method-rem 最后两组门禁也通过。

远端 main 随后合并 #1739（`13c4cf75`），包含诊断编号修复及额外消息、位置
断言。本地编译器分支已 rebase 到该版本，重复测试提交被移除；剩余提交为
`18899359`，只包含 nullable 集合字段证明、对应正反例和中文文档。增强后的
Agent interface 正在重跑。对外发布需要用户授权，PR 草稿已在本地准备好。

## 回调签名的持续门禁

此前临时 scratch 中的静态反例现已保存为
`test/callback-type-boundaries.test.mjs`，并通过 `yarn test-callback-types` 加入 CI。
测试直接依赖当前项目 Snapshot，不复制 guard 或 effect 实现，不修改 Snapshot。

两项正控制检查 guard 保留回调对象身份、Number 入参/返回值，以及 effect 接受
实际的两个 List 参数和 Unit 返回值。四项负控制分别检查 guard 后的错误 String
入参，以及 effect 的错误 arity、错误参数类型和错误返回值。
负控制同时要求非零退出、具体诊断编号、目标调用/参数及实际类型，
并确认未进入执行阶段；模块加载或语法错误不能冒充类型拒绝。

正式 `0.28.0` 与本地 `43bd603b` 候选 `0.29.0-alpha.1` 均为 6/6。
这六项检查只覆盖上述静态回调边界；已有 native、生成 JS、SSR 与 DOM
测试仍承担其各自范围的验证，不将新增门禁视为整个 milestone 已完成。
