# Narrow global keyboard event fields / 收窄全局键盘事件字段

- Time / 时间: 2026-09-04T18:12:34Z
- Tracking / 跟踪: calcit-lang/calcit#724, calcit-lang/calcit#717, calcit-lang/calcit#657

## Change / 修改

`respo.comp.global-keydown/effect-listen-keyboard` now validates the browser-provided `KeyboardEvent.key`, `ctrlKey`, and `metaKey` fields through `js-ffi.contract` before boolean short-circuiting or using them as `String` and `Bool` values.

`respo.comp.global-keydown/effect-listen-keyboard` 现在会在布尔短路判断之前，通过 `js-ffi.contract` 验证浏览器提供的 `KeyboardEvent.key`、`ctrlKey` 与 `metaKey` 字段，再将其作为 `String` 和 `Bool` 使用。

This removes the three Calcit 0.13.77 `option:unwrap-or` branch-type warnings seen by docs-workflow without adding local `unsafe-coerce` debt or changing valid keyboard-event behavior.

该修改消除了 docs-workflow 在 Calcit 0.13.77 下出现的三条 `option:unwrap-or` 分支类型告警，且不增加本地 `unsafe-coerce` 债务，也不改变合法键盘事件的行为。

## Validation / 验证

- Calcit 0.13.77 check-only, type coverage, weak-type audit, and quality baseline passed.
- 30 definition-attached tests passed.
- Typed DOM host test passed.
- 48 Markdown files / 111 Cirru blocks passed documentation checks.
- JavaScript generation and Vite production build passed under Node 24.
- A temporary source link from docs-workflow #717 to this worktree passed check-only with the three dependency warnings removed; published dependency links were restored afterward.
