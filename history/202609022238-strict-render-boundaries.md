# Strict render boundaries / 收紧渲染边界

- Upgraded the project contract and JS runtime package to Calcit 0.13.75.
- Preserved DOM lookup as an `Option`, unwrapping only for operations that require a live node while keeping `:rm-element`'s missing-node warning/no-op path.
- Rewrote effect diffing with explicit `Option` matching so every lifecycle collection branch returns `Unit`.
- Made the effect collector callback schema concrete and preserved exact `Unit` in recursive listener traversal.
- Migrated demo-local state dispatches from legacy list operations to the nominal `Op :states` variant.

- 将项目契约与 JS runtime 包升级到 Calcit 0.13.75。
- 将 DOM 查询保持为 `Option`，仅在要求真实节点的操作中解包，同时保留 `:rm-element` 对节点缺失的 warning/no-op 路径。
- 将 effect diff 改为显式 `Option` 匹配，保证所有生命周期收集分支严格返回 `Unit`。
- 收紧 effect collector 回调 schema，并让递归 listener 遍历保持精确 `Unit`。
- 将 demo 内的旧列表式局部状态 dispatch 迁移为 nominal `Op :states`。

Validation / 验证：

- `calcit calcit.cirru --check-only`
- `calcit calcit.cirru test --require-match --summary-only --format json` (29/29)
- `calcit calcit.cirru analyze quality --baseline config/calcit-quality.json`
- `bash scripts/check-docs-md.sh` (111/111 blocks)
- `calcit calcit.cirru js`
