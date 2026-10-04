# #195：dispatch 边界的可重复调查

本次先落实 issue 的反例与路线调查。生产签名及运行时未修改，#195 尚未完成。
`scripts/probe-dispatch-boundary.mjs` 将当前快照复制到自建临时目录，链接只读
依赖，通过正式 0.28.0 CLI 修改 demo main!/reload! 和候选 EventHandler
schema，再执行严格检查；结束删除副本。每个场景从当前源码重新复制，
检查 entry 仍绑定 respo.app.schema/Op，不复用上一个场景的变更。

## 实测结果

正式 0.28.0 和本地候选 0.29.0-alpha.1 分别检查同一批 CLI 生成的输入。

| 场景 | 正式版 | 候选版 |
| --- | --- | --- |
| 当前 EventHandler + struct props，d! 42 | 接受 | 接受 |
| 当前 EventHandler + map props，d! 42 | 接受 | 接受 |
| 仅将 EventHandler 的 dispatch 参数改为 `'*dispatch-op`，struct props，d! 42 | 接受 | 拒绝于 struct 字段边界 |
| 同一原型，map props，d! 42 | 接受 | 接受 |
| 同一原型，struct props，合法 `Op :clear` | 接受 | 拒绝于 struct 字段边界 |
| 同一原型，struct props，旧 cursor list/tag | 接受 | 拒绝于 struct 字段边界 |
| 回调 hint-fn 直接声明 `'*dispatch-op`，d! 42 | 拒绝 | 拒绝 |
| 同一 hint-fn，合法 `Op :clear` | 拒绝 | 拒绝 |
| 同一 hint-fn，旧 cursor list/tag | 拒绝 | 拒绝 |
| 回调 hint-fn 直接声明具体 `respo.app.schema/Op`，d! 42 | 拒绝于 d! 调用处 | 拒绝于 d! 调用处 |
| 同一具体标注，合法 `Op :clear` | 接受 | 接受 |
| 同一具体标注，`:: :not-an-op` | 拒绝 | 拒绝 |
| 回调 hint-fn 使用 bare `*dispatch-op`，d! 42 | 拒绝于 d! 调用处 | 拒绝于 d! 调用处 |
| 同一 bare 标注，合法 `Op :clear` | 接受 | 接受 |
| 同一 bare 标注，旧 cursor list/tag | 拒绝于 d! 调用处 | 拒绝于 d! 调用处 |

探针共 18 个场景。明确检查具体 Op 的合法值作为正控制，错误 Number 作为
负控制；脚本断言负控制诊断包含 d! 调用及 respo.main/main!，避免将环境
失败或任意报错误计成类型检查成功。其他结果用于观察，不能当作发布门禁。

直接标注 slot 的诊断仍显示 `'*dispatch-op`，合法 enum Op 也被拒绝；这与
成功约束应用 Op 的要求不一致。尝试 bare `*dispatch-op` 时，正式 CLI 的
schema EDN 校验拒绝该 token，未写入源码。单独在 hint-fn 的 AST 中使用 bare
`*dispatch-op` 则能正确接受合法 Op、拒绝 Number。这将缺口缩小到 schema
输入/引用的归一化与后续传播；不能用“错误值被拒绝”单独证明该路线可用。
正确识别 slot 后，旧 cursor list/tag 也会被拒绝，兼容输入必须独立验证。

## 两条路线的比较与下一步

| 路线 | 必须贯通的位置 | 当前证据与不足 |
| --- | --- | --- |
| 现有 type slot | handler/listener、保存的 dispatch Ref、render 入口、wrap-dispatch；以及 props 到回调的推断 | bare hint-fn 正负控制有效，但单改一处 EventHandler schema 不足；map 反例仍通过，候选还会拒绝合法 struct 回调。需要解决 schema slot 解析和回调推断，再贯通旧调用的兼容约束。 |
| 泛型 Op | render、handler/listener、持有它们的 Element/Component/RenderNode、Ref 与回调生产者 | 需要在整条持有关系传递同一个 Op，不能仅给 helper 加一个未约束泛型。尚未完成该原型，不能声称标注量或诊断效果优于 slot。 |

尚未选定最终路线。具体应用 Op 的正负控制证明基础调用检查可用，但不是
以手写具体标注替代完整框架迁移。下一步缩小 slot 标注及 callback alias
问题，再评估能同时通过合法值、错误值、map/struct props 和旧调用的方案。
runtime wrap-dispatch 的旧 list/tag 转换仍保留，不能以类型声明删掉这项兼容。

## 文档修正与复现

此前 type-slots 指南与 Respo-Agent 写着“绑定 slot 即可检查事件 d!”；
当前实际签名与上表反例不支持该描述。本次改为中文为主的配置/状态指南，
注明迁移尚未完成，保留逐 entry 的配置方式并给出具体回调标注的实际范围。

```bash
CALCIT_BIN=/path/to/calcit-0.28.0 node scripts/probe-dispatch-boundary.mjs
CALCIT_BIN=/path/to/calcit-0.28.0 CHECK_CALCIT_BIN=/path/to/candidate-calcit node scripts/probe-dispatch-boundary.mjs
```

结果 JSON 只留在临时目录；没有提交大快照或生成 JSON。尚未向 calcit#1555
发布结论，当前也没有完成其所需的路线对比数据及 #195 的下游整体验收。

## 后续：本地候选的 quoted slot 解析修复

上表记录的是修复前的候选；后续在编译器解析器统一 quoted symbol、quote
表达式与 bare slot 身份，再对同一 18 个场景复跑。修改后
annotated-slot-valid-op 已通过，annotated-slot-number 在 d! 调用处拒绝；
quoted hint-fn 与 bare hint-fn 的四个结果全部一致。

编译器库测试 952 项通过、一项既有 ignored；Respo 默认严格检查与原有
96 项 native 通过。本地编译器修复提交 fe94903f；完整 cargo test 为
1,583 passed、0 failed、一项既有 ignored，fmt/clippy 通过。明确指定候选
CALCIT_BIN 后完整 check-all 通过，覆盖 TS、Agent 协议与 native/JS/WASM。
这项候选修复尚未发布，Respo 的 0.28 pin 和生产签名保持原样。

slot-struct-valid-op 仍在 DomProps 字段边界被拒绝，slot-map-number 仍通过。
接下来分别处理 handler alias 的类型关系与 map props 的回调推断，再贯通
wrap-dispatch 的 typed/legacy 调用合同。quoted hint 的修复不是 #195 完成标记。

## 后续：同名槽的回调组合

合法 struct handler 误报进一步缩小为两个相同的 Fn(*payload)->Unit
回调组合：绑定存在，但证明第二次展开同名槽时触发递归守卫。候选编译器
改为在一次守卫内比较实际绑定与自身，仍验证绑定、不按槽名字直接放行。

现有 type-slot fixture 附带的 Calcit :tests 在修复前只报同签名回调不匹配，
修复后 1/1 通过，strict-default 已调用该测试并要求非空选择。Rust 内部
循环/未绑定/显式 Dynamic 边界回归仍通过，库测试 953 passed、一项 ignored。

18 个同一探针中 slot-struct-valid-op 已通过，slot-struct-number 仍拒绝，
其余结果与 quoted slot 修复后一致；Respo 原有 96/96 native 与默认严格检查
通过。下一步重点是 map props 的上下文传播和旧 list/tag 的合法调用合同，
再与贯通持有关系的泛型路线比较。未将 probe 改成发布 gate，也未更新正式 pin。

本地编译器提交 bc0d4556；完整 cargo test 1,584 passed、0 failed、一项既有
ignored，fmt/clippy 与完整 check-all 通过，Agent CLI 53/53；core 与
native/JS/WASM、FFI、literal-paths、typed-method 回归通过。候选尚未发布。

## 后续：泛型回调中的 Op 身份

探针增加四个泛型场景，总计 22 个。最小 handle 用一个 Op 参数与
Fn(Op)->Unit 回调关联同一个类型，调用处给它真实应用 Op 及应用 dispatch。

| 泛型函数体 | 本地修复前候选 | 修复后候选 |
| --- | --- | --- |
| d! op：转发输入 Op | 接受 | 接受 |
| d! 42：凭空创建 Number | 接受 | 拒绝，定位到 d! arg 1 |
| d! ([] :field) :value | 接受 | 拒绝，定位到 d! arg 1 |
| d! :clear | 接受 | 拒绝，定位到 d! arg 1 |

修改前的“兼容”只是回调调用把外层 Op 重绑定为 Number/List/Tag，不能
计作有效的泛型路线。候选修复将局部回调推断限制为它自己声明的 generics，
捕获的外层 Op 固定；局部泛型 identity 仍能按两次调用分别推断 Number/String。
固定、嵌套 List 与 rest 参数都有负例，实际泛型 Op 转发有 Calcit :tests。

本原型的 handle 有一处 :generics 声明、两个关联参数位置，并有一处应用
dispatch 的具体 Op 标注；slot 原型改 EventHandler 一处并使用已有 entry
绑定。它们只比较最小回调合同，未统计整个渲染/事件/Ref 持有链的迁移量，
不能从这些局部数量推断整条路线的标注成本。

两条路线目前均可在明确 Op 合同时拒绝 Number，也均拒绝旧 list/tag。
rest Dynamic 只能容纳附加 data，不能令第一个 Op 同时接受 legacy 输入。
普通 map props 的错误值仍通过，公开 PropsInput 泛型与归一化后的
Map<Tag,Dynamic> 没有提供事件字段的 dispatch 上下文。下一步仍需解决
这些接口合同与泛型持有链原型；生产 schema、正式 pin 与运行时语义未迁移。

加强检查暴露 core Map helper 的 K/V 丢失，候选已改用现有 MapDestruct<K,V>
传递 key/value；没有放宽捕获的 Op。相关 native/JS 共享回归通过。

随后 bundled core 严格源码检查暴露 update-in 原有 Option<T> 合同缺少
叶子证据。动态路径的回调输入修正为 Option<Dynamic>，独立返回 U；
实现与缺失路径行为保留。core 公共检查 639/639，冻结 API 基线通过。
定义附带用例覆盖叶子变更类型、空路径和缺失路径，并复用 native/JS 回放。

最终候选的 Respo 默认严格检查及 96/96 native 通过，22 个探针保持上述
结果。真实 Diary 客户端严格检查和 JS 生成通过，initial/offline/login
三种 SSR 内容断言通过。Respo 文档 83 文件、118 代码块通过。
编译器 fmt/clippy 与完整 Rust 测试 1,584 passed、0 failed、一项既有
ignored。Agent CLI 53/53、core 451/451、冻结 API 基线、native/JS/IR
通过。更新 Dynamic 分类清单后，剩余门禁逐阶段通过；WASM 显式指定 debug
候选后通过，literal-paths 与 typed-method 检查通过。初次完整命令因清单
过期退出1，默认 WASM 脚本选中旧 release 的六项失败不计作候选结果。
本地编译器提交 5727cec1，候选未发布，未将其计作正式发布成果。

## 后续：泛型递归树与持有关系

现有探针追加隔离持有图，总计 30 个场景。正式 0.28 CLI 在临时 Snapshot
增加 A/B 两个不同的应用 enum（都含 :clear），删除入口 dispatch-op 绑定；
checker 仍显式指定候选。生产框架的 schema 和运行代码未修改。

原型以四个泛型名义类型表示 Controller<Op>、Element<Op>、Component<Op>
和 Node<Op>：Controller 保存 Ref<Fn(Op)>，Element 保存事件 Map 与子节点，
Component 保存 Option<Node<Op>>，Node 连接 Element/Component。wrap-dispatch、
deliver、make-controller、make-tree 各声明自己的 Op，回调捕获该关系。
make-tree 的明确返回 Node<Op> 为调用处提供证据。完整持有尝试另加
Controller.tree: Ref<Option<Node<Op>>> 与泛型 render!，在保存后读取树并派发。
这些名字只用于实验，没有增加对用户公开的替代 renderer。

| 场景 | 5727cec1 的默认严格检查 | native |
| --- | --- | --- |
| 直接构造递归树，dispatch 与 handler 都是 A | 接受 | 正确交付 A |
| 回调里 d! 42 | 拒绝，定位到 d! arg 1 | 未运行 |
| 直接构造 A 树，Controller 是 B | **错误接受** | B 回调内检查 enum definition，收到 A，断言失败 |
| 直接构造 B handler，Controller 是 A | **错误接受** | 未运行 |
| 直接构造 Controller 的 Ref<Fn(A)> 字段 | **误报拒绝**：期望 Ref<Fn(Op)> | 未运行 |
| make-tree 返回 Node<A>，Controller 是 A | 接受 | 正确交付 A |
| make-tree 返回 Node<A>，Controller 是 B | 拒绝，deliver arg 2 期望 Node<B>、实际 Node<A> | 未运行 |
| Controller 同时保存 Ref<Option<Node<Op>>> | **误报拒绝**：期望和实际打印为同一类型 | 未运行 |

正例验证 Element → Component → Element 的递归持有、读取 Ref 中的 dispatch、
包装回调和真实 handler 调用。跨 A/B 反例比较 enum definition 的字符串，
不是只比较相同 tag/payload，避免值相等语义把名义差异掩盖。

原型暴露两个不同位置的证据问题：直接树构造未把 Op 关系传到调用处，而
明确返回类型的树 factory 可恢复它；Ref 包住含泛型的递归 Option/Node 后，
相同类型的构造证明又被拒绝。前者不能把“正常树通过”计作跨持有链安全，
后者仍阻止完整 render 持有原型通过。两种情况均保留在现有探针输出，
没有加入 unsafe、改成 Dynamic 或删除完整失败用例。

标注成本目前只覆盖此图：四个泛型名义声明，四个泛型函数声明；完整尝试
还需要第五个泛型函数 render!，以及空树 Option 的显式类型。Controller
与 tree factory 各是一处额外推断边界。它尚未覆盖全部 DOM diff/patch、
组件 listener、普通 map props 的归一化与旧 list/tag 合同，不能作为整仓
迁移量，也不能据此选择最终路线。下一步修复递归泛型在构造与 Ref 中的
证明，再扩展生产传递链并比较实际迁移成本。

同一脚本也用正式 0.28 checker 跑完 30 个场景：直接树的 A/B 混接仍
错误接受，直接 Controller 构造接受；树 factory 正例因 Controller<dynamic>
进入 Controller<A> 被拒绝。因此其 factory 混接拒绝不能算作正确的名义
关系检查。候选的 factory 正例与混接负例两者都有证据，完整 tree Ref
仍误报。脚本保留这些差异，只有已接受的 factory 正例才要求 native 通过。

输出增加 checkElapsedMs（全部场景）和 nativeElapsedMs（执行的场景），
记录子进程端到端耗时，包含启动、模块加载与检查。正式 release 与候选
debug 的构建方式不同，结果只能用于本次复现记录，不作编译器性能比较。
JSON 保留在临时目录，仓库只保存生成该证据的源码。
