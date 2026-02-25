一般开发者会运行:

- `cr js` 监听变更, 然后编译 JavaScript
- `yarn vite` 启动 Vite 开发服务器

然后 GPT 调用 `cr` 命令增量编辑源码, 在 `cr edit inc` 运行时触发重新编译. 具体用法查看:

- Read `llms/Calcit.md` for Calcit language tools.

文档示例校验建议:

- 对 README/文档中的 Cirru 代码块，使用 `check-md` 并显式加载当前项目 `compact.cirru` 作为依赖:
  - `cr demos/compact.cirru docs check-md README.md --dep ./`
- 若 README 代码块用到 `respo.core/clear-cache!`（依赖 `memof.once`），校验时额外添加 `memof` 依赖:
  - `cr demos/compact.cirru docs check-md README.md --dep ./ --dep ~/.config/calcit/modules/memof/`
- `--dep ./` 会按目录加载 `./compact.cirru`，用于在代码块中访问 `respo.core` 等命名空间函数。
- `--dep ~/.config/calcit/modules/memof/` 会按目录加载 `memof/compact.cirru`，避免 `memof.once/*` 相关解析失败。
- 若代码块是“示意片段”而非可独立运行程序，优先标记为 `cirru.no-check`。
- 若需要在单个代码块里串联多个表达式并共享中间值，使用 `let` 显式绑定；默认不会把前面表达式自动注册为全局定义。

CLI 查询速查(面向 Agent):

- 列出命名空间:
  - `cr demos/compact.cirru query ns`
- 查看核心 API:
  - `cr demos/compact.cirru query defs respo.core`
  - `cr demos/compact.cirru query peek respo.core/defcomp`
  - `cr demos/compact.cirru query def respo.core/render!`
  - `cr demos/compact.cirru query examples respo.core/defcomp`
- 搜索功能与用法:
  - `cr demos/compact.cirru query find render!`
  - `cr demos/compact.cirru query usages respo.core/render!`
  - `cr demos/compact.cirru query search render --filter respo.core`
- 查看项目配置:
  - `cr demos/compact.cirru query config`
