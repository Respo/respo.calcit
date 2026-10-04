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

## 未标注回调的推断缺口

提交 4929057 的完整 GitHub Actions 37205515662 已通过。
随后补查未标注回调，正式 0.28.0 与本地候选都接受了以下错误返回：

```cirru.no-check
respo.schema/DomPatch :effect-update ([]) ([])
  fn (target) 42
```

两者都退出零且构造了含 Number 返回函数的 DomPatch，因此不是只缺少诊断位置。
14 项正反例中的错误返回案例显式声明 `:return 'Number`，能证明 payload 合同拒绝
不匹配的声明，却不能证明未标注函数体的返回推断已经受检。
独立正交控制显式声明 Unit、函数体仍为 42，两个编译器均以
`W_FN_RETURN_TYPE_MISMATCH` 拒绝；缺口定位于来自构造器的回调上下文，
不等于所有显式函数返回声明都失效。
继续保持具体 payload 类型，不回退为裸 Fn；这项上游推断缺口须独立修复与验证。
