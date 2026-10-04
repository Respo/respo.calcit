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

## 泛型证据修复后的 31 场景复查

候选编译器 `1c9902db` 进一步修复断言解析的词法泛型与空 Struct 字段的推断。
完整树 Ref 探针增加跨 Op controller 反例，共 31 场景：

| 场景 | 默认严格检查 | native |
| --- | --- | --- |
| 直接 A 树与 A controller | 接受 | 通过 |
| 直接 A 树与 B controller | 拒绝 | 未运行 |
| 直接 B handler 与 A controller | 拒绝 | 未运行 |
| factory A 树与 A controller | 接受 | 通过 |
| factory A 树与 B controller | 拒绝 | 未运行 |
| render 保存并读取 Ref<Option<Node<Op>>> | 接受 | 通过 |
| render A 树与 B controller | 拒绝 | 未运行 |
| 直接构造 Controller 的 Ref<Fn(A)> 字段 | 仍误报拒绝 | 未运行 |

这补齐了递归持有链的正例与跨 Op 负例，尚未覆盖生产 DOM diff/patch、
listener、普通 map props 与旧 list/tag 合同。生产 schema 与工具链 pin
仍维持当前版本，最终路线继续由完整迁移和实际标注成本决定。

本轮下游回归：Respo 默认入口检查与 96 项 native 测试通过；Diary
默认严格检查、JS 生成与加载、离线、登录三种页面 SSR 通过，断言内容
和组件身份。编译器完整 Rust 测试 1584 passed、0 failed、1 既有 ignored；
新增持有链回归的两项共享 native/JS 回放通过，错误 payload 的 Ref 写入
被静态拒绝。完整集成门禁分段通过：原 check-all 在新增 JS 回放的参数
顺序处失败，修正后的完整断言脚本与全部后续门禁均退出 0。

## 直接 Controller 构造的 32 场景复查

候选进一步让构造器先推断自己的 Op，再验证实例化后的字段。
直接 Controller: Ref<Fn(A)> 正例检查与 native 通过；新增直接 B controller
与 A 树混接反例，检查拒绝并定位 deliver arg 2 的 Node<B>/Node<A> 差异。
原 factory、递归树 Ref 与错误 handler/Number 场景仍保留。此次探针共 32
场景，Respo 默认入口检查与 96 项 native 测试通过。

构造器推断的三个附带测试已共享 native/JS 回放，错误消费者、Ref 写入
其他回调类型、回调返回类型错误均被静态拒绝。编译器完整回归仍在运行，
生产 dispatch schema 与最终路线尚未改变。

候选编译器本轮进一步保留 where 泛型的身份与 trait 能力，避免因严格返回证明阻断 Add helper，并保持方法回调的未绑定泛型及 DOM nullish 兼容边界。重新运行 Respo 默认严格检查与 96/96 native tests、32 场景 probe 均完成：直接 Controller 构造的正例执行成功，异类 Controller/Node 组合仍在 deliver arg 2 拒绝。Diary 严格检查、JS 生成和 initial/offline/login 三种 SSR 内容与组件身份回归通过。候选尚未提交或发布；完整编译器门禁仍待最终 source 的完整验证。生产 dispatch 类型迁移、旧 cursor/tag 兼容与两路线的完整对比仍未完成。

## 后续：Props 与 Store 分别保存 Op 与 State

探针新增五个场景，总计 37 个。Store<State> 只保存状态，Props<Op> 保存 Map<Tag, EventHandler<Op>>，AppController<Op,State> 同时持有 Controller<Op> 和 Ref<Store<State>>。make-app-controller、save-state! 与 notify 沿用这两个独立参数；Number/String 状态不需要应用额外标注。

| 场景 | 正式 0.28.0 | 当前未发布候选 |
| --- | --- | --- |
| A 类型 dispatch、A 事件、Number 状态 | 接受；native 通过 | 接受；native 通过 |
| 同一 A dispatch、String 状态 | 接受；native 通过 | 接受；native 通过 |
| 事件调用 d! 42 | 拒绝于 d! arg 1 | 拒绝于 d! arg 1 |
| A controller 与 B 类型事件 Props 混接 | 接受；native 的名义 Op 断言失败，实际收到 B | 拒绝于 notify arg 2 |
| Number 状态 controller 写入 String | 拒绝于 save-state! arg 2 | 拒绝于 save-state! arg 2 |

native 的 dispatch 正控制明确比较 &enum:definition，不用 A/B 共享的 :clear tag 或 payload 相等代替名义身份。正式版失败后的栈序列化还报告旧 enum-def 转换错误；该附加错误不能掩盖前面的 A/B 身份断言失败。候选的错误 Props 在执行之前已由 W_FN_ARG_TYPE_MISMATCH 拒绝，错误 Number 定位为 W_LOCAL_FN_ARG_TYPE_MISMATCH。

本段新增六个泛型定义、十个泛型参数声明位置，应用保留 dispatch 与事件回调的两个具体 Op 签名。这些数量描述 Props/Store 原型，不代表整个框架迁移成本；旧 plain Map props 的回调上下文、cursor-list/tag 兼容合同与 listener/生产 render 链仍须贯通。这里的 Props 是名义原型，不把原本开放的 raw props map 当作已解决。

正式版与候选分别完成同一 37 场景探针，候选及正式版两项 Props/Store 正例均执行通过。现有文档门禁 83/83 文件、118/118 代码块通过；所有输出 JSON 保持在临时目录。编译器最终 source 的完整 Rust 已退出 0（1,584 passed、0 failed、1 ignored），完整 check-all 的 known-assertion 阶段已通过，其余阶段仍在进行，编译器未发布。

候选随后修正了完整 bundled-public 检查中的 contextual return 误报：函数自身与捕获的泛型保持刚性，调用方待推断的 callback result 可继续推断。当前候选重新完成 Respo 严格检查、96/96 native 与同一 37 场景 probe，Props/Store 的两项 native 正例及三项拒绝结果保持不变；Diary 严格检查、JS 与三种 SSR 内容/组件身份重新通过。完整 Rust 和 check-all 正在重跑当前源码，上一段 1,584 Rust 结果对应此项后续修复之前的源码。

## 同一 Store/Dispatch/Props 的两路线对比

编译器本地提交 `6e954020` 的完整 Rust（1,584 passed、0 failed、1 ignored）、check-all、clippy 与格式检查均已通过。它尚未发布。探针扩展为 42 个场景：泛型与 type-slot 复用同一 Controller/Ref<Option<Node>>、Store、Props、AppController、保存状态与通知回调代码；槽版本将 Op 替换为 entry 的 dispatch-op 绑定，State 仍独立推断。A/B 定义保持相同，两条路线的应用回调保留相同具体签名。

| 同一输入 | 候选：泛型 | 候选：type-slot |
| --- | --- | --- |
| A dispatch、A 事件、Number 状态 | 接受；native 通过 | 接受；native 通过 |
| A dispatch、A 事件、String 状态 | 接受；native 通过 | 接受；native 通过 |
| d! 42 | d! arg 1 拒绝，期望 A | d! arg 1 拒绝，期望 A |
| A dispatch、B 事件 | notify arg 2 拒绝，期望 Props<A> | SlotProps 的 event 字段拒绝，期望 slot handler |
| Number 状态写入 String | save-state! arg 2 拒绝 | Slotsave-state! arg 2 拒绝 |

仅统计新增的六个 Store/Props 应用定义，泛型路线有十个泛型参数声明位置，槽路线有五个 State 参数声明位置及一项 entry Op 绑定；两者都保留两处应用具体 Op 回调签名。递归 Node 等共有持有链不计入这组数字。槽路线减少框架侧 Op 参数传递，但约束同一 entry 的应用 Op；泛型路线可在同一程序中组合独立 Op 的持有对象，并在组合调用点诊断错误。槽路线的异类事件诊断提前到 Props 构造，但显示 type-slot(dispatch-op)，没有把实际 entry 绑定 A 展开进该字段消息。

正式 0.28.0 的泛型两项正例执行通过，异类 B Props 仍被接受并在 native 名义断言失败；type-slot 五项均拒绝，包含合法正例，原因涉及 quoted slot 与回调类型关系。不能把这些拒绝计作错误输入已被正确检查。候选两条路线均在各自正例通过后得到上述拒绝证据。现有探针新增条件核验：槽正例如果被接受，必须 native 执行成功，三个反例必须拒绝且对应 d!、Props event、save-state! 的诊断位置。

结果包含每场景端到端耗时，含进程启动与模块加载。一次采样不足以得出性能优劣；正式与候选的构建模式也不同，不能直接比较两个二进制的时长。所有 JSON 留在临时目录。模板生成时曾误替换 Option，已修正为完整 Op token 替换；该次失败属于探针模板错误，不计作编译器缺陷。

最终 42 场景在正式与候选编译器分别运行完成。五个 Props/Store 场景的检查耗时中位数：候选泛型 592.7 ms、候选槽路线 566.9 ms；正式泛型 101.8 ms、正式槽路线 100.3 ms。各组包含不同输入和通过/失败路径，数字只保存此次调查的运行成本，不是同一负载反复采样的性能结论。文档门禁 83/83 文件、118/118 代码块通过，git diff --check 通过。

本原型仍未决定生产 API 的迁移路线：raw Map props 的回调上下文、生产 renderer/listener 与旧 cursor-list/tag 调用合同尚未贯通。两路线原型的成功不能证明这些验收项。此记录提供 #195 与 Calcit #1555 所需最小比较的本地证据，未代替 issue 决策或发布。

## 后续：事件表内联回调上下文

在同一 SlotProps 原型中再加入两个场景，总计 44 个：直接在 `&{} :click` 的值位置声明 fn，不手写该事件回调的 hint-fn。原候选把合法 A 与错误 Number 都拒绝于 Props event 字段，因为值推断成裸 Fn；这不是错误 Op 的有效拒绝证据。

编译器将已有 List/Set literal 成员上下文扩展到完整、无 spread 的 &{} 键值序列，按声明的 Map key/value 类型递归预处理。修复后，内联合法 A 回调静态通过并 native 执行成功；d! 42 在 d! arg 1 拒绝，诊断保留 type-slot(dispatch-op) 身份。本例的应用只需 dispatch 的具体 A 签名，不再需要事件 lambda 的第二处具体签名；前段两路线五场景的两处标注统计保持原样，不能拿不同代码布局直接比较标注成本。

现有探针核验新的内联正例如果被接受就必须执行成功，负例必须拒绝于 d! arg 1。新增 compiler definition test 覆盖直接与嵌套 Map 回调的 native/JS 回放。这里解决的是已声明同质 Map<Tag,EventHandler> 的上下文，生产的异质 Map<Tag,Dynamic> props 仍没有业务 key 的静态合同；未宣称 raw props、旧 list/tag 或生产 render 链已完成。完整编译器门禁正在针对本项新源码重跑。

Respo 默认严格检查与 96/96 native tests、Diary 默认严格检查通过。正式 0.28.0 与当前候选分别完成 44 场景；正式版的内联两例仍因 slot/裸 Fn 字段关系而拒绝，不能算作正确诊断。复查发现 docs 检查脚本此前不读取 CALCIT_BIN：先前该变量指定候选的命令实际使用 PATH 中的正式 CLI。脚本现优先采用显式 CALCIT_BIN，按当前候选重新运行，83/83 文件与 118/118 代码块通过；先前正式版的通过结果仍保留。#104 的默认 demo 可达图在正式和候选的 --warn-dyn-method --check-only 下均通过，但这个范围不代替全公共 API 或下游验收。

Diary 在本项源码下重新生成 JS 后，initial/offline/login 三种 SSR 内容与组件身份通过（输出长度 271/291/1640 只是附带记录，验收仍由内容与身份断言完成）。临时 node_modules 链接在运行后删除。当前 compiler clippy all-targets -D warnings、fmt 与差异检查通过；完整 Rust 的首次沙箱运行在两个本机 HTTP bind 处被 Operation not permitted 阻止，获准的本机网络回归仍在运行，不能据分段通过写成完整通过。
