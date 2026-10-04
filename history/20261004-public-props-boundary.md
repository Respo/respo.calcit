# 公开 props 边界的签名修正

Diary / alerts 下游回归发现，公开元素函数的签名只接受 `DomProps`，
实现和文档却一直允许 nil、map 和属性结构。字面量 map 可以通过部分
编译路径，先绑定到变量再传入则出现类型警告。

统一修正 33 个公开元素入口（包括 `create-element` 和 `list->`）的
props 参数为独立泛型 `PropsInput`。`normalize-dom-props` 也使用这个
泛型，在运行时检查输入形状，返回原有 `Map<Tag, Dynamic>`。返回的
Element、内部 ChildPair、事件校验和 ref 校验保持原有契约。此次未增加
Dynamic 声明或强制转换，也未取消 `DomProps` 各字段的类型检查。

这个泛型表示公开入口接受输入并负责解码；不表示任意输入都有效。
数字、布尔和列表仍会在 `normalize-dom-props` 被拒绝。开放属性 map
仍是刻意保留的兼容边界，不能将其等同于已经完全类型化的 DOM 属性。

## 证据

- 新增 input、textarea 的变量 map 回归，以及无效 props 拒绝测试。
- 在独立快照恢复 `de4f55d` 的旧签名，同一个 input 回归被
  `DomProps` / `Map<Tag, String>` 类型警告阻挡；当前版本通过。
- 正式 Calcit 0.28 严格检查、JS 生成和 89 项 native 测试通过。
- 候选 Calcit 0.29.0-alpha.1 的 89 项 native 测试通过。
- 正式 0.28 重新生成 JS 后，33 项 Node 测试及 DOM smoke 的 6 项
  契约检查通过。
- 质量基线通过，无违规项；没有扩大预算。
- alerts 用自己的六字段 `PromptInputProps` 检查属性，再转换为公开
  map 输入。使用迁移依赖和匹配的候选 JS runtime，实际 prompt 渲染
  的 17 项测试通过，包括 input / textarea、placeholder、提交和重开。

alerts 的完整演示、Diary 的第二个下游回归以及整个 milestone 仍未完成。
旧发布版 Respo 的签名还没有这个修复，因此 alerts 的配套改动需要在
依赖升级时一起整合，不能单独当作已通过旧依赖的发布变更。
