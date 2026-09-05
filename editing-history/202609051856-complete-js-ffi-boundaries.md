# Complete renderer JS FFI boundaries（补全渲染器 JS FFI 边界）

Base: `e7d48e051b64deb106b9b24d13c5420d56696669` (`origin/main`, Respo 0.16.92)

Issues: `calcit-lang/calcit#865`

## Summary / 摘要

- Declared `:js-ffi` on the two effect-tree collectors and the two shared diff traversals that directly emit browser-console diagnostics.
- 为两个 effect 树收集器及两个直接输出浏览器控制台诊断的共享 diff 遍历函数声明 `:js-ffi`。
- Audited the reachable patch and event-format adapters, marking only definitions whose own bodies perform raw or typed external-object operations. The `DomElement` contract now exposes write permission only for the five fields that `rm-prop` clears.
- 审计可达的 patch 与事件格式适配器，仅标记函数体自身执行原始或类型化外部对象操作的定义；`DomElement` 合约只为 `rm-prop` 实际清空的五个字段开放写权限。
- Extracted the native `String.replace` callback from `dashed->camel` into the fully typed, pure `uppercase-dashed-match` helper. It uses Calcit string slicing and character-code conversion, removing the anonymous callback's raw host operation and one `unsafe-coerce`; only the outer `String.replace` adapter retains `:js-ffi`.
- 将 `dashed->camel` 的原生 `String.replace` 回调抽取为全类型纯函数 `uppercase-dashed-match`；它使用 Calcit 字符串切片与字符码转换，移除了匿名回调中的原始宿主操作及一个 `unsafe-coerce`，仅外层 `String.replace` 适配器保留 `:js-ffi`。

## Validation / 验证

- A strict gen-code consumer linked to this worktree advances through every reachable Respo-owned JS FFI boundary. Its next failure is `E_ERASED_GENERIC_RELATION` in `gen-code.comp.container/comp-container`, outside Respo.
- 使用本工作树的严格 gen-code 消费者已通过全部可达的 Respo JS FFI 边界；下一失败为 Respo 之外 `gen-code.comp.container/comp-container` 的 `E_ERASED_GENERIC_RELATION`。
- Repository tests pass 38/38; the Node 24 typed DOM-host harness also verifies dashed-name conversion. Documentation passes 51/51 files and 111/111 blocks; canonical Snapshot validation, check-only, static quality, JavaScript emission, and the Node 24 Vite production build pass. Browser smoke adds a task and reaches `Tasks: List/1` with no warning/error logs.
- 仓库测试通过 38/38；Node 24 类型化 DOM-host harness 同时验证 dashed 名称转换。文档通过 51/51 文件与 111/111 代码块；Snapshot 规范化、check-only、静态质量、JavaScript 生成及 Node 24 Vite 生产构建均通过。浏览器 smoke 成功添加任务并达到 `Tasks: List/1`，无 warning/error 日志。
