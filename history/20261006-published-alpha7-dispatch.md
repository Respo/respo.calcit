# #195：正式 alpha.7 的同一组 dispatch 探针

正式 Calcit 0.29.0-alpha.7 已发布。本轮以 crates.io 该版本的 macOS 构建
复查原有 64 个探针，所有既有断言通过。Snapshot 仍由项目固定的 alpha.6
CLI、transaction dry-run 和 revision 前置条件创建，再交给 alpha.7 检查及
适用的 native 回放；未改动生产 type slot 或框架签名。

与此前正式 alpha.6 的 61 个共同案例相比，60 个接受/拒绝结果相同。
current-struct-number 从通过变为拒绝，但诊断是 DomProps 需要 48 个字段而
fixture 只给 1 个字段，并未指向 dispatch。不能据此声称错误 Op 已被检测。
三个 callback 对照同样为：具体 Op 通过且 native 执行成功；同一 slot 参数
及 Number 拒绝。泛型 Ref tree、Props/Store 与组合正例仍未通过。

因此修正 Struct fixture：从实际 DomProps AST 查询字段，保留 on-click
回调，其余可空字段显式填写 nil。新增 current-struct-valid-op 对照，必须通过
后才能讨论同形状的错误 Op；共 65 个场景。生产源码与原有其余场景未改动。
修正后的正式 alpha.6 本地 65 个场景及原有断言全部通过，完整 Struct 的合法
Op 对照通过。新的双版本完整结果须由同一提交的 Actions 核实；旧 Struct
失败不能作为其依据。

CI 新增独立 alpha.7 job：先严格安装固定 alpha.6 依赖并保留其 mutation CLI，
再用官方 alpha.7 release CLI 检查完全相同的 fixture。原 alpha.6 主 job
继续验证现有应用与 JS runtime。新 job 不生成应用 JS，也不把 runtime alpha.6
描述为与 alpha.7 的生产配对验证；完整探针 JSON 只写入 runner 临时目录。

## 独立的 alpha.7 框架回归

在临时 Respo #224 `f2f03d8` 副本中，正式 registry alpha.7 CLI 与 procs
alpha.7 配对，源码保持完全相同：默认严格/warn-dyn-method、325/325 框架定义、
106/106 附带测试、DOM host、4/4 Canvas 宿主回归、22/22 Node 回归通过。
这些证据不改变本 PR 的 alpha.6 版本固定，也不代表真实下游已完成。

同一临时副本的 `fix --workflow strict --verify` 尚未通过，报告 75 项
review diagnostics，其中 Respo 57、core 14、js-ffi 4。该 workflow 的全部
报告为 error，但不同诊断码与 source review 候选需要逐项审阅，不能自动判为
语言缺陷，也不能用公开定义检查的成功覆盖这一失败。

Diary #69 的正式 alpha.7 Actions 同样失败在 strict workflow review，
尚未进入其入口检查。#1540 所规划的 facade、dispatch、effect/state 真实消费者
证明仍需分片推进；不删除其 gate、不扩大 Dynamic/unsafe，也不宣称已完成升级。

本机 alpha.7 是 registry 的 debug 构建，本文不对不同构建的耗时进行性能
比较。原始 JSON 和日志保留在临时目录，未入库。
