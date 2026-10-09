# demo scheduler fixture 改用 `add-watch!` 导出

Calcit 0.29（calcit-lang/calcit#1862）退役 `add-watch`，JS 运行时导出由 `add_watch` 改为 `add_watch_$x_`。`test/demo-scheduler-fixture.mjs` 直接调用了运行时导出，因此改为优先使用 `add_watch_$x_`，在 CI 仍使用 0.29.0-alpha.19 时回退到 `add_watch`。仅涉及测试夹具，不影响发布内容。
