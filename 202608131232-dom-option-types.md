# Make DOM comparison Option-safe

- Replace implicit VDOM map field access in `compare-to-dom!` with `get` and `option:unwrap-or` defaults.
- Preserve SSR diagnostics for missing names, attributes, and children while making nullable data explicit to the 0.13.13 type checker.
- This unblocks older modules such as respo-value when they are checked through the current Respo dependency.
