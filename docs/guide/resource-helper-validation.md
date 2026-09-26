# 资源 ID helper：普通方法与候选类型推断验收

本例对应 [Calcit #1306](https://github.com/calcit-lang/calcit/issues/1306) 和
[#1307](https://github.com/calcit-lang/calcit/issues/1307)，在实际 Respo 代码中验证小步改进，
不要求完整模型实验或全库迁移。

## 稳定版可以使用的改动

`respo.resource/next-resource-id!` 通过普通 Number `.add` 方法生成下一个 ID，
然后写回已有 Ref。返回值和状态变化保持不变；不改成 native call，也不引入 Dynamic。
该定义的 `consecutive-ids` 测试记录初始值，检查两次调用各增加 1、Ref 等于最后返回值，
成功后恢复初始值。测试放在 definition `:tests`，便于直接 review。

```bash
calcit query type "'Number" --format edn
calcit query def 'respo.resource/next-resource-id!' --raw
calcit test 'respo.resource/next-resource-id!' --require-match
calcit --check-only
calcit js
```

Number 查询给出 `.add` 的 `proven` 契约：一个 Number 参数，返回 Number。
当前提交仍保留 `Fn () -> Number` schema，并继续固定 Calcit / `@calcit/procs` 0.22.0、
js-ffi 0.2.0。没有把未发布版本写入正式依赖。

## 候选编译器验证：省略重复 schema

2026-09-26 使用 Calcit main `2e8b4b6689ab14e8e420d0ad68cd4163d04ffdb2`
构建的候选 CLI（版本字段 0.22.1，**该构建未发布**），在项目 `.calcit/inference-validation/`
中的独立 Snapshot 副本执行 `edit schema ... --clear`。副本单独声明候选工具版本，
复用已安装的模块，但不修改模块源码；正式 Snapshot 和依赖版本不受影响。

删除声明前后 helper 函数体完全相同。已有入口严格检查和 definition 测试通过；
`query context --format edn` 显示 `:schema nil`、`:inferred-schema` 为 `Fn () -> Number`，
并报告 `I_SCHEMA_INFERRED`。候选生成的 JS 两次直接调用仍连续递增。
这里使用已发布的 `@calcit/procs` 0.22.0，启动时明确报告与候选 CLI 0.22.1 的版本不一致警告；
仅将结果视为本次 helper 的候选兼容证据，不作为匹配版本工具链的正式发布验收。
收益是这个 helper 可以省去重复 root schema，而非从一次测试猜测公共签名。

候选编译整个示例应用，Vite 构建后在受控浏览器执行输入和 Add 操作，
页面从 `Tasks: List/0` 变为 `Tasks: List/1`，内容为输入值；未出现 JS 异常。
唯一控制台 error 是 `/favicon.ico` 404，网络记录已确认是图标缺失。
页面 smoke 不替代 helper 的直接语义断言，也不声称覆盖所有资源异步分支。

稳定版验证另外通过：42 个 definition 测试、DomPatch 正反类型用例、typed DOM/SSR host、
nullish props 测试和文档 57 文件 / 111 代码块。浏览器使用 Node 24.4.1 和 Vite 8.2.2。

## 实际操作中遇到的边界

- `query type` 的内建类型要写成 `"'Number"`，不能写裸 `Number`。
- `tree search-replace` 只匹配叶子。表达式修改用提示中的 `query search-expr --set-cursor 0`
  加 `cursor apply replace`；第一次误传表达式被拒绝，没有写入。
- `test` 当前结构化输出仅支持 JSON，使用显式 `--format json`；类型/上下文查询仍优先 EDN。
- 本机浏览器 CLI 在 Node 20 下启动失败，切到已安装的 Node 24 后正常；未因此更换依赖或隐藏错误。

## 后续发布边界

候选验证不等于稳定迁移已交付。待包含推断能力的 Calcit 版本正式发布后，
再更新明确版本的依赖、在正式 Snapshot 清除该 schema，并重跑上述测试与浏览器 smoke。
因此 Calcit #1306/#1307 在公开包复测完成前保持开放。本例不扩大到递归、FFI 或未知参数推断。
