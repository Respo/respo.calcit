# Strict nil / Option boundaries（严格 nil / Option 边界）

Base: `625d72efaabf3d07f228a94a718e4621dbbf793f` (`origin/main`, Respo 0.16.91)

Issues: `calcit-lang/calcit#859`, `calcit-lang/calcit#864`, `Respo/respo.calcit#131`

## Summary / 摘要

- Migrated the closed application-owned absence in `Component.tree`, `Element.coord`, and `Element.ref` from legacy `Optional<T>`/raw nil to `Option<T>`. Render traversal unwraps component trees at the existing invariant boundary; ref mount/unmount still sends the same raw DOM target and raw nil teardown signal to user callbacks.
- 将 `Component.tree`、`Element.coord`、`Element.ref` 中由应用拥有、可封闭建模的缺省值从旧 `Optional<T>`/裸 nil 迁移到 `Option<T>`。渲染遍历在原有不变量边界解包 component tree；ref 挂载/卸载仍向用户回调传递原有 DOM target 与裸 nil teardown 信号。
- Classified browser-owned `DomProps` and `RespoEvent` fields as `JsNullish`: these are host property values whose null/undefined distinction must not be wrapped into a Calcit enum at the DOM boundary.
- 将浏览器拥有的 `DomProps` 与 `RespoEvent` 字段明确为 `JsNullish`：它们是 host property 值，在 DOM 边界不能包装成 Calcit enum，也必须保留 null/undefined 语义。
- Replaced `pick-event`'s implicit `map-kv` nil-drop protocol with `filter-map-kv` plus explicit `MapEntryDecision :keep/:drop`. Existing positive and negative tests cover retained handlers, expanded `:on` maps, and nil handler rejection.
- 将 `pick-event` 的隐式 `map-kv` nil 丢弃协议替换为 `filter-map-kv` 和显式 `MapEntryDecision :keep/:drop`；正反例覆盖保留 handler、展开 `:on` map 与丢弃 nil handler。
- Declared only `respo.controller.resolve/build-deliver-event` with `:features #{:js-ffi}`, matching its existing `js/console.warn` host operation. No runtime code changed for calcit-lang/calcit#864.
- 仅为 `respo.controller.resolve/build-deliver-event` 声明 `:features #{:js-ffi}`，对应其既有 `js/console.warn` host operation；calcit-lang/calcit#864 未改运行时代码。

## Retained nil audit / 保留 nil 审计

After migration, the project audit reports 46 code-nil hits: 45 unresolved hits in 27 definitions and one intentional JS FFI hit. This is four fewer unresolved hits than the issue baseline. There are no legacy Optional schemas and no ordinary `map-kv` calls. Every remaining group is outside the closed Optional/map-kv-sentinel slice and stays behavior-compatible in this focused change:

- Demo and test callbacks (9): `respo.app.comp.task/effect-log` (4), `respo.app.comp.todolist/comp-todolist` (1), `respo.comp.global-keydown/effect-listen-keyboard` (1), `respo.test.main/main!` (2), and `respo.core/show` (1). These are application/demo no-render or callback/no-op values; migrating them to Unit or a wider component API is separate work.
- Event resolution (3): `respo.controller.resolve/build-deliver-event` (1), `extract-listeners` (1), and `find-event-target` (1). These are no-listener/no-target traversal results or callback no-op returns. Listener lookup already uses Option; changing the remaining open traversal/callback protocol would exceed this slice.
- Mutable lifecycle globals (2): `respo.core/*dispatch-fn` (1) and `*global-element` (1). Nil represents the pre-mount/pre-initialization state of shared atoms; changing their public deref protocol requires a separate lifecycle migration.
- Element adapter normalization (4): `respo.core/create-element` (2) and `create-list-element` (2). Raw input maps may omit `:ref`; these adapter-local nil checks now normalize the stored field to `%none/%some` and do not leak nil into `Element.ref`.
- Effect lifecycle no-op returns (3): `respo.core/effect-watch` (3). Cleanup presence is now explicit Option; retained nil is the existing callback/no-op return protocol and is not an absence carrier.
- Browser mount boundary (1): `respo.main/query-mount-target` (1). `document.querySelector` is host-nullish and is checked before use; wrapping it would alter the entry adapter contract.
- Diff and patch wire protocol (11): `respo.render.diff/find-children-diffs` (4), `find-element-diffs` (3), `find-props-diffs` (1), `respo.render.patch/rm-event` (1), `rm-prop` (1), and `rm-style` (1). Nil means removal/clear in existing patch data or browser property writes. Replacing it would change renderer patch representation or host behavior.
- Ref teardown callback (1): `respo.render.effect/collect-unmounting` (1). This deliberately invokes the user ref callback with raw nil; the real DOM lifecycle test asserts mount target followed by nil teardown.
- Resource/cache open-map state (7): `respo.resource/resource-idle` (2), `resource-reducer` (2), and `respo.schema/cache-info` (3). Nil encodes not-loaded/no-error/no-previous-hit in legacy open map data, not one of the named Optional fields accepted by this issue.
- Legacy effect data template (1): `respo.schema/effect` (1). This is data in an open effect template rather than an Optional schema slot; migrating the effect representation is separate work.
- Serialization/collection adapters (3): `respo.util.format/purify-element` (2) and `respo.util.list/val-exists?` (1). They retain legacy open-input normalization behavior; changing accepted inputs is not necessary for the named Option fields.
- Intentional FFI (1): `respo.util.dom/create-shared-canvas-context` returns nil when the browser cannot provide a canvas context and is already classified `intentional-js-ffi` by its declared feature boundary.

## Evidence / 证据

- Calcit 0.13.77 `--check-only` passes. Exact `--strict-types` now advances past `build-deliver-event` and stops at the pre-existing `E_WHOLE_DYNAMIC_PUBLIC_SCHEMA` for `respo.main/f%`; `E_JS_FFI_FEATURE_REQUIRED` is gone.
- The full test suite passes 30/30, including Option some/none fixtures, event filtering keep/drop cases, component/element diff boundaries, and ref mount/unmount lifecycle.
- `test-dom-host` passes the typed DOM host contract; JavaScript emission and the Vite production build pass.
- Browser smoke evidence used a real Vite runtime in a fresh tab: text input `strict nil final` dispatched through Respo, Add produced a task and `Tasks: List/1`, and browser logs contained no errors or warnings.
- Documentation examples pass 49/49 files and 111/111 blocks.

## Compatibility decision / 兼容性决策

The public DOM/runtime behavior remains unchanged. Closed Respo-owned absence is represented with Option, browser-owned nullish values remain raw at the typed host boundary, ref teardown remains raw nil by API convention, and patch removal sentinels remain untouched. No dependency or release metadata changes are included.
