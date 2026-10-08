# #194：恢复 `>>` 的混合 key 合同

基线为合并 #228 后的 main `37f55cd`，使用正式 crates.io Calcit
`0.29.0-alpha.19`、同版本 `@calcit/procs` 和 js-ffi `0.2.1-alpha.15`。

## 问题与修复

新加入的 `as-states-map` 遍历整个状态 map，并拒绝非 Tag key。这与 #194
要求保留 String cursor key、以及已有 Number key 支持矛盾。原有五项 JS
cursor 测试只调用 `respo.cursor` 的读写函数，没有经过公开的 `respo.core/>>`。

正式 native 回放 `(>> states |task-1)` 在 String 分支上报
`expected states keys as tags`。在独立的基线 Snapshot 中重新生成 JS 后，
扩充的七项 cursor 测试有两项失败、原有五项通过：混合 key 分支被拒绝，
非法 String 分支 payload 的检查也被提前的 key 检查遮挡。

修复保留 nil → 空 map、非 map 拒绝和非 List cursor 拒绝。`map?` 验证成功
后直接返回原 map，不重建 key 或复制分支；`>>` 仍只返回带追加 cursor 的新
分支 map，不改写输入。两个返回声明改为 `Map<Dynamic, Dynamic>`：状态树
包含 Tag 元数据以及 String/Number 子分支，不能声明成 Tag-only map。
没有新增 `assert-type`、`unsafe-coerce` 或泛型占位符。

新增两项 definition-attached native 测试和两项 JS 回归：覆盖 mixed key、
嵌套选取、Number/String 区分、原值不变、nil seed 和非法状态/cursor 边界。
迁移说明与可执行示例加入 `docs/guide/component-states.md`，不要求应用转换 key。

## 质量基线

如实声明混合 key 后，`as-states-map` 的 schemaDynamic 与 unresolved 各从
2 增为 3。与此同时，当前源码的 `element-children` 已返回 `List<ChildPair>`，
原基线仍为两项 Dynamic；按实际 AST 将该定义的两项预算各从 2 降为 1。
这些变化在 PR 中明确审阅，不通过假定泛型 key 或新增强转掩盖开放数据。

总预算保持 schemaDynamic191 / typeNotFull192 / unresolved219 / unsafe35。
实际计数为 187 / 188 / 213 / 19，质量门禁通过；不把预算当作类型证明。

## 已验证与剩余要求

- 默认检查、23 个框架命名空间的 335/335 定义检查通过。
- 全部 111/111 native tests、83/83 Node tests 通过；cursor 子集 7/7。
- 既有 DOM host 回归与 Canvas 四项测试通过。
- 22 项 nominal accessor 负控制与 DomPatch 正负控制通过。
- `as-states-map`、`>>` 的定向 concrete-return-proof 审计均为零诊断。
- Markdown 检查：95/95 文件、120/120 代码块通过，包含新增状态树示例。

完整 `fix --workflow strict --verify` 仍报告 27 项诊断，涉及 demo 和其他
边界；本项不据局部检查关闭 #194。两个真实下游最终验收、issue 盘点发布，
以及 #195 的路线选择和生产 dispatch 贯通仍需继续。原始 checkout 中的
未提交 RenderNode 设计保留，生成 JS 与 JSON 证据均不入库。
