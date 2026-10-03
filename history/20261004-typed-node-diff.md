# #194：元素与 keyed children 差异保留 Option<RenderNode>

新增内部入口 `find-render-node-diffs`，比较两个 Option<RenderNode>：

- None/Some 分支负责添加、移除；Some/Some 穷尽组件与元素的四种组合。
- 直接读取具体 Component / Element 字段，组件递归保持类型化 tree。
- 比较 payload 身份，保留共享子树的跳过行为。
- 保留 before-update、update、组件自己的挂载/卸载及整树替换的顺序。
- 组件与元素切换后，直接调用类型化事件刷新。
- 现有 DomPatch 的节点载荷仍是 Struct；只在此协议边界还原原始节点。
  补丁消费端及 DomPatch 合同不变。

原 `find-element-diffs` 保留兼容入口：相同输入直接跳过，合法原始节点与
nil 在边界转换，未知输入告警。内部递归不再经过该动态入口。

keyed children 比较通过 ChildPair.node 传递 Option<RenderNode>，追加节点
在补丁边界还原 Struct，挂载/卸载直接调用类型化 effect helper。
先过滤 None，再执行已有公共前后缀、旋转、LIS 和移动算法，保证坐标只
计算实际 DOM 子节点。先前直接构造含 None 的 ChildPair 列表会触发
`option:unwrap-received-none`；现在支持节点出现、消失与重排。

## 验证

- 新增 Node 用例覆盖五组直接 ChildPair 列表：空节点变化、空节点间重排、
  全空转有值、有值转全空及全空重排。经过真实 apply-dom-changes，检查
  最终顺序、存活节点身份、用户输入值及挂载/卸载计数。
- 修改前 e8cfa15 独立快照：新增用例失败，原八项 keyed 测试通过；
  修改后九项全部通过，包括 720 种六键排列的最少移动数量检查。
- 新增 native 回归：含 None 的子节点出现/消失，补丁保持稠密 DOM 坐标。
  正式 Calcit 0.28.0 和候选 0.29.0-alpha.1 各 96/96 native 通过。
- 两版本默认严格检查通过；正式版生成 JS 后 Node 测试 49/49 通过，
  DOM smoke 六条合同通过。
- DomPatch 正反例门禁新增可选节点反例：内部 diff 入口拒绝 Option<Number>，
  并接受两个 None。与已有载荷、移动、属性等反例共同验证。
- Diary 2e70820 使用本地迁移依赖：候选下完整客户端严格检查、JS 生成通过；
  initial/offline/login 实际组件 SSR 为 271/291/1640 字符。

质量检查通过，整体上限不变。将旧 find-element-diffs 中用于清空 ref 的
一项 codeNil、一项 unresolved 预算转移到新内部函数；新函数的节点合同
完整，typeNotFull 预算为零。整体实际计数仍为 typeNotFull 190、
schemaDynamic 188、codeNil 31、unresolved 214、unsafeCoerce 38。

源码只经匹配依赖版本的 Calcit CLI 编辑。临时操作 JSON、测试结果 JSON、
生成 JS 不入库。typed dispatch、回调合同清债及 milestone 整体验收仍需继续。
