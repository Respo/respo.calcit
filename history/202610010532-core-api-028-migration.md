# 0.28 核心 API 消费者迁移

关联 calcit#1456、#1458、#1568。仅迁移已由 compiler/resolver 证明的 core API 调用，不修改公开组件 API、schema、DOM host contract 或既有类型债务 baseline。

通过 `core-api-0.28-v1` 预览和 revision 前置条件应用 15 处代码改写：14 处 core `some?` 改为 `calcit.core/non-nil?`，一处已证明 Tag 参数的 `turn-string` 改为 `calcit.core/to-string`。限定名称避免与消费者或模块同名定义混淆。Snapshot 从 `md5:05723c884842ab07f3d610d6801dda4a` 变为 `md5:ab1c8d6093ffc33cbc0f8d2d17e0c8c3`；重复 preview 为 `changed=false`、零 machine-applicable 建议。32 处 requires-review 建议保持不变，不根据词形替换开放类型、macro-origin 或自定义方法；本记录不声称消灭了所有历史调用。

剩余建议逐项分类：18 个谓词跨 macro 展开，需核对 macro 是否观察原始拼写；12 个转换的类型或稳定源码上下文未完全证明；List/Set 两条 `.add` 建议都指向 `next-resource-id!` 的同一 Number 计数器，不能改成集合操作。`scalar-attribute-text` 的分支仍保留真实 scalar predicate 和失败行为，没有把整个 Dynamic 参数声明成 String 来规避检查。

初步验证使用含已合并 calcit#1580 的源码 CLI（版本显示 alpha.1）与已发布 npm alpha.1，不冒充已发布 CLI 的兼容证据。严格检查、48 个 definition `:tests`、名义 DOM patch、真实生成 JS 的 DOM/SSR、nullish props、既有类型/质量门禁和 111 个文档代码块均通过。Vite 8.2.2 在 Node 24.4.1 构建通过；本机旧 Node 20.10 的 `styleText` 导入错误属于工具链不匹配，不以业务代码补丁规避。

最终验收要求从 crates.io 安装的匹配发布版 CLI 与实际 npm 包、完整 CI 同时通过。CI 额外核对 compiler、声明 runtime 和实际安装 runtime 的版本一致；Yarn 仅更新已有的精确第一方包预批准版本，不关闭全局 package age gate。js-ffi 依赖与 ABI 不因本批迁移改变。

上述发布包本地复验已完成：正式 crates.io CLI 与实际 npm runtime 同为 `0.28.0-alpha.2`，caps 严格依赖/工具链验证与 Yarn immutable 安装通过。48 个附带测试、DOM patch/DOM/SSR、nullish props、原类型/质量门禁、59 个 Markdown 文件的 111 个代码块、实际生成 JS 与 Vite 生产构建全部通过，重复 preset 仍无自动改写。远程 PR CI 与完成覆盖最新 HEAD 的 review 是独立合并门禁，尚不能用本地结果代替。

`program-diff` 对相同 git ref 自比较仍报告未变 FFI 的 runtime-boundary 差异，已独立记录在 calcit#1582。该误报不能作为修改 FFI 的理由；本次通过实际 Snapshot diff 确认只有上述 15 个代码叶子改变。
