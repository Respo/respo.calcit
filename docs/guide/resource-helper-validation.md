# 资源 ID helper：普通方法与公开版本类型推断验收

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
当前固定公开发布的 Calcit / `@calcit/procs` 0.23.1、js-ffi 0.2.0。
通过 Calcit CLI 清除了重复的 `Fn () -> Number` 根 schema，函数体和 `:tests` 不变。
`query context --format edn` 显示 `:schema nil`、`:inferred-schema` 为 `Fn () -> Number`，
并报告 `I_SCHEMA_INFERRED`；推断只服务编译与查询，不把 schema 写回源码。

## 匹配公开包的验证

2026-09-26 从 crates.io 安装 Calcit 0.23.1，从 npm 安装 `@calcit/procs` 0.23.1，
`caps verify --toolchain` 确认版本匹配。入口严格检查、42 个 definition 测试、
DomPatch 正反类型用例、typed DOM/SSR host、nullish props、JS 编译及 Vite 构建通过。

0.23.0 的首次公开包验收暴露了质量分析误报：[Calcit #1392](https://github.com/calcit-lang/calcit/issues/1392)。
0.23.1 让既有分析复用编译器证明，因此原 `config/calcit-quality.cirru` 无需放宽，
删除 schema 后全部指标 delta 仍为 0。没有为了通过 CI 恢复冗余声明或增加 Dynamic。

公开版本编译整个示例应用，在受控浏览器执行输入和 Add 操作，
页面从 `Tasks: List/0` 变为 `Tasks: List/1`，内容为输入值；直接调用生成的 helper 得到
`0 → 1 → 2`，检查 Ref 等于最后结果并恢复原值。未出现 JS 异常。
唯一控制台 error 是 `/favicon.ico` 404，网络记录已确认是图标缺失。
页面 smoke 不替代 helper 的直接语义断言，也不声称覆盖所有资源异步分支。

浏览器使用 Node 24.4.1 和 Vite 8.2.2。文档示例使用 `yarn check-docs` 回归。
此前的候选副本验证只作为探索记录；当前验收不再依赖未发布 CLI 或版本不匹配的 runtime。

## 实际操作中遇到的边界

- `query type` 的内建类型要写成 `"'Number"`，不能写裸 `Number`。
- `tree search-replace` 只匹配叶子。表达式修改用提示中的 `query search-expr --set-cursor 0`
  加 `cursor apply replace`；第一次误传表达式被拒绝，没有写入。
- `test` 当前结构化输出仅支持 JSON，使用显式 `--format json`；类型/上下文查询仍优先 EDN。
- 本机浏览器 CLI 在 Node 20 下启动失败，切到已安装的 Node 24 后正常；未因此更换依赖或隐藏错误。

## 验收边界

收益是这个封闭 helper 可以省去重复 root schema，而不是从某一次测试或调用猜测公共签名。
本例不扩大到递归、FFI 或未知参数推断。Calcit #1306/#1307 的最终状态还需结合迁移 PR
及其合并后的 CI；候选或本地通过不能替代公开包、PR 与目标执行证据。
