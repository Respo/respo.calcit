# #194：组件缓存返回证据

在 PR #230 的 `150974e` 基础上，修复 `respo.memo/call-component` 的完整
strict 返回证明：原实现只通过 `component?` 布尔判断后返回开放值，完整
proof 不能据此证明 Component。保留原 guard 和报错，在返回位置使用现有
`as-component`。生产入口 `memo-comp-by` 使用同一返回校验。

不改变缓存 key、参数比较、帧管理、命中路径或回调调用次数，不复制或包装
组件。新增 native 回归验证原组件身份、完整参数与一次调用；JS 回归覆盖
缓存命中、组件身份、nil/undefined/数值/List/Map/Fn 非组件结果、回调异常
身份以及非函数输入的原始报错。原有 memo 的嵌套依赖与失败帧测试保留。

112 native / 85 Node tests 通过。完整 strict 诊断20→19，call-component
返回证明错误消除，剩余 strict 仍未通过。质量门禁通过，实际计数
185/183/211，预算190/187/218；项目 assert-type65、unsafe19均不变，
没有新增断言、unsafe 或 FFI 信任。

文档补充组件返回校验，修正“开放 memo 结果可以只靠 assert-type 收窄”
的旧建议。本阶段不关闭 milestone，两个真实下游最终回归和 dispatch
路线仍需继续完成。生成 JS、JSON 报告不入库。
