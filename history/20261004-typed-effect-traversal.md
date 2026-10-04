# #194：挂载与卸载 effect 遍历保留 RenderNode

`collect-mounting` 和 `collect-unmounting` 保留原入口合同及未知节点告警。
合法节点转换一次后进入 `collect-mounting-node` / `collect-unmounting-node`，
递归保持 RenderNode；直接读取 Component、Element、Effect、ChildPair 的字段，
不再在每一层还原 Struct 再做类型检查。逻辑坐标的键保留泛型。
Effect 的定义是 defstruct，因此将它的 schema 从 Enum 校正为 StructDef。

挂载仍按组件自己的 effect、组件树执行；元素先 ref 再子节点。
卸载仍先组件树再自己的 effect；元素先子节点再清空 ref。
更新与仅收集当前组件 effect 的入口已使用具体 Component，本次未改动。

## 回归发现与修复

ChildPair 中的 None 不创建 DOM。旧 effect 遍历却仍递增物理索引，导致
后续 ref/effect 指向不存在或错误的节点。现在仅 Some 递增 DOM 索引，
逻辑坐标仍保留原来的 child key。

旧挂载代码生成的 JS 使用尾调用循环：递归时重写参数 `at-place?`，
先前排队的闭包随后也读到 false。两个内部 helper 明确以 &unit 结束，
保证 Unit 合同，并避免此处递归重写闭包捕获的根标志。根组件回调现在
读取 true，后代读取 false。此处记录的是生成代码的具体行为，不能据此
认定编译器所有闭包/尾调用情形都已修复。

新增 Node 回归经过真实 `apply-dom-changes`，检查挂载/卸载顺序、目标节点、
ref 清空、effect 参数及根标志，分别覆盖有无空子节点的树。
在修改前 f0cdb67 的独立快照中，这两个用例均失败：无空节点用例根标志
错误；有空节点用例物理索引错误。修改后两个用例均通过。
另新增两项 native 回归检查稠密 DOM 坐标及递归后的根标志。

## 验证

- 正式 Calcit 0.28.0 和候选 0.29.0-alpha.1：默认严格检查通过，
  native 测试各 95/95 通过。
- 正式版 JS 生成及匹配的 @calcit/procs：Node 测试 45/45 通过。
- DOM smoke 六条事件、DOM、SSR/ref、坐标、属性及 paste 合同通过。
- Diary 2e70820 使用本地迁移依赖，在候选下完整客户端严格检查、
  JS 生成通过；initial/offline/login 实际组件 SSR 为 271/291/1640 字符。
- 质量检查通过；typeNotFull 190、schemaDynamic 188、codeNil 31、
  unresolved 214、unsafeCoerce 38。

质量基线仅将原 collect-unmounting 的一项 codeNil 和一项 unresolved
预算移到新 helper，对应同一个 `ref! nil`。整体预算没有提高，
没有新增强制转换。临时操作 JSON、测试结果 JSON 和生成 JS 不入库。

diff 遍历、typed dispatch 及 milestone 的完整验收仍需继续完成。
