# Ref 构造改用 `ref` / `defref`

Calcit 0.29 把 `ref` / `defref` 定为 Ref 构造的首选名（calcit-lang/calcit#1457），`atom` / `defatom` 暂时保留，下一个非补丁版本退场。本次用 Calcit 0.29.0-alpha.19 的 `calcit calcit.cirru fix --rule core-ref-constructor-v1 --include-attached` 迁移 Respo：77 处全部为 machine-applicable，无 `requires-review`；重复预览为 `:changed false`。

前置调整：`respo.test.main/main!` 中三个回调直接返回 `swap!` 的结果。改用 `ref` 后 `swap!` 返回值带上了具体类型（Number、List），与 `make-render-scheduler`、`load-resource!` 要求的 `fn () -> :unit` 不符，fix 的暂存校验因此报 `W_FN_ARG_TYPE_MISMATCH`。按仓库内已有写法改成 `do (swap! ...) &unit`，单独提交。

文档：README 与 `docs/` 中的示例和说明同步改为 `ref` / `defref` / Ref；`docs/guide/hot-swapping.md` 原示例写成 `defatom *store $ atom ...`，会得到嵌套的 Ref，顺带改为 `defref *store`。三个 core 定义的 `:doc` 中的 "atom" 改为 "Ref"。`history/`、`editing-history/` 中的旧名属于历史记录，保持不变。

验证（alpha.19）：`--check-only`、`edit format` 无差异、`analyze quality --baseline`、`calcit calcit.cirru test` 119/119、CI 中各 `yarn test-*` 脚本与 `node --test test/nullish-props.test.mjs` 全部通过；`scripts/check-docs-md.sh` 中仓库自身文档全部通过。
