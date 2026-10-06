# #195：已发布 alpha.6 的 dispatch 边界复查

本轮基于 Respo `0072610`（`0.16.114-alpha.7`），编辑与检查均使用已发布
Calcit `0.29.0-alpha.6`，JS runtime 为同版本 `@calcit/procs`，模块使用
js-ffi `0.2.1-alpha.13`。此前调查中的本地 alpha.1 候选结果不能代替该发布组合。
完整探针执行 61 个场景并退出 0；合法 holder 与 factory 的 native 正例通过。

## 复现与编辑保护

```bash
CALCIT_BIN=/path/to/calcit-0.29.0-alpha.6 node scripts/probe-dispatch-boundary.mjs
```

脚本复制根 Snapshot 和 deps 到临时目录，仅链接已解析的模块；所有 CLI
修改先预览事务，再以预览返回的 `original_revision` 执行 `--expect-revision`。
结束后删除临时副本，根 Snapshot 没有变化。结果 JSON 保留在临时目录，
不入库。CI 增加同一调查命令，并只打印版本与场景数；其退出 0 表示探针断言
成立，不表示 #195 的生产迁移已通过。

本机 `caps --strict --ci` 通过。完整 `yarn install --immutable` 因磁盘空间不足
失败；本地探针使用 Message 工作树已安装的同版本 npm runtime 链接，不能将此
记作完整安装通过。CI 从干净环境执行原有完整安装与框架门禁。

## 发布版已确认的边界

| 场景 | alpha.6 实际结果 | 能证明的范围 |
| --- | --- | --- |
| 当前 EventHandler，Struct 或普通 Map props 调用 `d! 42` | 接受 | 当前配置未阻止错误 Op |
| 只把 EventHandler schema 的首参数改为 slot | Number 拒绝，但合法 Op 也被 DomProps 字段拒绝 | 不能作为迁移成功证据 |
| 普通 Map props，无显式回调合同 | Number 仍接受 | 更改 EventHandler schema 不会覆盖该路径 |
| 回调显式标注应用的具体 Op | 合法 Op 接受；Number、未知变体拒绝 | 仅覆盖该标注回调 |
| 内联 `hint-fn` 使用 bare `*dispatch-op` | 合法 Op 接受；Number 拒绝 | slot 可以约束该表达式的调用 |
| lexical 泛型 callback 转发自己的 Op | 接受 | 正常转发可编译 |
| 同一 lexical 泛型 callback 调用 Number | 接受 | 该路线仍有错误接受 |
| 泛型 holder 正例 | 静态接受，native 通过 | 原型正常运行 |
| 泛型 holder 的 B controller 与 A 节点混接 | 静态接受，native 名义身份断言失败 | 相同 tag 不能代替 Op 的名义身份 |
| factory 正例与异类 controller | 正例 native 通过；反例拒绝 | 该构造布局保留关系 |
| 树 Ref 与 Props/Store 原型 | 合法正例也被拒绝 | 这些组的反例拒绝不能计作有效检查 |

树 Ref 的正例诊断包括 `ref<'calcit.core/Option<...>>` 与
`ref<'Option<...>>` 的不匹配；Props/Store 还出现 `Store<dynamic>` 与
`Store<State>` 的 reset 合同不匹配。报告保留这些正例失败，未通过扩大
Dynamic、删除原型或改变断言来获得通过标记。

## Slot 引用的两个输入位置

持久化 schema 以 Cirru EDN 保存；其中 bare `*dispatch-op` 会被 CLI
schema validation 拒绝为 unknown EDN token。这次尝试在 dry-run 阶段停止，
没有写入。schema 的 quoted symbol 与内联 `hint-fn` 中的 bare 表达式是不同
输入位置，不能把后者直接复制到前者。

发布版内联 `hint-fn` 使用 quoted `'*dispatch-op` 时，合法 Op 被报告为
不符合字面类型 `'*dispatch-op`；同一位置改用 bare slot 的合法正例通过。
这仅说明该表达式写法的差异，不证明 slot 已贯通 DomProps 或持有链。

新增六个内联 bare slot 可变参数场景，`d!` 合同为首参数 slot、rest data
Dynamic，entry 仍绑定应用 Op：

| 调用 | alpha.6 实际结果 |
| --- | --- |
| 合法 Op | 接受 |
| 同一合法 Op 加 data | 接受 |
| cursor List 加 data | 拒绝，d! arg 1，实际 list&lt;tag&gt; |
| tag | 拒绝，d! arg 1，实际 Tag |
| Number | 拒绝，d! arg 1，实际 Number |
| 未声明变体 | 拒绝，Op 没有该变体 |

合法 Op 加 data 通过后，legacy list/tag 的失败可以归属首参数类型，而非
可变参数个数。原有 55 场景完整保留；新增断言核验同一正例的 data 兼容与
Number 调用位置，JSON 和日志均留在临时目录。

## 尚未完成的 milestone 验收

生产 EventHandler、保存的 dispatch、wrap-dispatch 和 renderer 的合同尚未贯通。
普通 Map props 的回调仍需正确传入上下文；仅将首参数改为单一 Op，无法同时
表达现有 cursor-list/tag 归一化入口。需要保留旧调用的运行语义，并在实际
dispatch 调用处拒绝错误 Op，不能把 Op 再放宽为 Dynamic。

#195 的路线决策、生产迁移及向 Calcit #1555 发布反馈均未完成。本记录用于
更新路线判断；前一天候选编译器中的成功结果保留为历史实验，不作为正式版验收。
