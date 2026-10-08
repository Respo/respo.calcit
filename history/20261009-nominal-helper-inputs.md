## 追加：cursor Map 原语与运行时告警门禁

- Map / nil 状态路径写入直接使用 Map 原语，其他容器保留 assoc-in fallback。移除 get-state-at 将开放节点强转为 Map 的 unsafe-coerce。混合 key、缺失分支创建、List fallback 和写入值身份与原 assoc-in 对照通过。
- Struct 局部更新使用已有受检 struct-with，保留名义定义和原对象；验证 String 字段、非法字段 / key / 字段值。
- Memo 使用已声明 Map 的直接查询 / 写入，移除 children 的重复名义断言。Memo 原生 10 项修改前后均无动态告警；不能把 cursor 的告警减少归因于 memo。既有嵌套命中、裁剪、回调异常及缓存行为保持。

同一 alpha.19、同一原生 attached tests 对照：b51cb9c 的 117/117 测试有44次 runtime dynamic-method 告警；本次117/117通过且0次。cursor 子集14项是44→0，新增 Node 门禁重跑全部原生测试并拒绝 dynamic-method / untyped-host-access 告警。相关13项Node、335项框架定义、DOM host / Canvas、quality baseline 和格式检查通过，预算未提高。

definition code AST：assert-type **51→50**，unsafe-coerce **15→14**。完整 strict 仍有4项诊断、5项源码证明提示，类型审查项 **227→226**；core 泛型、render-with! callable 及 type slot 仍待处理。运行时告警门禁只覆盖实际执行的 attached tests，不能代替浏览器 UI 或正式依赖发布验收。本次最新源码尚未加入下游组合，后续回归记录按精确版本追加。

## 追加：demo 事件和状态读取边界

- 两个组件的 input handler 先解码 Map<Tag, Dynamic>，draft / task text 再解码 String。局部状态 input 仍传递开放 value；没有把已有 Dynamic 存储强行改成 String。
- Ctrl+M listener 检查匿名键盘事件的 Map payload，保留 key / ctrl 判断、立即修改消息和 2000ms 后恢复消息。
- demo 组件读取 states 前解码 Map<Dynamic, Dynamic>，保留混合 key；TodoState 用 Struct 身份 guard 检查并保持原对象。移除重复 state / tasks 断言，非法名义 Struct 或容器拒绝。

新增 JS 回归直接调用实际渲染出的 input handler，验证 dispatch 内容、非法容器 / key / 文本在 dispatch 前失败、开放局部 state 原值、TodoState 身份及 Ctrl+M 定时恢复。相关 Node 文件 9/9、117/117 native、335/335 框架定义、DOM host / Canvas、quality baseline 和 Snapshot 格式检查通过。

项目 definition code AST：assert-type **56→51**，unsafe-coerce 保持15。完整 strict 诊断 **7→4**，源码证明提示 **8→5**，类型审查项仍227。剩余四项为 core conj / pairs-map、render-with! callable 合同及重复 type slot；完整 strict 仍未通过。中文记录保留历史阶段，下游源码组合尚未更新至这次修改，正式下游验收和 #195 路线决定仍待完成。生成 JS / JSON 不入库。

## 追加：effect 队列、props 和计时边界

- 测试用 effect / task helper 在调用前检查 `fn?`，保留 effect 顺序、原 target 和仅执行首项的行为；非法回调明确报错。这些 helper 的 target 仍为开放测试数据。
- `props-as-list` 对 List 和 Map 转换结果使用嵌套 List decoder，保留其他输入返回空列表的行为；不额外限制 pair 长度。
- demo 压测使用已有 `shared/now-ms`，在 Date.now 返回错误类型时，于 dispatch 前拒绝。

当前项目 definition code AST：assert-type **61→56**，unsafe-coerce **18→15**。完整 strict 仍失败：诊断 **12→7**，源码证明提示 **11→8**，类型审查项 **230→227**。剩余包括三个 demo 事件 Map 边界、core conj / pairs-map、render-with! 回调合同及重复 type slot。

本轮验证：117/117 原生 attached tests，相关两个 Node 文件 17/17，335/335 框架定义，DOM host / Canvas 和既有 quality baseline 通过；没有提高质量预算。新增反例覆盖非法队列项、effect 回调、嵌套 props 列表和时钟返回值。生成 JS / JSON 报告不入库。

本轮最新修改尚未重跑下游源码组合，前次组合 0f808d1 + #229 的结果保留历史含义。完整 strict、两个真实下游最终验收及 #195 路线决定仍待完成。

## 追加：开放列表、持久化任务和 Unit 返回

- `create-list-element-open` 使用 `decode-map-as` 检查嵌套 List，返回类型如实为 Element。key、pair 长度、子节点类型及 nil 过滤仍由原有构造流程检查。
- `normalize-task` 对 Struct 使用 `&struct:matches?` 检查 Task 身份，合法 Task 原对象透传；Map 继续使用字段 decoder。新增错误字段及其他名义 Struct 反例。
- 存储读取的已解析列表在进入 normalize-tasks 前受检解码，移除 unsafe-coerce。
- 三个已声明 Unit 的日志回调明确返回 Unit，保留原副作用。

当前源码 AST 精确计数：assert-type 63→61，unsafe-coerce 19→18。原始 Snapshot 文本含文档及附带 metadata，不作为源码计数。

验证：115/115 原生 attached tests；新增任务身份、Map 字段及开放 keyed children 的 JS 回归，相关 14 项 Node 测试全通过；335/335 框架定义检查；DOM host / Canvas、37 项名义访问器静态反例、100 文件 / 120 文档代码块、quality baseline 通过。

完整 strict 仍失败：独立预处理诊断 17→12，源码证明提示 16→11，类型审查项 231→230。剩余包括 demo Map / 时间边界、effect queue 盲断言、props-as-list 返回证明、render-with! dispatch 契约、core conj / pairs-map 及重复 slot 诊断。类型加强和下游完整验收尚未结束。

本轮下游源码组合仍冻结在此前 66ac85a + #229，不能将其历史回归结果作为本次新增代码的完整下游证据。

# #194：名义 helper 的输入证据

## HTML 键值对追加阶段

在 `e60a28e` 基础上，将 `coerce-pairs` 改为保持输入类型和身份的泛型恒等
函数，移除其未经证明的嵌套 List 断言与不准确的 FFI 标记。它不负责验证
键值对结构：开放的 style 入口使用已有 `checked-pairs` 提供结构证据。
该校验保留成员和顺序，不增加 pair 长度约束。`props->html` 的 Map 参数
已经通过 `&map:to-list` 提供结构类型，因此移除重复断言。

未采用嵌套成员泛型 `List<List<Item>>`：其空列表实参在正式 alpha.19 被
`E_ERASED_GENERIC_RELATION` 拒绝。当前恒等合同直接保持整个输入类型，
不宣称成员类型转换，混合成员及原始空列表的身份回归均实际执行通过。

当前项目断言 **72→65**，unsafe 仍为19；完整 strict 诊断 **27→20**，
仍未完成全部 strict 要求。111 native / 84 Node tests 通过；新增 HTML
回归验证混合键值、回调身份、空 style、属性过滤、排序、转义及输入不变。
质量实际计数185/183/211，退还 coerce-pairs 的 typeNotFull 预算，
总预算190/187/218，未提高预算。后续章节保留各阶段的历史数据。

## 当前追加阶段

在首轮 `7424ad6` 基础上继续修复 `element-ref`、`purify-element-node` 与
`purify-events`。当前项目断言 **72→67**，unsafe 仍为19；完整 strict
诊断 **27→21**，静态拒绝用例37项，110 native / 83 Node tests 通过。
实际质量计数为185/184/211，总预算190/188/218。下文首轮数据保留历史含义。

`element-ref` 现在要求 Element，并返回与当前字段一致的 `JsNullish<Fn>`；
字段没有具体参数/返回合同，访问器不能凭读取宣称 Unit 返回值。native 与 JS
回归用一个返回 Number 的已有回调验证身份保持，不调用或改写它。

`purify-element-node` 要求 Element，移除断言和不准确的 FFI 标记；开放
`purify-element` 在原 element 分支中复用 `as-element` 校验。它的现有 nil、
未知 markup、递归清理及空组件树逻辑保留。

`purify-events` 复用 `pair-tag-key`，为 `List<Tag>` 返回值提供实际 key
证据。仍先按 `non-nil?` 过滤：nil 去除，JS undefined 的事件名保留，与独立
main 的运行回放一致；其他非 nil 值也保留。存活的 String key 被拒绝，nil
值的 String key 仍在校验前被过滤，不转换 key 或改写 handler。

新增 native 事件名回归、JS nil/undefined 与非法 key 回归。37项静态拒绝、
335个框架定义、DOM host/Canvas、文档与 JS/Vite 验证通过；退还
`purify-element-node` 的一项 typeNotFull 预算，未提高预算。

## 首轮阶段：7424ad6

基于 main `37f55cd`，使用正式 Calcit / procs `0.29.0-alpha.19` 和
js-ffi `0.2.1-alpha.15`。这是独立于混合 cursor key 修复 #229 的变更。

## 接口与生产者

`element-name`、`coerce-element`、`coerce-component` 原签名接收 Dynamic，
实现通过 `assert-type` 将其视为 Element 或 Component，完整 strict workflow
分别报告未证明的名义类型断言。两个纯转换 helper 还被标记为 `:js-ffi`，
但实现没有任何宿主调用。

输入现在分别为 Element、Element、Component。移除三处冗余 `assert-type`
和两个不准确的 FFI 标记；转换 helper 返回原值，字段、ref、children 与组件
身份不变。`element-name` 保留既有 let 与字段读取。

`purify-element` 的开放结果不能直接进入关闭的名义合同。生产代码的
`make-string`、`realize-ssr!` 在净化之后使用既有 `as-element` 校验，再交给
`coerce-element`。净化顺序、合法树的 HTML、事件/ref 清理和空组件树报错
保持；未经验证的数据不能再仅靠 facade 的返回声明获得名义类型。
原有递归 ref 测试使用相同边界，断言保持不变，确认测试表达式实际执行。

公开迁移示例加入 `docs/guide/virtual-dom.md`；已具有名义类型的值直接调用
helper，开放数据先经过 `as-element` / `as-component` 校验。状态树、dispatch
合同和 type slot 不变。

## 验证

- 全部 109/109 native tests；递归 ref 清理与空组件树两项测试单独执行通过。
- 全部 82/82 Node tests，包括新增 helper、ref 与 children 身份回归。
- DOM host 与 Canvas 四项回归，JS/Vite build 通过。
- 名义访问器脚本扩为 31 项静态拒绝用例：原有 22 项，新增六项错误具体类型
  与三项开放 Dynamic 生产者；正控制检查原值身份。
- 将同一脚本放到独立 main Snapshot 回放，基线在 `element-name 42` 上直到
  运行时读取 Struct 字段才失败，不能满足调用处的静态拒绝断言。
- 两个转换 helper 的 concrete-return-proof 定向审计零诊断。
- Markdown：95/95 文件、120/120 代码块通过；本历史文件无代码块，单独检查。
- Snapshot canonical format 无变化，git diff 检查通过。

计数只取 Respo 项目命名空间的 definition code 调用 AST，排除依赖、schema
与附带测试：assert-type **72 → 69**，unsafe-coerce **19 → 19**。不使用全局
query 的依赖合计来代表框架源码。

质量门禁通过，实际 schemaDynamic185 / typeNotFull185 / unresolved211。
按三个具体签名退还预算：element-name 的 schemaDynamic/typeNotFull/unresolved
各 1→0；两个 coerce helper 的 typeNotFull 各 1→0。总预算由
191/192/219 降为 **190/189/218**，unsafe 总预算保持原值，未提高任何预算。

完整 strict workflow 的诊断由 **27 → 24**；仍包含 demo、其他生产者、core
依赖和 type slot 诊断。本项不关闭 #194/#195，也不替代两个真实下游最终
回归或 dispatch 路线决定。生成 JS 和 JSON 报告均不入库。
