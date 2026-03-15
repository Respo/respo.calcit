要求必须查看 Calcit 命令行工具的用法:

```bash
cr docs agents --full
```

一般开发者会运行:

- `cr js` 默认单次编译 JavaScript
- `cr js --watch` 或 `cr js -w` 监听变更并持续编译
- `yarn vite` 启动 Vite 开发服务器

类型标注建议（schema-first）:

- 优先使用 `cr edit schema <ns/def> -e '...'` 维护函数签名。
- 仅在确有必要时使用 `hint-fn`，并优先采用 schema map 形式；避免旧 clause 写法。
- 修改签名后，优先用 `cr js` 验证，确保不会因类型告警阻断编译。

然后 GPT 调用 `cr` 命令增量编辑源码, 在 `cr edit inc` 运行时触发重新编译.

文档示例校验建议:

- 对 README/文档中的 Cirru 代码块，使用 `check-md` 并显式加载当前项目 `compact.cirru` 作为依赖:
  - `cr compact.cirru docs check-md README.md --dep ./`
- 若 README 代码块用到 `respo.core/clear-cache!`（依赖 `memof.once`），校验时额外添加 `memof` 依赖:
  - `cr compact.cirru docs check-md README.md --dep ./ --dep ~/.config/calcit/modules/memof/`
- `--dep ./` 会按目录加载 `./compact.cirru`，用于在代码块中访问 `respo.core` 等命名空间函数。
- `--dep ~/.config/calcit/modules/memof/` 会按目录加载 `memof/compact.cirru`，避免 `memof.once/*` 相关解析失败。
- 若代码块是“示意片段”而非可独立运行程序，优先标记为 `cirru.no-check`。
- 若需要在单个代码块里串联多个表达式并共享中间值，使用 `let` 显式绑定；默认不会把前面表达式自动注册为全局定义。

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
  - `cr query search render -f respo.core`
- 查看项目配置:
  - `cr query config`
