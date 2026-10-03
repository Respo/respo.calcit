# #194：Component.tree 的 RenderNode 迁移

## 已实现范围

本阶段基于 `3842a45`，将生产字段 `Component.tree` 从 `Option<Struct>` 改为
`Option<RenderNode>`。选择具名 Enum：`:element` 携带 `Element`，`:component`
携带 `Component`。创建边界的 `as-render-node` 验证节点种类，保留原始 payload
身份；不支持的值仍报告 `invalid-component-tree`。空树保留 `Option :none`。

`extract-effects-list`、`decorate-defcomp`、`mute-element` 和手写 Component
测试/JS fixture 已迁移。effects、listeners、data-comp 属性排序以及事件/ref 行为
继续使用原有回归测试验证。Component 定义的 schema 同时纠正为 `StructDef`。

`component-tree` 暂时通过 `render-node-value` 返回原来的 `Option<Struct>`，供尚未
迁移的渲染消费者读取。它通过枚举匹配读取 payload，没有新增转换；递归消费者和
子节点对仍须继续迁移。这个兼容读取接口不代表 #194 已完成。

## 手动创建 Component 的迁移

通过 `defcomp` 创建组件的调用方式保持不变。手动构造时，需要包装树节点；
读取原始 Element/Component 可使用 `component-tree`。

```cirru
let
    leaf $ respo.core/span $ {}
    component $ respo.schema/Component :name :manual :effects ([]) :listeners ([]) :tree $ %some $ respo.util.detect/as-render-node leaf
  assert= leaf $ option:unwrap $ respo.util.detect/component-tree component
```

## 转换计数

统计项目 definition code，包含宏模板，排除依赖、附带测试、schema 和文档；
口径与 `20261004-render-node-cast-inventory.md` 一致。

| 基线 | assert-type | unsafe-coerce |
| --- | ---: | ---: |
| main `b94962e` | 124 | 41 |
| 本阶段之前 `3842a45` | 125 | 41 |
| 本阶段之后 | 119 | 41 |

消除的是 `extract-effects-list` 的三处 Struct 转换，以及 `decorate-defcomp`
的 Element、Struct 和 List 转换。尚未降低 unsafe-coerce 数量。

## 验证与编译器限制

正式 Calcit 0.28.0 与本地候选 0.29.0-alpha.1 分别验证：

- 全部 definition-attached tests：81/81。
- 重新生成 JavaScript 后的 Node tests：28/28。
- DOM host / SSR / ref / 事件 / component coord / data-comp / paste 回归通过。
- DomPatch 正反例脚本通过，新增 `RenderNode :element 1` 反例在两版本均被拒绝。
- 正式版本 quality baseline 通过，没有放宽预算；unsafeCoerce 仍为 41。

候选版本包含本地编译器前置修复；以上结果不代表已发布版本均具备相同的字段证明。
另一个反例是直接把 `%some Element` 写入 `Component.tree`，不包装 RenderNode：
候选版本拒绝并定位到 `:tree` 字段，正式 0.28.0 仍接受。因而正式版本不能完整
执行新字段合同；发布编译器前置修复后还须复验。不能以 Enum payload 反例代替
整个 Struct 字段的证明。

性能 fixture 已迁移并检查语法，本阶段没有运行性能 benchmark，未声称性能结论。
原始工作区的用户改动未被修改。

## #194 剩余工作

- 将 ChildPair 和 Element.children 接入 RenderNode，并迁移递归消费者。
- 将 cursor key 如实标注为 Tag/String，保持状态树结构与存取方式。
- 消除有证据支持的 unsafe-coerce，更新计数及盘点。
- 完成至少两个真实下游项目回归，并记录必要迁移。
- 将盘点与最终验收证据发布到 issue/PR。

## 首个下游证据：TopixIM

在独立临时副本中使用 TopixIM main `fd1b3af`，原始工作区未修改。
正式 Calcit 0.28.0 对应用 `main!` / `reload!` 的严格检查和 JS 编译通过。
随后调用应用真实 `comp-container(new-reel(store))`，通过 Respo `make-string`
生成 SSR，验证首页标语、TopixIM 链接及 `comp-container` 标记。

固定相同下游源码与依赖，分别加载迁移前 `3842a45` 和迁移后 `f4aea5f` 的 Respo，
每次重新生成 JS。两个 SSR 结果完全一致（7,842 字符），SHA-256 都是
`22718998435d7da2a6eccb542e3623fd3df530376275da906a47a2b42955ad33`。
恢复迁移后的模块并再次生成 JS、运行 SSR，同样通过。

依赖组合为 js-ffi `605367e`、Reel 本地迁移分支 `c270622`、UI 本地迁移分支
`a6ebfb0`，以及该组合解析的 Router。不能把此结果描述为 TopixIM 现有锁定依赖
已经全部兼容；旧 js-ffi 会先在 keyboard-event-host 边界失败，使用当前修复版本后
严格检查通过。应用没有 definition-attached tests，零项选择不作为通过证据。

这项证据覆盖真实首页组件构造与 SSR 等价性，尚不覆盖浏览器交互、生产构建，
也未达到至少两个下游项目的完整验收。Calcium 最新 main 仍固定 0.14.16，
需在独立副本完成依赖迁移后再验证。
