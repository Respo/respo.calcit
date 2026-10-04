# #104：框架定义的类型边界复查

默认 demo 的可达图曾在正式 0.28.0 与候选 0.29.0-alpha.1 的动态方法检查下通过。本次用 analyze check-public 和 --warn-dyn-method 检查框架定义：从 query ns 实际返回的命名空间选择框架部分，排除 respo.app.*、respo.test.*、respo.main 与元数据。respo.schema.listener 没有定义，先因零覆盖守卫被拒绝，再明确从选择中排除。最终范围为 23 个非空命名空间、325 个定义，不能表述为整个应用或所有下游通过。

初次检查：正式版 324/325，候选 323/325。两者都在 respo.resource/load-resource! 调用的 JS-FFI promise-observe! 中失败：已固定缓存源码用 assert-type 声明 js/Promise.resolve 结果为 PromiseHost，但输入只有 JsNullish<JsObject>，不能静态证明。候选还拒绝 event->string 的 Dynamic 输入直接调用要求 ToString 的 turn-string。

## event->string 的实际约束

函数体保持原样：调用 turn-string，再去掉前三个字符。通过正式 CLI 将 schema 改为 T where T: ToString，表达函数体已经要求的能力。保留 Tag 与 String 两类用法；没有为了消除诊断将参数缩成单一事件 Tag。定义附带测试断言 :on-click 得到 click、字符串 on-change 得到 change，正式版与候选均通过。首次尝试的旧裸 schema map 被 CLI 校验拒绝，随后采用 canonical Fn schema；失败输入未写入 Snapshot。

修改后的两组 native tests 都为 97/97。质量 baseline 门禁通过。再次检查同一 325 个定义，正式与候选均为 324/325，只剩已固定依赖的 Promise 问题。不能把这个结果写成框架全通过。

## 已有上游修复的独立验证

本地 JS-FFI main 605367e 的 promise-observe! 已用 unsafe-coerce 表达 Promise.resolve 的 host 边界；正式工具链准备分支 32cdc2a 保留同一修复并固定 Calcit 0.28.0。在临时 Respo Snapshot 副本中仅替换模块链接到该准备分支，同一 23 个命名空间在正式和候选均为 325/325、0 diagnostics、complete true。临时副本随后清理。

原工作区继续使用 deps.cirru 固定的 JS-FFI 0.2.1-alpha.11 缓存源码，没有改 pin，也没有改写模块缓存。下一步需要核对可用的正式上游 release 后接入修复，并重新验证 resource 的实际 Promise 行为；仅靠本地模块组合不能宣布 #104 完成。JSON 与日志保存在临时目录 respo-104-*，未入库。

本轮候选文档门禁实际退出 0：84/84 文件、118/118 代码块通过。正式质量 baseline 门禁退出 0，未放宽预算。
