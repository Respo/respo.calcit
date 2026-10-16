# 0.30.1 既有派发边界验收

关联 #266、#195 与 calcit-lang/calcit#2080。本轮按用户确认的兼容路线推进，不采用 #267 删除旧调用的方案。

## 使用者影响

候选模块 0.16.121 使用正式发布的 Calcit CLI 与 `@calcit/procs` 0.30.1-alpha.4，JS-FFI 保持 0.2.3。安装遵守本机已有的一小时新包隔离期，没有给本次包增加豁免。模块尚须完成 PR 审查和 CI，正式 tag 发布后消费者才能升级。

框架保留现有开放派发协议：`wrap-dispatch` 的运行时、schema 与原测试不变，仍支持 Tag、cursor-list、直接 Enum，以及旧可变参数形式。Tag 携带 nil 时仍生成无 payload 的匿名 Enum；false 和 0 不当作缺失。cursor 中 Tag/String/Number key 的值和身份不被改写。

`render-with!` 的第三个参数补齐为与 `render!` 相同的 `Fn<Dynamic,Unit>`，不是新增一套派发 API。窄的应用 `Fn<Op,Unit>` 不再直接冒充这个开放回调；demo 的普通挂载和 SSR 均通过受检入口转换后调用原 `dispatch!`。业务更新器继续只接收名义 `Op`。

demo 解码明确区分自己的名义 Enum 和旧匿名 Enum，检查变体、参数数量、String、cursor List 与 TodoState 字段；未知变体、其他名义 Enum 或错误 payload 在写入 store 前抛错。旧未知操作仅记录日志并返回原 store 的宽松行为不再作为 demo 的有效输入合同。框架仍保留开放输入，不把这个 demo 的变体清单推广给其他应用。

## 验证范围

- 原 143 组附带测试全部保留，新增 3 组操作解码和旧派发回归；146 组在 native 和生成 JS 上同源回放，无排除。
- 405 个项目定义检查，23 个框架命名空间的 337 个定义检查。
- 完整 `fix --workflow strict --verify`：匹配版本 preflight 通过、默认 entry 通过、safe fixes 为 clear、顶层 diagnostics 为空。普通入口通过不能替代该结果。
- 原 nominal accessor、DOM patch、callback、DOM host/canvas、event config、SSR、scheduler、持久化、memo、keyed move、cursor、render traversal、patch lookup、示例、Markdown 和生产构建门禁保持。
- 原宿主测试的名义身份和 Map 读取断言显式取出新 Option 的 payload；未删除原断言、改默认值或忽略失败。新增 callback 负例拒绝没有 decoder 的窄业务回调和非 Unit 返回。
- 在独立 localhost origin 的真实浏览器新增合成任务、编辑并切换完成状态，刷新后原 ID、文本和完成状态恢复，控制台无 error。已挂载 demo 的真实派发回调拒绝 Number、错误 String payload 和未知变体，store 身份不变；同一页面使用原 `wrap-dispatch` 成功派发旧 Tag 和混合 cursor-list。

## 保留边界与未完成范围

`respo.memo/call-value` 仍是既有可变参数调用边界，spread planner 保留 `requires-review`，没有可证明的固定参数替换。本轮人工审阅保留其运行时函数检查和直接调用，继续由原 memo 用例验证参数、结果、身份、缓存及异常传播；不以强转或假 schema 声称固定签名。strict workflow 的这类信息候选不等于编译器 proof 失败。

类型/FFI 盘点仍会列出历史开放边界和已有 unsafe，未新增 unsafe 或放宽合同，也不声称它们已全部收窄。完整 slot/泛型路线和公开 dispatch 类型设计仍由 #195 决定。本模块通过不代表九个消费者完成新正式配对验收，不提前关闭 #2080 或发布稳定 0.30.1。
