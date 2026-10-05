# #195：slot holder 的源码与 schema 输入位置

## 修正比较前提

`probe-dispatch-holders.mjs` 原先把泛型 `'Op` 统一替换为
`'*dispatch-op`，同时用于定义源码和持久化 schema。两个输入位置的解析规则不同：

- `defstruct` 字段和内联 `hint-fn` 的源码类型表达式使用 bare `*dispatch-op`。
- `edit schema` 的 payload 是 Cirru EDN，使用 quoted `'*dispatch-op`。
  bare token 会被 schema validation 拒绝，不能整体替换。

最小复现在已发布 Calcit `0.29.0-alpha.6` 和本地 `d55167ad` 候选中均确认：
一个回调字段使用 quoted slot 时，合法的具体 Op 回调被拒绝；改为 bare slot 时
同一构造通过。探针现在仅对定义源码转换为 bare slot，schema 保持 quoted symbol。
全部 Snapshot 修改仍通过 CLI 的事务预览与 revision 前置条件执行。

## 本地候选的完整对照

同一个未发布 `d55167ad` checker 完整执行修正前后的 61 个场景，两次均退出 0。
所有场景的静态接受结果与 native 执行结果保持一致。slot Props/Store 的合法
转发、String 状态、组合调用和内联回调仍失败；不能将同组反例的拒绝记作安全证明。

修正前的诊断混有字面 `'*dispatch-op` 与 `type-slot(dispatch-op)`；修正后
holder 字段不再保留该字面类型，但仍有期望与实际打印为相同 slot 合同的不匹配，
包括保存 dispatch 的 Ref、factory 参数、Map 中的 callback 和 wrap-dispatch 返回值。
这表明 holder 的失败不能仅由探针的源码写法解释，也不证明已确定编译器的修复方式。

候选与正式版本分别记录；候选二进制仍显示 alpha.6 版本字符串，不能凭版本字符串
将候选结果当作已发布版本验收。原始 JSON 和完整诊断保留在临时目录，不入库。
子进程耗时包含启动和模块加载，本轮不据此宣称两条路线的性能优劣。

## Review 的正例门禁

PR #223 的 review 指出：bare slot 可变参数正例被拒绝时，原有条件分支会跳过
后续断言。现在在分支前强制断言 `bare-slot-variadic-valid-op` 被接受，正例失败
直接使探针失败。原有额外 data、Number、未知变体和 legacy 调用位置断言保持不变。

修改后使用已发布 alpha.6 同时进行源码编辑与检查，完整 61 场景探针退出 0。
bare slot 的合法 Op 和额外 data 正例通过，Number 反例被拒绝；泛型 holder
基础正例静态接受且 native 通过。slot Props/Store 合法持有链仍被拒绝，诊断
同时保留 slot 合同的不匹配和 `SlotStore<dynamic>` 的状态写入问题。
这次退出 0 证明调查断言成立，不表示 holder 或生产迁移已成功。两个 JS 脚本的
`node --check` 和 `git diff --check` 通过；未修改根 Snapshot、deps 或生产源码。

尚未完成生产迁移或路线选择。仍需同时满足 dispatch 调用处拒绝错误 Op、
旧 cursor-list/tag 调用兼容，以及真实下游回归；单一 Op 合同的成功不能替代这些验收。
