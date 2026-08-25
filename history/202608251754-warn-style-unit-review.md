# Preserve Unit for non-enum style literals

- Added the missing outer `if` fallback in `warn-style-literals`.
- Non-enum inputs now return canonical `&unit` instead of legacy nil.
- Added a definition test for the non-enum runtime path.
