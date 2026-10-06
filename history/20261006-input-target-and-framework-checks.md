# #104 / #194：复用事件 target 合同，并持续检查全部框架定义

## 事件字段的已有证明

`DomEvent` 与 `DomInputEvent` 均已将 target 声明为
`JsNullish<DomElement>`。`input-event-value` 和 `input-event-checked?`
只使用这一字段，且 DomElement 已声明 value / checked。因此直接保留原 event
绑定即可，不需要先将事件强转为 DomInputEvent。两个函数的公共签名、Option
判空和缺少 target 时的原错误消息保持不变。

新增宿主回归验证 null / undefined target 的原错误消息，以及原 event/target
receiver、target 到字段的读取顺序与各一次 getter。false、空字符串和开放 value
对象保持原值及身份。value 返回 Dynamic，未添加校验、转换或默认值。
键盘事件的实际种类边界仍保留。DomInputEvent 作为已有公开 trait 也继续保留。

项目 definition code 的 unsafe-coerce 从 21 降至 19，assert-type 仍为 84；
两个 helper 的 unsafeCoerce 预算 1 → 0，聚合预算 32 → 30，其余预算不变。
schemaDynamic / typeNotFull / unresolved 保持 183 / 186 / 209。

## #104 的当前复查范围

原 issue 报告的是 Calcit 0.13.16。当前固定为已发布 Calcit / procs
0.29.0-alpha.6 和 js-ffi 0.2.1-alpha.13，不把不同工具链的告警计数作等价比较。

| 原报告位置 | 当前实现与证据 |
| --- | --- |
| find-props-diffs 的动态 `.to-list` | 参数已声明为 List<List<Dynamic>>，实际使用 first-pair、pair-key/value 和 List 操作；公开定义严格检查通过 |
| event->edn 的未声明 value 访问 | DomEvent.target 和 DomElement 字段合同，以及 Option 的 some 分支提供证明；保留真实开放 value |
| create-style! 的 innerHTML | 通过 DomElement 和 set-inner-html! 写入；创建 DOM 和可空 cache 的宿主边界仍保留 |

默认入口 `--warn-dyn-method --check-only` 通过；当前可达项目 definition 的
dynamic-methods 分析为零 findings。该分析只覆盖可达代码，不能单独证明全库。

因此新增 `yarn check-framework-types`，在上述入口检查后，以 check-public
检查 23 个非空框架命名空间的所有 325 个定义。原已存在但没有 definition 的
respo.schema.listener 经 query defs 确认为 0，不作为覆盖项；demo、测试及入口
不计入框架公开定义。CI 执行相同命令，防止未被 demo 调用的 helper 退化。
这些是默认 browser target 的静态检查，不执行宿主，也不证明 Node target、
应用 dispatch 或真实下游已验收。

## 验证与文档

- 框架检查脚本通过：默认动态方法门禁、325/325 定义，complete true、零 diagnostics。
- 质量门禁、原有 106 项附带测试、DOM host 与四种 Canvas 宿主回归通过。
- 重新生成默认 JS，既有 event configuration / SSR-CSS 共 8 项回归通过。
- DOM events 文档移除过时的裸字段实现示例，改为中文说明当前宿主合同；
  文档 4/4、README 13/13 代码块通过。
- 本地复用既有同版本 runtime，逐条执行 npm script；完整干净安装交由 PR Actions。

生成 JS、完整 JSON 与日志不入库。#194 的至少两个真实下游正式回归，
#195 的路线选择、生产 dispatch 与 legacy 兼容仍待完成，不据此关闭 milestone。
