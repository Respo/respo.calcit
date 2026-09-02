# Typed Node.js detection boundary

- Narrowed `process.release.name` with `string?` before homogeneous String equality.
- Kept the style cache as an explicitly documented `Ref<Dynamic>` boundary; no new Dynamic or unsafe-coerce debt was introduced.
- Verified strict preprocessing, JavaScript code generation, the full test suite, documentation examples, and the quality baseline.
