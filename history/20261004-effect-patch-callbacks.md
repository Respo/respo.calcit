# effect patch 保留具体回调签名

## 生产边界

DomPatch 的四种 effect payload 原来都是裸 `Fn`，现在明确为
`Fn(DomElement) -> Unit`。`run-effect` 的 target 为 `JsNullish<DomElement>`，
method 与 payload 使用同一具体签名；通过 `js-present?` 只在真实目标存在时调用。
缺失目标保留原 warning、坐标和跳过调用行为，异常仍原样传播。

`collect-own-mounting`、`collect-own-unmounting`、`collect-updating`
的六处 getter 调用改为直接读取已经由 `component-effects` / Option 分支证明的
Effect `:method`，避免将具体的两 List 参数、Unit 返回签名擦为裸 `Fn`。
遍历顺序、lifecycle 标签、参数和是否 at-place 的取值不变。

旧的开放 `effect-method` getter 继续保留，生产链不再依赖它。
一次尝试将它的返回签名展开为完整 Fn，新增两处真实开放 List<Dynamic>
位置，原逐定义预算失败；最终方案保留旧入口，直接使用已证明的字段合同，
没有将这些数据伪装为泛型，也没有提高质量预算。
开放 `run-first-task!` / `run-effect-ops!` 仍需独立盘点，未宣称全部裸 Fn 已消除。

## 正反例与实际 JS

`test-callback-types` 从 6 项扩展到 14 项：四种 payload 分别有合法 callback
正控制，反例覆盖错误 DOM 参数、错误 arity 和非 Unit 返回值。
反例核对 DomPatch 变体、payload 位置与实际类型，且在执行之前被拒绝。
正式 Calcit 0.28 与本地候选 43bd603b 均通过 14/14。

真实生成 JS 的 effect traversal 测试新增 null / undefined 缺失目标、
真实目标身份与调用次数、坐标 warning 和异常对象身份验证。
原 lifecycle 顺序、DOM 目标、空子节点与重排回归继续保留。

Snapshot 仅通过正式 CLI 事务、dry-run 与 revision 前置条件修改。
正式与候选原生测试仍为 106/106，相关三个命名空间公开定义检查为 62/62。
正式严格检查、原质量预算及生成 JS 通过。
本次不改变 dispatch 操作语义、状态树结构，亦不代替整个 milestone 验收。
