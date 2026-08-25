# Strict macro contracts

- Migrated all six Respo macros to phase-aware signatures using Calcit 0.13.45.
- Definition generators require symbol/list syntax and expand to function definitions.
- `error-boundary` requires a callable fallback; `show` keeps its deliberately dynamic branch values.
- `defstyle` requires symbol/list syntax, expands to a string expression, and declares `:log` because style-literal warnings may print during macro expansion.
- Upgraded both `deps.cirru :calcit-version` and `@calcit/procs` to 0.13.45.
- Verified 27/27 attached tests, 126/126 documentation snippets, native check-only, and JS generation with the published compiler.
