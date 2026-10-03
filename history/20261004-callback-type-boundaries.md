# 回调类型边界进度（#218）

基线：Respo main `b94962e`。本工作区独立于用户的 `feat/render-node-types-194`
checkout，未改动其中未提交的 RenderNode 设计。

## 已实现

`respo.util.detect/expect-function` 的入参和返回值使用同一个泛型 `Callback`，
保留传入函数的具体参数、返回类型和对象身份。函数体、运行时验证和错误消息不变。
开放 Dynamic 输入仍需在业务边界建立具体合同，泛型不会凭空证明签名。

泛型名使用 `Callback`，避开调用方 `for-keyed` 的泛型 `T`；当前编译器对同名
泛型的推导会使其局部回调被误认为不可调用。现有 keyed 测试覆盖该调用链。

新增 definition-attached 正控制验证 Number → Number 回调的身份与调用结果；
负控制验证非法值仍抛出指定消息。独立 scratch 将该回调参数换为 String，正式版
和候选版均以 `W_LOCAL_FN_ARG_TYPE_MISMATCH` 拒绝，避免把模块加载错误当作类型拒绝。

## 验证

- 正式 Calcit 0.28.0：76/76 原生测试通过。
- 候选编译器 `8e42f4a1`（版本字段 0.28.0，未发布）：69/76 通过。
  修改前为 66/74；恢复了原有 effect-on-update 生命周期测试，新增两项均通过。
- 正式编译器生成 JS，事件配置、SSR、memo 共 11 项 Node 回归通过；质量门禁通过。

## 尚未完成

#218 尚有 nullable event、ref 回调及事件表具体签名需要处理。候选版仍失败的七项：

- create-list-element：ignores-new-nil-child、replaces-and-removes-nil-children
- collect-event-refreshing：skips-nil-children-and-handlers
- find-element-diffs：clears-old-ref-before-setting-new-ref
- collect-mounting：runs-ref-mount-and-unmount-lifecycle
- make-string：serializes-component-root-after-muting-option-tree
- mute-element：clears-events-through-component-tree

这些失败继续按 #218 / #194 分别追踪，不能据正式版通过宣称候选版或类型迁移完成。
RenderNode / ChildPair 全量迁移、两个真实下游回归、dispatch 类型生效和动态告警复查
仍属于 0.19.0 milestone 的未完成工作。

## nullable event 与 ref 合同续进

通过 CLI 将 `Element.event` 和 `element-event` 如实声明为
`Map<Tag, JsNullish<EventHandler>>`。已有 raw Element 测试刻意保存 nil handler，
事件遍历已经在交付前排除 nil；本次只改声明，不删除这些业务样例或扩大为 Dynamic。
既有五个 attached 测试的 ref/event 回调补全实际参数与 Unit 返回签名，保留原测试
名称、unit 标签、执行内容和预期。ref 仍接收 JsNullish<DomElement>，事件仍接收
事件 map 与 dispatch 回调，无用参数明确忽略。

正式 Calcit 0.28.0：76/76 原生测试通过；真实生成 JS 的事件配置与 SSR 共八项
Node 回归通过，严格编译、规范格式与质量门禁通过。

重新在独立只读源码副本构建 Calcit main `b10dcad1`（0.29.0-alpha.1），回放为
71/76：clears-old-ref-before-setting-new-ref 与 runs-ref-mount-and-unmount-lifecycle
恢复通过。没有复用旧二进制假冒最新 main。

剩余五项：两项 create-list-element、collect-event-refreshing 的 nil handler、
make-string 的事件表、mute-element 的事件表。最新诊断仍包含 nullable Map 的
字段证明缺口、ref 创建边界的 Dynamic 合并、子节点累积，以及 Option<Never> 的
recur 约束。并非这些字段已完成迁移。

独立 scratch 将 EventHandler 展开为精确 Fn，仍拒绝如下合法合同转换：

```cirru.no-check
; immutable Map<Tag, Fn(Map<Tag,Dynamic>, Fn(Dynamic)->Unit)->Unit>
; 应可用于 Map<Tag, JsNullish<相同 Fn>>，当前字段 proof 拒绝。
```

诊断为 W_FN_ARG_TYPE_MISMATCH，明确指出 :event 字段；所以不是模块加载失败或
单纯别名未解析。此处不添加 unsafe-coerce、宽化 Dynamic 或删除 nil handler 来通过。
继续完成共享类型关系与真实开放创建边界后，再做 DOM/SSR 与两组下游最终回归。

## ref 创建边界与独立回放

新增内部 `normalize-ref`，集中两个创建入口原有的验证，返回
`JsNullish<Fn(JsNullish<DomElement>)->Unit>`。泛型 `RefInput` 保留输入证据；
函数身份、nil 行为、验证顺序和两个入口各自的错误消息不变。
两项 attached 测试覆盖合法 callback/nil 和非法值的实际报错。

本次精确源码回放：正式 0.28.0 原生 78/78、质量门禁通过；重新生成 JS 后
事件配置、nullish props、SSR、keyed、memo、patch lookup 共 28 项通过。
DOM host smoke 通过，覆盖事件安装、SSR ref 与事件、组件坐标和 paste 合同。

候选编译器基于 `b10dcad1`（0.29.0-alpha.1，未发布），另含尚未提交的
nullable 集合字段证明修复，使用独立 target 构建：78 项中 76 项通过，
#218 原先暴露的五项全部恢复。剩余两项 create-list-element 测试属于 #194：
children 累积得到 Dynamic，以及 loop 的 Option<Never> 初值无法接收
Option<Number> 的 recur。候选版 DOM JS 编译仍被这三处诊断阻断。

编译器正例已在 native 和同源码生成的 0.29.0-alpha.1 JS runtime 回放，
两种 Struct 构造语法的错误 payload 反例准确报告字段诊断。此前临时 target
含共享软链接，容易被其他构建替换；以上结果以独立目录重跑为准。
候选修复尚未发布，不能将这些结果归于上游 main，也不能宣称 #218 或
整个 0.19.0 milestone 已完成。
