# #194：ChildPair 与子节点读取方迁移

本阶段基于 `1f67370`，继续把 RenderNode 接入生产 children 字段和递归读取路径。

## 存储与创建

`Element.children` 现在为 `List<ChildPair>`。ChildPair 保存开放 key 与
`Option<RenderNode>` 节点。现有手写 Element 的测试刻意保留 nil 子节点并验证
事件坐标，因此用 `:none` 如实保留空项；不能把空节点声明为 RenderNode。

普通创建函数仍校验节点、key 与二元列表形状，然后省略 nil 节点。`div`、
`span`、`list->` 等公开创建方式继续接受原来的原始节点/二元列表输入。
只有手写 Element 存储字段、直接调用内部 children diff 和读取 children 的代码
需要迁移。手写空节点可以用 `make-child-pair key nil`，读取前用 Option 分支处理。

```cirru
let
    leaf $ respo.core/span $ {}
    pair $ respo.util.detect/make-child-pair :child leaf
    empty-pair $ respo.util.detect/make-child-pair :empty nil
    parent $ respo.schema/Element :name :div :coord (%none) :attrs ([]) :style ([]) :event ({}) :children ([] pair empty-pair) :ref nil
    children $ respo.util.detect/element-children parent
  assert= 2 $ count children
  assert :payload-identity $ identical? leaf $ respo.util.detect/child-pair-value pair
  assert :empty-is-preserved $ option:none? $ :node empty-pair
```

`element-children` 返回存储的 `List<ChildPair>`，不再重建旧二元列表；读取 key
使用 `:key` 字段。`child-pair-value` 只读取 Some 中的原始 Element/Component；
None 必须由调用方显式处理，不能把它当作非空节点读取。

## 递归消费者

- `mute-render-node` 使用枚举匹配递归清除事件，保留 ref、组件 metadata 与空项。
- purify 与 HTML serializer 的子节点存储/读取路径接入 ChildPair。
- keyed diff、坐标查找、广播 listeners、DOM 创建及 SSR debug 读取接入 ChildPair。
- 事件刷新、mount/unmount 收集器显式处理 Option。事件刷新跳过空项时不增加 DOM
  索引；effects 收集保持原来的索引规则。
- DOM 创建过滤空项后构造 DOM，保持原先省略 nil 子节点的行为。
- keyed JS fixture 在直接调用内部 diff 时构造 ChildPair，公开 list-> fixture
  继续传原始二元列表。性能 fixture 的读取方式同步迁移，未据此声称性能提升。

正式 0.28 的 loop 需要显式 `List<ChildPair>, Number -> Unit` 提示才能保留
字段证据。非空分支用类型准确的 `&list:nth children 0`；不引入额外转换。
key 映射使用显式 Fn，避免 native 可调用 tag 在生成 JS 中成为非函数 callback。

## 数量与验证

统计项目 definition code，包含宏模板，排除依赖、附带测试、schema 和文档。

| 状态 | assert-type | unsafe-coerce |
| --- | ---: | ---: |
| main `b94962e` | 124 | 41 |
| Component.tree 阶段前 `3842a45` | 125 | 41 |
| 本阶段前 `1f67370` | 119 | 41 |
| 本阶段后 | 105 | 41 |

当前源码的验证：

- 正式 Calcit 0.28.0 和本地候选分别通过全部 81 个原生 tests。
- 正式版本重新生成 JS 后，DOM host/SSR/ref/事件/坐标/data-comp/paste 回归通过。
- 正式版本重新生成默认 JS 后，`node --test test/*.test.mjs` 全部 31 项通过，
  包含六 key 全排列、最少移动、增删重排与新增 ref 的最终位置回归。
- quality baseline 通过，无违规，未调整预算。此前 None→nil 兼容读取函数带来的
  codeNil/unresolved 失败已通过删除该转换消除。
- TopixIM 独立副本重新严格检查、生成 JS，并执行真实首页组件 SSR；7,842 字符
  HTML 与迁移前逐字节一致。依赖组合和验证范围同 Component.tree 阶段记录。

81 项原生测试包含原有 nil 子节点、ref、effects 与 empty Component 行为测试；
测试名字与 tags 保留。针对字段存储的断言改为检查 ChildPair/Option，并继续验证
原始节点身份、空项保留、事件/ref 清除及渲染结果。

## 尚未完成的 #194 验收

`Component.tree` 仍有兼容 getter 返回原始 `Option<Struct>`。cursor 的 Tag/String
合同、unsafe-coerce 数量下降和第二个真实下游回归仍未完成。正式 0.28 的 Struct
构造字段证明限制也仍存在，详见 Component.tree 阶段记录；不把本地候选能力当作
已发布正式版本的能力。此阶段不代表整个 issue 或 milestone 完成。
