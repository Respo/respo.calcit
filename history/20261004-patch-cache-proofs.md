# DOM patch 缓存与滚动状态的类型证明

`invalidate-target-children!` 的循环使用 `hint-fn` 声明真实的
`List<Number>` 路径、`Map<List<Number>, DomElement>` 累积缓存与 Unit 返回值，
移除循环体中两个重复的 `assert-type`。保留原缓存读取、父路径截断、
空路径终止和 `reset!` 顺序，没有新增 DOM 查询或改变缓存失效范围。

`collect-scroll-states` 用泛型 `mapcat` 表达对子列表的一层连接，
替代裸 `&list:flatten` 加类型声明。子树仍按原顺序遍历，父节点滚动状态仍先于
子节点返回，空初值的类型声明保留；移除一处列表结果转换。

通过正式 Calcit CLI 事务、dry-run 与 revision 前置条件写入 Snapshot。
同口径 definition code AST 计数：`assert-type` 92 → 89，
`unsafe-coerce` 保持 30；main b94962e 基线为 124 / 41。
当前扩展盘点表移除这三项后为 75 项；最早的历史盘点表继续保留原始位置。

正式 Calcit 0.28.0 与本地候选 43bd603b 均通过 106/106 原生测试，
patch 命名空间公开定义检查均为 27/27。正式严格入口、原质量预算与生成 JS 通过。
生成 JS 的 keyed moves / patch lookup 共 15 项通过，包含六键全部排列、
批次间滚动快照、插入/移除/替换/追加/移动之后的坐标缓存、根替换与深层读取复用。
原生测试仍存在其他动态方法运行警告；这些检查不意味着全框架运行时无警告。

#195 的 Op、旧 list/tag 参数兼容与 raw props 回调上下文仍未贯通。
这里不通过将 dispatch 缩成单一 Op 或宽回 Dynamic 来替代该验收。
