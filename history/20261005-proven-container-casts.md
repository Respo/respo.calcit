# #194 / #104：复用已有类型证明，移除六处重复转换

本轮接续 PR #224 的集合和移动循环证明，固定工具链仍为已发布的
Calcit / runtime `0.29.0-alpha.6`、js-ffi `0.2.1-alpha.13`。

## 来源与保留边界

| 位置 | 已有证明 | 修改 |
| --- | --- | --- |
| `patch-instance!` 的 mount-point | 公共签名已经声明 `respo.dom/DomElement`，消费者要求同一类型 | 直接传递同一对象 |
| `extract-effects-list` 的 items | 既有 `list? markup-tree` 分支建立外层 List 证明 | 直接绑定原列表 |
| `render-css-block` 的 entries | `&map:to-list` 明确返回 List<List<Dynamic>> | 直接使用结果 |
| 同函数的 css-line 输入 | 相同 Map 转 List 的返回合同 | 直接使用结果 |
| `add-style` 的 style 对象 | DomElement trait 已声明 style: JsObject；target 改用这一已有合同 | 直接读取 style |
| `replace-style` 的 style 对象 | 相同 DomElement / JsObject 合同 | 直接读取 style |

`unsafe-coerce` 不执行运行时验证；这四处删除没有改变对象、求值次序或
错误处理。组件列表中各成员仍使用原有 effect/listener/render node 分类，
空列表无渲染节点仍走原错误分支。CSS rules 的输入合同和序列化未改动。

两项样式函数的 target 参数从 Dynamic 改为 `respo.dom/DomElement`，原有
renderer/patch 调用链已经返回该类型；通过 `style: JsObject` 字段合同移除
另外两处转换，保留 style-name 与 style-value 的计算顺序、aset 和 Unit 返回。
直接调用它们的 Calcit 消费者现在需传入 DomElement。若接收的是已声明的
`js-ffi.browser/DomElementHost`，可使用既有 `respo.ffi.browser/narrow-element`
跨模块宿主入口；该真实 FFI 边界的转换保留。

保留 raw-styles 到 Map<Tag,Dynamic> 的开放样式边界，以及 `props-as-list`
对嵌套列表的转换：单独 `list?` 只能证明外层列表，不能证明其成员也都是
列表。DOM 宿主、事件对象、canvas context 等真正的 FFI 转换仍保留。

## 计数和预算

同口径 CLI AST 查询（project definition code，含项目测试命名空间与宏模板，
排除依赖和附带元数据）：`unsafe-coerce` 30 → 24，`assert-type` 保持 84。
相对 #194 原始 `b94962e` 的 124 / 41，当前分别减少 40 / 17。
schemaDynamic / typeNotFull / unresolved 保持 183 / 186 / 209。

受影响 definition 的 unsafeCoerce 预算分别收紧为 0、0、1、0、0；聚合预算按同样
六处减少，维持与 definition 总和一致。没有扩大任何预算，也没有通过删除
原有测试或收窄开放输入来获得通过。

## 验证

- 默认严格与 `--warn-dyn-method --check-only` 通过。
- `check-public` 检查 respo.core、respo.css、respo.controller.client、
  respo.render.patch 的全部 124 个定义，124/124、complete true。
- 收紧后的质量门禁和原有附带测试 106/106 通过。
- 重新生成默认 JS，现有 SSR/CSS、event configuration、keyed moves、typed
  DOM creation 共 21/21 回归通过。
- callback 类型回归 21/21；新增一项合法 DomElement 回调的静态正例与
  两项 Number target 静态反例，错误指向样式函数 arg 1，未执行 DOM 写入。
- 新增样式运行回归保留 style 对象身份、camelCase 名称、px/无单位值与
  nil 清空；没有替换或删除原有样式回归。
- 独立 DOM host 入口重新生成并执行，随后重新生成默认 JS。

分析 JSON、诊断日志和生成 JS 未入库。生产 dispatch 合同和 legacy 输入
兼容仍属 #195 的待办；这些转换的删除不代表 milestone 全部验收完成。
