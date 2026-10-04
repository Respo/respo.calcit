# #194：事件刷新递归保留 RenderNode

`respo.render.diff/collect-event-refreshing` 保留原 Struct 入口与未知节点
跳过行为；合法节点在边界转换一次，交给新的
`collect-event-refreshing-node`。内部函数通过 RenderNode 分支直接读取
Component.tree、Element.event 和 Element.children；递归不再还原 Struct，
不再调用 component-tree 或 element 字段检查辅助函数。

仍按父事件、子节点顺序收集补丁。None 子节点不占用 DOM 索引，nil handler
不收集 set-event，空组件树不生成补丁。逻辑坐标保留组件名及原始 child key，
包含 Tag、String、Number；物理坐标仍仅追加实际子节点的索引。

## 验证

新增 `test/typed-event-refresh.test.mjs`：

- 元素切换为组件、组件切换为元素时，底层 Element 使用同一实例。
  正常 diff 跳过该共享节点后，事件刷新仍覆盖父节点与后代。
- 经过真实 apply-dom-changes，触发安装的事件，检查实际 DOM 目标及更新的
  逻辑坐标。包含空子节点、嵌套组件、Tag/Number child key 和 nil handler。
- 新旧入口产生相同补丁；空组件和未知节点不生成补丁。

两个切换用例在修改前 af95038 的独立快照中也通过，确认这次迁移保留行为。
比较新旧入口的用例只在新增 helper 后运行。

正式 Calcit 0.28.0 和候选 0.29.0-alpha.1 默认严格检查通过，
native 测试各 95/95；正式版生成 JS 后 Node 测试 48/48，DOM smoke 六条
合同通过。质量检查通过，整体预算和基线文件均未修改：typeNotFull 190，
schemaDynamic 188，codeNil 31，unresolved 214，unsafeCoerce 38。

find-element-diffs 和 keyed children diff 仍有动态节点边界与还原路径。
后续需要贯通 Option<RenderNode> 比较、补丁载荷与 keyed reconciliation，
并完成 typed dispatch 和 milestone 的整体验收。
