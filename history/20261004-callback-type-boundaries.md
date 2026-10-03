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
