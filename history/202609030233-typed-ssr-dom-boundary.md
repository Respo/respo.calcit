# Typed SSR DOM boundary / 类型化 SSR DOM 边界

- `compare-to-dom!` now receives `js-ffi.browser/DomElementHost` and reads `local-name`, `inner-html`, child count, and children through the declared host contract.
- Indexed child traversal uses `child-element-at`, keeping a nullable DOM lookup as `Option<DomElementHost>` until the verified equal-length recursion invariant unwraps it.
- Attribute lookup uses `get-in` directly instead of converting a map through `pairs-map`.
- `realize-ssr!` keeps the only explicit host coercion immediately after the existing nullish check.
- A definition-attached test forces preprocessing of the SSR comparison path, which the demo entry did not previously reach.
- The repository quality baseline moved from JSON to native Cirru EDN and is marked as generated text.

Validation: `--check-only`, 30 definition tests, 111 checked documentation blocks, native quality baseline, JS code generation, and the Node 24 Vite build all pass.
