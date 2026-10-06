# #194 / #104：通过可空分支取得 Canvas context

`shared-canvas-context` 已声明为 `JsNullish<DomCanvasContext>`，但
`text-width` 原先用 `js-present?` 判空后，仍通过 `unsafe-coerce` 取得 context。
现在使用既有 `js-nullish->option`，在 `:some context` 分支直接调用已证明的
Canvas 能力，移除这一处转换。函数签名与 context 的初始化方式保持不变。

`js-present?` 与 Option 转换都以 `js-nullish?` 为判空依据。没有 document，
或 `getContext` 返回 null / undefined 时，仍返回宽度 0；非空时使用原宿主对象，
仍先写入 font，再调用 measureText，保留方法的 this。返回宽度 0 的真实测量
也不会误判为缺少 context。创建 canvas 时从通用 DomElementHost 到
DomCanvasElement 的真实 FFI 转换仍保留，没有扩大该接口的承诺。

## 验证

工具链使用已发布 Calcit / runtime `0.29.0-alpha.6` 和 js-ffi
`0.2.1-alpha.13`。默认严格、warn-dyn-method 严格、收紧后的 quality、
respo.util.dom 的全部 4 个公开定义检查、原有 106 项附带测试通过。
独立 DOM host 与默认 JS 均重新生成，原 DOM host 及 SSR/CSS 的 4 项回归通过。

新增 4 个独立进程的宿主回归，分别重新初始化非空、null、undefined、
无 document 的 shared context。非空场景验证对象身份、方法 this、font 写入
与测量顺序、空文本宽度；空场景验证重复测量仍返回 0，且不重复创建 canvas。
这些测试接入既有 `test-dom-host`，完整安装由 PR Actions 继续验收。

本地仅复用既有同版本 runtime，缺少 Yarn 安装状态文件，因此逐条执行
`test-dom-host` 的实际命令；不宣称本地重新完成 immutable 安装。

同口径项目 definition code 的 `unsafe-coerce` 从 22 降至 21，
`assert-type` 仍为 84，schemaDynamic / typeNotFull / unresolved 保持
183 / 186 / 209。text-width 的 unsafeCoerce 预算从 1 收紧到 0，聚合预算
从 33 降至 32，其余预算不变。分析 JSON、日志和生成 JS 不入库。

#194 仍需 issue 盘点发布与至少两个真实下游的正式验收；本次修改不代表
整个类型边界 milestone 已完成。
