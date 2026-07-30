要求必须查看 Calcit 命令行工具的用法:

```bash
cr docs agents --full
```

一般开发者会运行:

- `cr js` 默认单次编译 JavaScript
- `cr js -w` 监听变更并持续编译
- `yarn vite` 启动 Vite 开发服务器

类型标注建议（schema-first）:

- 优先使用 `cr edit schema <ns/def> --code 'quote $ :: :fn $ {} ...'` 维护函数签名；`quote` 是 CLI 传入一个 AST 节点时必需的代码数据边界，不会存入 schema payload。
- 仅在确有必要时使用 `hint-fn`，并优先采用 schema map 形式；避免旧 clause 写法。
- 修改签名后，优先用 `cr js` 验证，确保不会因类型告警阻断编译。

Typed dispatch / type slot:

- Respo 通过 `respo.schema/*dispatch-op` 为事件回调传递应用级 `Op` 类型。应用应使用 `cr config set-type-slot :dispatch-op app.schema/Op` 为每个 entry 单独绑定，不要在 `main!` 中写 `bind-type` 或依赖 `with-type-slot` wrapper。
- 修改 `d! $ :: ...`、事件 handler schema 或 entry 配置前，优先复用模块指南：`cr docs search 'typed dispatch' --module respo.calcit`，再运行 `cr docs read type-slots.md --full --module respo.calcit`。
- 命名 entry 不继承默认 `:configs.type-slots`；用 `cr config type-slots [--entry name]` 确认实际绑定，并以同一个 `--entry` 运行 `--check-only` / `js`。

然后 GPT 调用 `cr` 命令增量编辑源码, 在 `cr edit inc` 运行时触发重新编译.

文档示例校验建议:

- 对 README/文档中的 Cirru 代码块，使用 `check-md` 并显式加载当前项目 `calcit.cirru` 作为依赖:
  - `cr calcit.cirru docs check-md README.md --dep ./`
- 若 README 代码块用到 `respo.core/clear-cache!`（依赖 `memof.once`），校验时额外添加 `memof` 依赖:
  - `cr calcit.cirru docs check-md README.md --dep ./ --dep ~/.config/calcit/modules/memof/`
- `--dep ./` 会按目录加载 `./calcit.cirru`，用于在代码块中访问 `respo.core` 等命名空间函数。
- `--dep ~/.config/calcit/modules/memof/` 会按目录加载 `memof/compact.cirru`，避免 `memof.once/*` 相关解析失败。
- 若代码块是“示意片段”而非可独立运行程序，优先标记为 `cirru.no-check`。
- 若需要在单个代码块里串联多个表达式并共享中间值，使用 `let` 显式绑定；默认不会把前面表达式自动注册为全局定义。

Respo 特有约束（不要上推到 Calcit 主程序）:

- `defstyle`、`:class-name`、DOM props、样式字符串等约定，只放在 Respo 文档或 Agent 文件中说明，不要要求 Calcit CLI/Rust 主程序内置这些领域知识。
- 编辑 `defstyle` 时，selector 使用字符串叶子，如 `|&`、`|&:hover`、`|input&`；不要写裸符号 `&`。
- 样式值只要带空格或特殊字符，优先按字符串处理，并尽量复用 CLI 已输出的序列化形式。例如 `"|4px 10px"`、`"|1px solid "`、`"|calc(100vh - 76px)"`。
- 遇到这类字符串，不要期待 Calcit 主程序理解它们的前端语义；应通过 Respo 文档里的工作流来规避误写：先 `cr query def` 看当前序列化，再用 `cr edit def --overwrite --file ...` 覆盖。
- 相关细节统一收敛到 `docs/guide/styles.md`，Agent 文件只保留高频提醒，避免重复扩写。

CLI 查询速查(面向 Agent):

- 列出命名空间:
  - `cr query ns`
- 查看核心 API:
  - `cr query defs respo.core`
  - `cr query peek respo.core/defcomp`
  - `cr query def respo.core/render!`
  - `cr query examples respo.core/defcomp`
- 搜索功能与用法:
  - `cr query find render!`
  - `cr query usages respo.core/render!`
  - `cr query search render --filter respo.core`
- 查看项目配置:
  - `cr query config`
