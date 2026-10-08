# #194：名义 helper 的输入证据

基于 main `37f55cd`，使用正式 Calcit / procs `0.29.0-alpha.19` 和
js-ffi `0.2.1-alpha.15`。这是独立于混合 cursor key 修复 #229 的变更。

## 接口与生产者

`element-name`、`coerce-element`、`coerce-component` 原签名接收 Dynamic，
实现通过 `assert-type` 将其视为 Element 或 Component，完整 strict workflow
分别报告未证明的名义类型断言。两个纯转换 helper 还被标记为 `:js-ffi`，
但实现没有任何宿主调用。

输入现在分别为 Element、Element、Component。移除三处冗余 `assert-type`
和两个不准确的 FFI 标记；转换 helper 返回原值，字段、ref、children 与组件
身份不变。`element-name` 保留既有 let 与字段读取。

`purify-element` 的开放结果不能直接进入关闭的名义合同。生产代码的
`make-string`、`realize-ssr!` 在净化之后使用既有 `as-element` 校验，再交给
`coerce-element`。净化顺序、合法树的 HTML、事件/ref 清理和空组件树报错
保持；未经验证的数据不能再仅靠 facade 的返回声明获得名义类型。
原有递归 ref 测试使用相同边界，断言保持不变，确认测试表达式实际执行。

公开迁移示例加入 `docs/guide/virtual-dom.md`；已具有名义类型的值直接调用
helper，开放数据先经过 `as-element` / `as-component` 校验。状态树、dispatch
合同和 type slot 不变。

## 验证

- 全部 109/109 native tests；递归 ref 清理与空组件树两项测试单独执行通过。
- 全部 82/82 Node tests，包括新增 helper、ref 与 children 身份回归。
- DOM host 与 Canvas 四项回归，JS/Vite build 通过。
- 名义访问器脚本扩为 31 项静态拒绝用例：原有 22 项，新增六项错误具体类型
  与三项开放 Dynamic 生产者；正控制检查原值身份。
- 将同一脚本放到独立 main Snapshot 回放，基线在 `element-name 42` 上直到
  运行时读取 Struct 字段才失败，不能满足调用处的静态拒绝断言。
- 两个转换 helper 的 concrete-return-proof 定向审计零诊断。
- Markdown：95/95 文件、120/120 代码块通过；本历史文件无代码块，单独检查。
- Snapshot canonical format 无变化，git diff 检查通过。

计数只取 Respo 项目命名空间的 definition code 调用 AST，排除依赖、schema
与附带测试：assert-type **72 → 69**，unsafe-coerce **19 → 19**。不使用全局
query 的依赖合计来代表框架源码。

质量门禁通过，实际 schemaDynamic185 / typeNotFull185 / unresolved211。
按三个具体签名退还预算：element-name 的 schemaDynamic/typeNotFull/unresolved
各 1→0；两个 coerce helper 的 typeNotFull 各 1→0。总预算由
191/192/219 降为 **190/189/218**，unsafe 总预算保持原值，未提高任何预算。

完整 strict workflow 的诊断由 **27 → 24**；仍包含 demo、其他生产者、core
依赖和 type slot 诊断。本项不关闭 #194/#195，也不替代两个真实下游最终
回归或 dispatch 路线决定。生成 JS 和 JSON 报告均不入库。
