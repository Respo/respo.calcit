# Typed SSR DOM boundary / 类型化 SSR DOM 边界

- `compare-to-dom!` now receives nominal `respo.schema/Element` and `js-ffi.browser/DomElementHost` values. VDOM fields and DOM host fields both use their declared contracts.
- Indexed child traversal uses `child-element-at`, keeping a nullable DOM lookup as `Option<DomElementHost>` until the verified equal-length recursion invariant explicitly unwraps it with `option:unwrap`.
- The VDOM `:attrs` field is a pair list, so `:innerHTML` lookup converts it through `pairs-map` before `get`; the resulting value is normalized with `turn-string` rather than `unsafe-coerce`.
- `realize-ssr!` keeps the only explicit host coercion immediately after the existing nullish check.
- `compare-to-dom!` now returns explicit `&unit`, matching its schema instead of leaking a nil result from `when`.
- A dedicated JavaScript runner builds host fixtures, passes them through the typed `respo.test.dom/main!` boundary, and executes both nested child traversal and the `innerHTML` path at runtime.
- The repository quality baseline moved from JSON to native Cirru EDN and is marked as generated text.

Validation: `--check-only`, definition tests, the dedicated Node DOM-host test, checked documentation blocks, native quality baseline, JS code generation, and the Node 24 Vite build all pass.
