# 内部事件刷新坐标对齐

Timegrass 严格迁移暴露 `collect-event-refreshing-node` 的真实合同矛盾：参数声明 `List<K>`，递归时却追加组件名 Tag 和 `ChildPair.key` 的开放值，无法对任意调用方 K 保持成立。

按用户批准的范围，将这一内部 helper 的渲染坐标改为现有 `DomPatch` 使用的 `List<Dynamic>`，移除不成立的 K 泛型。函数体、数字 DOM 坐标、应用 StateKey 泛型和状态树都不变，不加 unsafe 或转换。这里只如实保留现有开放边界，不代表完成 key 类型收敛；后续由 #194 / #195 继续推进。

definition 附带测试检查 Tag/String/Number 混合路径、组件名称追加、nil 子节点跳过与数字坐标压缩，使用明确的 `Ref<List<DomPatch>>` 记录器。已有 JS host 回归增加同一混合前缀，继续验证事件安装、组件进入/退出和旧/新入口等价。以固定 Calcit 0.29.0 回放，同时用未发布的 #2013 编译器检查原泛型矛盾消失；正式消费者验收仍须使用匹配的已发布工具链。
