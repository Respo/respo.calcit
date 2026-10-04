# #195：dispatch 边界的可重复调查

本次先落实 issue 的反例与路线调查。生产签名及运行时未修改，#195 尚未完成。
`scripts/probe-dispatch-boundary.mjs` 将当前快照复制到自建临时目录，链接只读
依赖，通过正式 0.28.0 CLI 修改 demo main!/reload! 和候选 EventHandler
schema，再执行严格检查；结束删除副本。每个场景从当前源码重新复制，
检查 entry 仍绑定 respo.app.schema/Op，不复用上一个场景的变更。

## 实测结果

正式 0.28.0 和本地候选 0.29.0-alpha.1 分别检查同一批 CLI 生成的输入。

| 场景 | 正式版 | 候选版 |
| --- | --- | --- |
| 当前 EventHandler + struct props，d! 42 | 接受 | 接受 |
| 当前 EventHandler + map props，d! 42 | 接受 | 接受 |
| 仅将 EventHandler 的 dispatch 参数改为 `'*dispatch-op`，struct props，d! 42 | 接受 | 拒绝于 struct 字段边界 |
| 同一原型，map props，d! 42 | 接受 | 接受 |
| 同一原型，struct props，合法 `Op :clear` | 接受 | 拒绝于 struct 字段边界 |
| 同一原型，struct props，旧 cursor list/tag | 接受 | 拒绝于 struct 字段边界 |
| 回调 hint-fn 直接声明 `'*dispatch-op`，d! 42 | 拒绝 | 拒绝 |
| 同一 hint-fn，合法 `Op :clear` | 拒绝 | 拒绝 |
| 同一 hint-fn，旧 cursor list/tag | 拒绝 | 拒绝 |
| 回调 hint-fn 直接声明具体 `respo.app.schema/Op`，d! 42 | 拒绝于 d! 调用处 | 拒绝于 d! 调用处 |
| 同一具体标注，合法 `Op :clear` | 接受 | 接受 |
| 同一具体标注，`:: :not-an-op` | 拒绝 | 拒绝 |
| 回调 hint-fn 使用 bare `*dispatch-op`，d! 42 | 拒绝于 d! 调用处 | 拒绝于 d! 调用处 |
| 同一 bare 标注，合法 `Op :clear` | 接受 | 接受 |
| 同一 bare 标注，旧 cursor list/tag | 拒绝于 d! 调用处 | 拒绝于 d! 调用处 |

探针共 18 个场景。明确检查具体 Op 的合法值作为正控制，错误 Number 作为
负控制；脚本断言负控制诊断包含 d! 调用及 respo.main/main!，避免将环境
失败或任意报错误计成类型检查成功。其他结果用于观察，不能当作发布门禁。

直接标注 slot 的诊断仍显示 `'*dispatch-op`，合法 enum Op 也被拒绝；这与
成功约束应用 Op 的要求不一致。尝试 bare `*dispatch-op` 时，正式 CLI 的
schema EDN 校验拒绝该 token，未写入源码。单独在 hint-fn 的 AST 中使用 bare
`*dispatch-op` 则能正确接受合法 Op、拒绝 Number。这将缺口缩小到 schema
输入/引用的归一化与后续传播；不能用“错误值被拒绝”单独证明该路线可用。
正确识别 slot 后，旧 cursor list/tag 也会被拒绝，兼容输入必须独立验证。

## 两条路线的比较与下一步

| 路线 | 必须贯通的位置 | 当前证据与不足 |
| --- | --- | --- |
| 现有 type slot | handler/listener、保存的 dispatch Ref、render 入口、wrap-dispatch；以及 props 到回调的推断 | bare hint-fn 正负控制有效，但单改一处 EventHandler schema 不足；map 反例仍通过，候选还会拒绝合法 struct 回调。需要解决 schema slot 解析和回调推断，再贯通旧调用的兼容约束。 |
| 泛型 Op | render、handler/listener、持有它们的 Element/Component/RenderNode、Ref 与回调生产者 | 需要在整条持有关系传递同一个 Op，不能仅给 helper 加一个未约束泛型。尚未完成该原型，不能声称标注量或诊断效果优于 slot。 |

尚未选定最终路线。具体应用 Op 的正负控制证明基础调用检查可用，但不是
以手写具体标注替代完整框架迁移。下一步缩小 slot 标注及 callback alias
问题，再评估能同时通过合法值、错误值、map/struct props 和旧调用的方案。
runtime wrap-dispatch 的旧 list/tag 转换仍保留，不能以类型声明删掉这项兼容。

## 文档修正与复现

此前 type-slots 指南与 Respo-Agent 写着“绑定 slot 即可检查事件 d!”；
当前实际签名与上表反例不支持该描述。本次改为中文为主的配置/状态指南，
注明迁移尚未完成，保留逐 entry 的配置方式并给出具体回调标注的实际范围。

```bash
CALCIT_BIN=/path/to/calcit-0.28.0 node scripts/probe-dispatch-boundary.mjs
CALCIT_BIN=/path/to/calcit-0.28.0 CHECK_CALCIT_BIN=/path/to/candidate-calcit node scripts/probe-dispatch-boundary.mjs
```

结果 JSON 只留在临时目录；没有提交大快照或生成 JSON。尚未向 calcit#1555
发布结论，当前也没有完成其所需的路线对比数据及 #195 的下游整体验收。

## 后续：本地候选的 quoted slot 解析修复

上表记录的是修复前的候选；后续在编译器解析器统一 quoted symbol、quote
表达式与 bare slot 身份，再对同一 18 个场景复跑。修改后
annotated-slot-valid-op 已通过，annotated-slot-number 在 d! 调用处拒绝；
quoted hint-fn 与 bare hint-fn 的四个结果全部一致。

编译器库测试 952 项通过、一项既有 ignored；Respo 默认严格检查与原有
96 项 native 通过。本地编译器修复提交 fe94903f；完整 cargo test 为
1,583 passed、0 failed、一项既有 ignored，fmt/clippy 通过。明确指定候选
CALCIT_BIN 后完整 check-all 通过，覆盖 TS、Agent 协议与 native/JS/WASM。
这项候选修复尚未发布，Respo 的 0.28 pin 和生产签名保持原样。

slot-struct-valid-op 仍在 DomProps 字段边界被拒绝，slot-map-number 仍通过。
接下来分别处理 handler alias 的类型关系与 map props 的回调推断，再贯通
wrap-dispatch 的 typed/legacy 调用合同。quoted hint 的修复不是 #195 完成标记。
