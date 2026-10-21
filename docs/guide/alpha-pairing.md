---
title: "Calcit alpha 配对升级与下游回归"
scope: "module"
kind: "guide"
category: "ecosystem"
---

# Calcit alpha 配对升级与下游回归

Respo 跟随 Calcit 的 alpha 版本发布。每个 Respo 版本固定配对一个 Calcit 版本：`deps.cirru` 的 `:calcit-version` 与 `package.json` 的 `@calcit/procs` 必须相同。下游项目（Router、UI、Reel 和应用）按同一配对升级。

## 下游清单

[`downstream/repos.json`](../../downstream/repos.json) 列出要回归的项目：

```json
{ "name": "respo-ui", "repo": "Respo/respo-ui.calcit", "layer": "library" }
```

- `repo`：GitHub 仓库。私有仓库需要在 Respo 仓库配置 `DOWNSTREAM_TOKEN` secret（只读权限即可）。
- `ref`：可选，默认使用仓库的默认分支。
- `layer`：`library` 或 `app`，用于决定升级顺序。

新增项目时，只需在清单中加一行。项目需要满足以下条件：用 `deps.cirru` 声明依赖，入口为 `calcit.cirru`。

## 单个项目的检查

```bash
./scripts/check-downstream.sh Respo/respo-ui.calcit
```

脚本的流程如下：

1. 克隆项目。
2. 用 `caps --ci` 安装项目锁定的模块，再把其中的 `respo.calcit` 指向当前 checkout。
3. 依次执行以下步骤：
   - `--check-only`
   - `fix --workflow strict --verify`（较慢，每个项目 4 到 30 分钟，设 `DOWNSTREAM_STRICT=1` 才执行）
   - `calcit js`
   - 配置了 Vite 的项目再执行一次 `vite build`，并安装与编译器同版本的 `@calcit/procs`

某一步失败时，脚本会改用基线 Respo 重跑这一步，然后归类：

| 结果 | 含义 |
|---|---|
| `regression` | 基线通过、当前 Respo 失败，是当前改动引入的问题 |
| `needs upgrade` | 基线也失败，属于工具链或项目自身的问题，需要升级下游 |

默认基线是项目锁定的 Respo 版本；设 `DOWNSTREAM_BASELINE=<respo checkout>` 可以改用别的版本。脚本遇到 `regression` 时退出码为 1；设 `DOWNSTREAM_REQUIRE_GREEN=1` 时，`needs upgrade` 同样退出 1。

## CI

`.github/workflows/downstream.yaml` 并行检查清单中的每个项目，结果写入 job summary。它在以下三种情况运行：

- **每周一定时运行**：基线为各项目锁定的版本，用来跟踪哪些项目落后于当前 Respo。
- **带 `downstream` 标签的 PR**：基线为 PR 的 base 分支，所以只有这个 PR 引入的问题才会让 job 失败。改动公共 API、类型或宏的 PR 应该加上这个标签。
- **手动运行**：可以填写 `calcit-version` 试用候选工具链；勾选 `require-green` 时，`needs upgrade` 也算失败；勾选 `strict` 时加跑 strict 检查。

## alpha 配对升级流程

1. **试用候选版本。** Calcit 发布新 alpha 后，手动运行 Downstream workflow，把 `calcit-version` 设为新版本。`self` job 用新工具链检查 Respo 自身，矩阵则检查每个下游项目。此时 Respo 尚未改动，失败项说明新工具链对哪些项目有影响。
2. **配对 Respo。** 运行 `./scripts/pair-calcit.sh <version>`，同时更新 `deps.cirru` 和 `package.json`，并重新安装依赖。然后跑完整门禁（`caps --strict --ci` 和 `tests.yaml` 中的步骤），修复问题后发布 Respo 的 alpha tag。
3. **按层升级下游。** 先升级 `layer: library` 的项目，顺序为 respo-router，然后 respo-ui 和 reel，再其他库；最后升级 `layer: app` 的项目。每一层都改为请求新的 Respo tag 和同一个 Calcit 版本，并在各自仓库的 CI 中通过。
4. **确认收敛。** 手动运行 Downstream，勾选 `require-green` 和 `strict`；全部通过才算完成这次配对。尚未升级的项目保持在旧 tag 上，可以继续使用，下一次每周定时运行时仍会被列出。

只有 API 不兼容时才需要第 3 步改代码；工具链升级引起的警告（例如新加入的类型检查）在下游仓库内修复，不在 Respo 中兜底。
