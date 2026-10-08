# #194：当前下游发布基线与未发布源码候选

## 范围

本轮重新读取两个下游的远端 main，不将旧迁移 checkout 当作当前主分支。
源码由对应 Git commit 导出到独立临时目录，发布基线和升级候选各自安装
依赖；原 checkout、共享模块源码和生产数据保持不变。使用 Node 24。

| 项目 | 当前 main | 固定 CLI / procs | 固定 Respo | 现有 Actions |
| --- | --- | --- | --- | --- |
| Calcium | `56ff990534ebc0fc4794cd327f62bc533ceec124` | `0.29.0-alpha.16` | `0.16.114-alpha.8` | [37775786449](https://github.com/Cumulo/calcium-workflow/actions/runs/37775786449) success |
| Timegrass | `e4ca6c6181735885cee0ad9a3e545cc55456c68b` | `0.27.0` | `0.16.114-alpha.5` | [37292800979](https://github.com/TopixIM/timegrass/actions/runs/37292800979) success |

两个官方 macOS CLI 均从对应 crates.io 版本安装，没有用开发编译器代替固定
版本。安装与验证只发生在隔离目录，不启动生产服务或访问真实 storage。

## 当前发布依赖基线

Calcium：

- Caps strict 安装与 toolchain verify 通过，12 个模块。
- browser/native 严格入口检查通过；公开定义分别156/156、238/238。
- client 44/44、server 68/68 原有 native tests 通过。
- JS/Vite、Session Option、client patch、Respo client boundaries、mount、
  stored login、connection URL 和 deterministic diff/patch smoke 通过。
- 两入口 dynamic-methods findings 和 deprecated calls 均为零。
- 模板层级检查通过，27 个 namespace 的边界保持。

Timegrass：

- 按当前 CI 的普通 Caps 解析安装与 toolchain verify 通过，16 个模块。
- 额外 strict 解析被 Markdown、UI、Respo、js-ffi 的请求版本冲突拒绝；
  普通安装没有消除这些警告，不能称为无冲突依赖图。
- 当前固定0.27.0的 strict workflow、browser/native 入口检查通过。
- client 14/14、server 90/90 原有 native tests 通过。
- JS/Vite、Dayjs、title、session messages、typed database 四项既有
  业务/纯数据回归通过。
- 两入口 dynamic-methods findings 和 deprecated calls 均为零。

没有执行需要运行 native WebSocket 服务的 Calcium Kanban e2e，也没有
真实浏览器 UI 验收。因此上述范围不是完整现场验收，更不是新框架的最终
两下游验收。

## Calcium alpha.19 候选：真实迁移边界

独立候选使用正式 CLI / procs `0.29.0-alpha.19`、JS-FFI alpha.15。
在已发布 Respo alpha.9 上，原客户端首先在 Kanban draft input 的
`Op :states` 报 `E_CALL_ARGUMENT_UNPROVEN`：异构 states map 中读取的
cursor 是开放值，不能直接作为 List payload。

本地候选通过官方 edit/tree transaction 补真实解码：三个组件的 cursor、
草稿 String、登录提交的四处 String 输入，以及 backpressure dirty revision
的 Number。没有改变 Op、cursor key 类型、状态树结构或 dispatch 路线。

服务端 `refresh-domain-reel` 保留旧的异构 Reel 输入及 merged base 校验，
将已验证的 base/db 显式构造为 `ReelState<Db>`，同时保留 records 和 merged
标记，避免将泛型参数丢失的结果写回 `ReelState<Db>` atom。它未将旧 base
输入收紧为 Db。候选修改尚未提交下游或宣称通过最终回归。

## PR #230 源码集成的限制与失败

源码冻结为 `66ac85a4fdbe26b5ead8621b2cec37445dbbf089`。
直接附加绝对模块路径时，递归模块仍加载发布版 Respo，出现重复 FFI source
owner，不能作为有效对照。Caps 开发分支解析又优先选择了传递依赖要求的
alpha.8，实际没有加载该 PR。

最终源码候选只替换其专用 `.calcit/modules/respo.calcit` 链接，指向独立
冻结源目录；所有递归引用通过同一项目模块路径加载同一源码。共享不可变
缓存未修改。这是未发布源码集成；链接不再匹配 Caps 的发布 receipt，
不能称为正式发布依赖验收。

在此源码候选与本地应用迁移上：

- 客户端、服务端严格入口检查通过，156/238公开定义检查全部通过。
- client native tests 为38/44，server为63/68，完整测试仍失败。
- client六项失败涵盖损坏 Store、PartitionView 字段和原子非法 patch。
- server五项失败涵盖损坏 Card/PartitionView、非 List records、两个旧
  Reel base 反例。新 runtime 的字段类型校验在测试构造坏值时提前失败；
  patch 的 Struct 字段更新也会提前抛错，尚未形成原有错误结果。
- 保留全部反例与原有字段路径/原子性断言，没有删测、降低检查或通过
  声明/强转掩盖失败。客户端构建及依赖该构建的 JS 回归停在测试门禁处。

下一步需让损坏数据反例经过真实的未验证 wire 输入边界，同时检查字段
更新提前失败能否由原有 patch 错误合同正确接收。旧 base 合同不能为了
通过类型检查而收紧。Timegrass尚未对这份未发布源码进行候选集成。

#194 继续开放：当前两个发布基线通过，不等于新框架的两个下游最终回归。
完整 Respo strict 仍有17项诊断，dispatch路线与跨项目结论仍待完成。
生成 JS、JSON 报告与临时模块覆盖不进入仓库。
