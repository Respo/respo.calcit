# #194：净化路径保留 RenderNode 类型

原净化路径通过 `component-tree`、`child-pair-value` 将组件树及子节点
还原为裸 Struct，再调用 `purify-element` 重新判别类型、创建 ChildPair。

新增 `purify-render-node : RenderNode -> Element`，直接匹配具名变体：

- Component 读取 `Option<RenderNode>`，递归移除组件包装。
- Element 清除事件及 JS ref，递归映射 `ChildPair.node`。
- 保留 ChildPair key、顺序、空节点，原树不被修改。
- 空组件树仍报告 `tree-is-empty`；未知开放输入的既有提示路径保留。

开放入口 `purify-element`、`purify-element-node` 维持原签名。
递归内部不再经由 `Option<Struct>` 或重新执行节点分类。
DOM ref 清理沿用既有 `:js-ffi` 特征声明。

## 空子节点的 SSR 修复

生成 JS 的回归暴露了当前迁移分支的遗漏：HTML serializer 直接
unwrap ChildPair.node，遇到 None 报错。现在匹配 Option，None 生成
空字符串，Some 保留 RenderNode 检查；未净化的 Component 仍报
`expected-purified-element`。新增 native 和生成 JS 用例验证空子节点
前后都有实际节点时的内容、key、原树与最终 HTML。

## 验证

- 正式 Calcit 0.28.0、候选 0.29.0-alpha.1：默认严格检查通过，
  全部 91 项附加测试通过。
- 正式 0.28 的 JS 生成及匹配 runtime：35 项 Node 测试通过。
  新增两个 JS 用例覆盖嵌套组件、ref/event 清理、nil 子节点及空组件树报错。
- `test-dom.mjs` 六条事件、DOM、SSR/ref、坐标、属性及 paste 合同检查通过。
- Diary `2e70820` 接入本地迁移依赖：候选完整客户端严格检查及 JS
  生成通过，实际 initial/offline/login 三页 SSR 分别为 271/291/1640 字符。

质量预算仅将旧 `purify-element-node` 的 `codeNil=1`、`unresolved=1`
移到新递归函数，它们对应同一条 `:ref nil`；两项总预算不变。
没有提高其他指标。质量检查通过，unsafeCoerce 仍为 38，
typeNotFull 为 189（既有上限 190）。计数不能代替类型与运行验证。

这一步只完成净化/SSR 路径。其他 `component-tree` 兼容读取消费者、
typed dispatch 及 milestone 的完整验收仍待继续。
