# Mount-time event configuration (#193)

`respo.core/configure-events!` accepts `respo.schema/EventConfig` before the first
render or SSR adoption. It rejects changes once `*global-element` is present.
Hot reload keeps the same policy. The default remains property listeners with
propagation stopped after Respo delivers the event.

The optional independent mode uses `addEventListener`. It records each Respo
callback in the typed internal `__respo_calcit_event_listeners` field on that DOM
node. Updates remove the previous owned callback before adding its replacement;
removing the last event releases the field. There is no global collection holding
detached DOM nodes, and this adds no new unsafe coercion or type debt. User
property handlers and independently registered callbacks are untouched.

## Verification

- Four compiled Node regressions cover default property behavior, both propagation
  settings in both installation modes, independent callback replacement/removal,
  coexistence with native listeners, and the mounted configuration guard.
- `test/examples/event-config.html` runs eight real DOM combinations: regular
  render and SSR adoption × both listener modes × both propagation settings.
  It verifies document bubbling, handler updates without duplicates, removal and
  re-addition, preservation of preexisting SSR property handlers, node identity,
  and callback-record cleanup. Chrome 154 passed all combinations with no errors
  after reload; results and user agent are recorded in the accompanying JSON.
- Existing 58 native tests and typed DOM host regressions pass unchanged.

## Default-policy benchmark

The paired Node harness compares compiled main `3847003` with this candidate in
separate workers, isolating Calcit trait registries. It measures the default path
over 3,000 plain host objects per sample: three installs/updates, one event
delivery, and one removal per node. Every sample verifies callback and propagation
counts plus property removal. After three warmup rounds, eleven measured paired
rounds alternate baseline/candidate order. Raw samples are committed in
`20261001-event-config-results.json`.

| Default policy | Median complete sample |
| --- | ---: |
| Baseline | 10.542 ms |
| Candidate | 10.747 ms |

The observed increase is about 1.9% for this host adapter workload. It covers
configuration lookup and the shared installer; it is not a full DOM or renderer
throughput measurement. The feature preserves default semantics rather than
claiming a default-path performance gain.

To reproduce, compile a baseline checkout with the same Calcit runtime and run:

```bash
calcit js
yarn test-event-config
node test/event-config-bench.mjs /absolute/path/to/compiled-baseline
yarn vite --host 127.0.0.1
# Open /test/examples/event-config.html on the reported port.
```

The DOM events guide documents options, bubbling through Respo ancestors, startup
placement, SSR coexistence, and the unchanged default actions.

## 合入主分支后的冲突验证

合入 `main` 的 `55c0e35`，保留 `DomElement` 的独立事件回调存储字段，以及主分支
新增的 keyed 移动、焦点和滚动 FFI 字段。通过 Calcit CLI 维护快照，规范格式检查通过。

- 严格编译、66 项原生测试、18 项 Node 回归及质量门禁通过。
- Node 回归包含事件配置、keyed 移动、memo、nullish props 和 SSR。
- Chrome 154 的八组普通挂载/SSR × 监听模式 × 传播设置回归通过。
- 基准原始 JSON 保留供复核，并标记为 generated；没有新增大 JSON 产物。
