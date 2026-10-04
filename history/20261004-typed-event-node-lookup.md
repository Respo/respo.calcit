# #194：事件坐标定位保留 RenderNode

事件定位原先调用 `get-markup-at`，得到 `Option<Struct>`，再用
`component?` 和两处 `assert-type` 恢复 Element 类型。组件树与子节点
在递归期间也会经过 `component-tree`、`render-node-value` 还原为 Struct。

现在使用两个类型入口：

- `find-child-node` 从 `List<ChildPair>` 按 key 返回 `Option<RenderNode>`。
  key 是泛型，只作相等比较，不强制转换成 Tag 或 String。
- `get-render-node-at` 接受 RenderNode 与泛型坐标列表，直接匹配
  Component / Element，并递归读取 Option 树及子节点。

`find-event-target` 的循环直接匹配 RenderNode，得到 Element；删除了
该函数的两处 `assert-type`。原有 nil 参数检查、事件存在判断、坐标向
父层查找、错误分支保留。nil handler 仍算事件表中存在的 key。

兼容入口 `get-markup-at`、`find-child-by-key` 保留签名及原始节点返回值；
只在入口和出口转换。递归内部不再使用裸 Struct 或 component-tree。
现有 RenderNode 创建边界仍负责校验 Element / Component 输入。

## 坐标与错误语义

- 每层 Component 消耗一个坐标段，Element 按对应 ChildPair key 查找。
- 空坐标返回当前节点，保留组件包装与节点身份。
- Number `7` 与 String `|7` 是不同 key，不做转换。
- 空组件树返回 None；缺失 key 或 key 指向 None 子节点仍报
  `child-not-found`，不借此次类型迁移改变事件定位行为。

## 验证

- 正式 Calcit 0.28.0：默认严格检查、92/92 native 附加测试通过。
- 候选 Calcit 0.29.0-alpha.1：92/92 native 附加测试通过。
- 正式 0.28 JS 生成与匹配 runtime：37/37 Node 测试通过。
- 新增 `test/event-node-lookup.test.mjs` 的两项用例，在修改前
  `70d297b` 的独立快照和修改后生成 JS 上都通过，覆盖跨组件坐标、
  key 类型区分、事件向父层查找、空树和缺失子节点。
- DOM smoke 的六项事件、宿主、SSR/ref、坐标、属性和 paste 合同通过。
- Diary `2e70820` 使用本地迁移依赖，在候选下完整客户端检查、JS
  生成通过；实际 initial/offline/login SSR 仍为 271/291/1640 字符。
- 质量检查通过，未修改 baseline；unsafeCoerce 38，typeNotFull 189。

这里只完成事件定位路径。组件监听遍历、DOM 创建和 diff 中仍有
component-tree 兼容读取，typed dispatch 及 milestone 完整验收仍待完成。
