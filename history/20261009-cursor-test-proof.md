# #194：cursor Struct 回归的真实证据

在 PR #230 的 `0d5b459` 基础上，将 `coerce-cursor-test-state` 的
assert-type 替换为 struct? / &struct:matches? 的名义身份检查，返回原值，
移除不准确的 FFI 标记。输入泛型保留开放的调用位置，返回类型仍是
CursorTestState；不通过返回声明假定开放状态读取结果已经具有名义类型。

原有连续两次 update-states-merge 的 Struct 回归保持，仍检查 draft 更新、
其他字段及 Struct 身份。新增 native/JS 检查原值身份和非法输入：nil、
数值、形似字段的 Map 及其他 Struct 不会被静默接受；JS 额外覆盖 undefined
与 List。合法原对象及更新后对象都原样返回，原状态值保持不变。

113 native / 88 Node tests 通过；完整 strict 诊断18→17，此断言诊断已
消除，完整 strict 尚未通过。项目 assert-type64→63，unsafe19不变；
质量实际185/182/211，退还此 helper 的 typeNotFull 预算，总预算
190/186/218。没有增加 Dynamic 债务、强转或 FFI 信任。

这是测试证据边界修复，未改状态树读写设计，也未替代两个真实下游回归。
JSON/JS 生成报告不入库。

本地框架335定义、37静态反例、99 Markdown文件/120代码块、质量
与 JS/Vite 检查通过；Snapshot格式无变化，git diff检查通过。
