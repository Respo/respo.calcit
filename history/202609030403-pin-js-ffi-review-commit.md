# Pin the js-ffi review commit / 固定 js-ffi review commit

Respo #128 exercises the new typed DOM host API in a dedicated JavaScript CI
test. A branch name containing `/` did not give caps a reproducible revision in
GitHub Actions, so the job loaded js-ffi 0.1.11 and could not resolve
`js-ffi.browser/dom-element-host`.

Respo #128 的独立 JavaScript CI 测试会执行新的 typed DOM host API。带 `/`
的分支名未让 caps 在 GitHub Actions 中解析到可复现 revision，任务实际加载
了 js-ffi 0.1.11，因而无法解析 `js-ffi.browser/dom-element-host`。

The dependency is temporarily pinned to the exact reviewed head of
calcit-lang/js-ffi#10. The release review threads remain open: this SHA must be
replaced by the published SemVer before Respo #128 is ready to merge.

The Node runner owns the raw JavaScript fixture construction and passes the
objects into a Calcit entry typed as `DomElementHost`; the project Snapshot does
not add an `unsafe-coerce` merely for tests.

依赖暂时固定到 calcit-lang/js-ffi#10 已评审的精确 head；正式合并前仍须替换
为已发布的 SemVer，因此相关 release review threads 保持 open。

原始 JavaScript fixture 由 Node runner 构造，再传入声明为 `DomElementHost`
的 Calcit 入口；项目 Snapshot 不会仅为测试新增 `unsafe-coerce`。
