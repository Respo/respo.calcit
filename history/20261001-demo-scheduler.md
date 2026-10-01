# Demo render scheduling (#192)

The demo now installs one `make-render-scheduler` callback per store watch.
Initial mounting and hot reload still render synchronously. The callback reads
the authoritative store when it runs. Replacing the watch increments a generation
guard so pending callbacks from the previous registration are skipped.

The reusable demo installer lives in `respo.app.scheduler`; `respo.main` uses it
for both initial setup and reload. Separating it from the HUD module lets Node
tests exercise the same store, dispatch function, and installer as the browser.
`render!`, `render-with!`, and the scheduler implementation are unchanged.

The heavy-tasks demo dispatches 55 operations per burst. Its measurement now runs
in a microtask after the scheduled render, so its reported duration includes the
render rather than only dispatch and reducer work.

## Verification

- Compiled Node tests assert that 20 real demo dispatches queue one render, the
  callback observes all 20 tasks, a later tick renders again, and replacing the
  watch invalidates the old pending callback.
- An injected queue test asserts that repeated dispatches capture one callback.
- A heavy-tasks regression asserts 55 dispatches, one render, 11 final tasks, and
  measurement after rendering.
- `test/examples/demo-scheduler.html` exercises real initial mount and hot reload,
  asserts scheduled DOM contents, and proves a direct render updates the DOM
  synchronously. Chrome 154 completed it without console errors after reload.
- Existing 58 native tests, DOM host/protocol checks, SSR/nullish regressions,
  documentation examples, type baseline, and production build are retained.

## Paired browser benchmark

Baseline watch policy is the synchronous `add-watch` callback from main revision
`3847003`. Candidate policy uses the demo scheduler. Both use the same compiled
renderer, actual demo store, real dispatch function, and DOM mount in the same
browser. This isolates the watch policy change; it does not compare separately
compiled revisions or attribute gains to a renderer change.

Each sample starts with an empty, synchronously rendered demo, then dispatches 20
adds. Timing includes dispatch and rendering through the end of the microtask.
Each sample asserts the final store and render count. The page also checks the
final DOM. Baseline and candidate execution order alternates across three warmup
rounds and eleven measured paired rounds. Raw timings and order are committed in
`20261001-demo-scheduler-bench.json`.

| Watch policy | Renders per 20 dispatches | Median complete burst |
| --- | ---: | ---: |
| Synchronous | 20 | 19.0 ms |
| Scheduled | 1 | 6.8 ms |

These are measurements of this demo on the recorded Chrome/macOS host, including
task creation and DOM work. They are not a general throughput guarantee.

To reproduce:

```bash
calcit js
yarn test-demo-scheduler
yarn vite --host 127.0.0.1
# Open /test/examples/demo-scheduler.html on the reported Vite port.
# Results are displayed and available as window.schedulerResult/window.schedulerBench.
```

The beginner guide and API reference show both timing choices, deterministic
queue injection, and pending callback guards during watch replacement.

## 合入主分支后的冲突验证

合入最新 `main`（`dccf7f8`，包含 #205 和 #209）。CI 保留调度器、memo、keyed
移动与 patch lookup 的测试入口；文档冲突以中文整合，明确直接渲染仍同步执行，
调度测试需要等待微任务或清空注入队列。

- 严格编译、67 项原生测试、25 项 Node 回归、类型补丁协议与 typed DOM host 通过。
- 质量门禁、65 份文档的 116 个可执行代码块及 Vite 生产构建通过。
- Chrome 154 确认 20 次连续 dispatch 合并为一次渲染，watch 替换只触发一次新回调。
  同步 DOM 读取及热更新检查通过，刷新后无控制台错误。
- 原始基准 JSON 沿用主分支的 `history/*-bench.json` generated 标记，未新增大 JSON。
