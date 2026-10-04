# #194：监听遍历直接使用 RenderNode

`traverse-and-call` 原先在每次递归中重新判断 Component / Element，
通过 `component-tree` 或 `child-pair-value` 转回裸 Struct。
后者直接 unwrap Option，遇到 None 子节点会中断监听器投递。

现在在入口确认已有节点类别后，建立 `List<RenderNode>` 待访问列表。
循环直接匹配具名变体：

- Component 按原监听器顺序投递，再读取其 Option 树。
- Element 按原子节点顺序访问，有值的子节点加入待访问列表，None 跳过。
- 顺序仍是先当前组件、再子树；兄弟节点保持原顺序。
- 空组件树仍投递自身监听器；监听器抛错仍立即停止后续投递。
- event-tuple 和 dispatch 函数保持身份，返回 Unit。
- 外层仍保留原来的未知节点跳过行为，未修改节点或状态树。

同时将 `respo.schema/RespoListener` 的 schema 从错误的 Enum 改为
StructDef，与实际 `defstruct` 一致。handler 的既有 Fn 边界与
`wrap-dispatch` 的单 Enum、legacy list/tag 与可选 payload 写法保留。
这一步没有完成 typed dispatch 的应用 Op 约束。

## 验证

- 正式 Calcit 0.28.0 与候选 0.29.0-alpha.1：默认严格检查通过，
  全部 93 项附加测试通过。
- 正式 JS 生成及匹配 runtime：40 项 Node 测试通过。
- 新增生成 JS 回归验证多个同级监听器、跨组件深度优先顺序、
  event/dispatch 身份、三种 dispatch 写法、空节点和异常中止。
- 在修改前 `7c92ec8` 的独立快照中，同一组 JS 回归的正常顺序和
  异常中止用例通过，空子节点用例报 `option:unwrap-received-none`。
  修改后这三项全部通过。
- DOM smoke 的六项事件、DOM、SSR/ref、坐标、属性及 paste 合同通过。
- Diary `2e70820` 接入本地迁移依赖，在候选下完整客户端检查和 JS
  生成通过；实际 initial/offline/login 三页 SSR 仍为 271/291/1640 字符。
- 质量检查通过，baseline 未改动，unsafeCoerce 仍为 38。

组件监听遍历不再调用 component-tree。DOM 创建与 diff 路径还保留
该兼容读取入口，milestone 的完整类型迁移和验收仍需继续。
