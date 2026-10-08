# #194：全局键盘的禁用命令证据

在 PR #230 的 `e55e282` 基础上，移除键盘 effect 中未证明的
`assert-type raw-disabled (Set String)`。`get` / `option:unwrap-or` 的结果
是开放值，不能由 options 的外层声明反向证明。现在在挂载/更新边界使用
正式 alpha.19 支持的 `decode-map-as` 校验集合和字符串成员。

合法选项的默认 p/s、自定义键、空集合、Ctrl/Meta 判断、事件转发、监听器
更新及卸载逻辑保持；不更改传入的 options/集合。非法形状在注册或移除
监听器前失败。未扩展 listener 的 opaque Fn 合同，也未修改 dispatch。

新增两个 JS 宿主回归，实际运行 keydown/keyup effect 方法：验证默认键、
自定义键、空集合、转发事件、旧 listener 移除/新 listener 注册、卸载清理；
验证 nil/undefined/Number/List/Map/非字符串 Set 被拒绝，非法更新保留旧
listener。原有测试保持。

完整 strict 诊断19→18，此定义已无诊断，但完整 strict 尚未通过。项目
assert-type65→64，unsafe19不变；质量185/183/211，预算190/187/218
保持，没有提高预算或引入新强转。生成 JS/JSON 不入库。

本地完整验证：112 native / 87 Node tests、335框架定义、37静态反例、
98 Markdown文件/120代码块、质量与 JS/Vite 通过；Snapshot canonical
格式无变化，git diff 检查通过。键盘测试使用可检查注册/移除操作的 JS
宿主替身，直接调用编译后的 effect 与 handler；未声称真实浏览器 UI 验收。
