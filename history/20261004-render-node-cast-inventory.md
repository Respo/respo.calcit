# #194 渲染与 cursor 类型转换盘点

基线：Respo `3fd1fa3`（Snapshot 与 `f7cb8c6` 相同）。表来自 `query search` 和逐定义
`query def` 的实际 AST，覆盖 `respo.render.*`、`respo.core`、`respo.cursor` 和
`respo.util.list` 的 definition code；依赖、附带测试、schema 和文档不计入。
宏模板中的转换保留。这里列出迁移路径，删除前仍需类型证明和语义回归。

全项目 definition code 的计数：main `b94962e` 为 124 个 assert-type / 41 个
unsafe-coerce；当前为 125 / 41。这个阶段尚未达到数量下降的验收要求。

## 消除路径

| 标记 | 判断与所需证据 |
| --- | --- |
| N1 | 渲染节点分类。Element / Component 由 RenderNode 变体携带，消费者通过 match 获得具体类型，移除裸 Struct 或 Element 转换。 |
| N2 | 子节点对或组件返回 markup。内部 ChildPair 保存 key 与 RenderNode；开放输入在创建边界验证，保持验证顺序和 nil 子节点语义。effects 向量仍需保留自己的边界。 |
| C1 | cursor 被错误收窄为 Tag。合同须覆盖实际 Tag / String key，且保持原始 state map 的 key、路径和存取方式；移除 List<Tag> 假转换。 |
| C2 | 状态 Struct 更新。当前 state 值是开放数据，保留 Map / Struct 运行时分支；字段 key 的实际支持范围需核对，不能机械改成 Tag。 |
| C3 | 开放 state / branch / changes 容器。保留 nil 和初始化语义，在既有验证处建立 Map 证据；无证据的状态数据不直接换为具体 schema。 |
| I1 | 索引、LIS 或缓存累积。明确 List<Number>、Option<Number> 和缓存泛型及循环签名后，核对可移除的局部转换；空容器的类型初始化仍可能需要声明。 |
| F1 | callback / 事件表边界。保留完整 Fn 签名和实际 nullable 合同；验证函数与调度队列的求值、错误消息及调用顺序保留。 |
| H1 | JavaScript DOM 宿主。由具体 external-object trait 和现有宿主检查建立证据；RenderNode 不能证明 JS 对象的能力。 |
| P1 | DomPatch 缓冲区。生产者和缓冲容器需保持具体 DomPatch 类型，不能只删消费处转换。 |
| D1 | props、style、attrs 与一般数据容器。先核对生产者签名及开放创建边界，保留 DOM/SSR 序列化与排序行为。 |

## 逐项位置

`code@` 后的坐标可作为 `calcit tree show <definition> --path <坐标>` 的参数。
表中的目标类型按当前 AST 展示，标记描述的是后续证明路径。

| 定义 | AST 路径 | 转换 | 当前目标类型 | 路径 |
| --- | --- | --- | --- | --- |
| `respo.core/>>` | `code@3.1.0.1.0` | `assert-type` | `(:: List Dynamic)` | C3 |
| `respo.core/>>` | `code@3.1.1.1.0` | `unsafe-coerce` | `(:: Map Tag (:: JsNullish Dynamic))` | C3 |
| `respo.core/create-list-element` | `code@4.1.4.1.1.0` | `assert-type` | `(:: List (:: List Dynamic))` | D1 |
| `respo.core/create-list-element-open` | `code@3.3.0` | `assert-type` | `(:: 'List (:: 'List 'Dynamic))` | N2 |
| `respo.core/decorate-defcomp` | `code@3.3.1.2.1.0.1.0` | `assert-type` | `'respo.schema/Element` | N1 |
| `respo.core/decorate-defcomp` | `code@3.3.1.2.1.1.1.0` | `assert-type` | `'Struct` | N1 |
| `respo.core/decorate-defcomp` | `code@3.3.1.2.1.1.1.1.3.2.3.2.3.1.0` | `assert-type` | `'List` | D1 |
| `respo.core/extract-effects-list` | `code@3.3.2.1.0.1.0` | `unsafe-coerce` | `(:: List Dynamic)` | N2 |
| `respo.core/extract-effects-list` | `code@3.3.2.2.2.2.3.1.8.2.0` | `assert-type` | `Struct` | N1 |
| `respo.core/extract-effects-list` | `code@3.3.2.2.2.3.1.1.1.2.2.0` | `assert-type` | `Struct` | N1 |
| `respo.core/extract-effects-list` | `code@3.3.3.2.8.2.0` | `assert-type` | `Struct` | N1 |
| `respo.core/mount-app!` | `code@5.6.1.0` | `assert-type` | `(:: List respo.schema/DomPatch)` | P1 |
| `respo.core/normalize-dom-props` | `code@3.2.1.1.0.1.0` | `assert-type` | `(:: 'Fn ({} (:args ([] (:: 'Map 'Tag 'Dynamic) (:: 'Fn ({} (:args ([] 'Tag 'Dynamic)) (:return 'Bool))))) (:return (:: 'Map 'Tag 'Dynamic))))` | F1 |
| `respo.core/normalize-ref` | `code@3.3.0` | `assert-type` | `(:: Fn ({} (:args ([] (:: JsNullish respo.dom/DomElement))) (:return Unit)))` | F1 |
| `respo.core/realize-ssr!` | `code@5.3.2.0` | `unsafe-coerce` | `'js-ffi.browser/DomElementHost` | H1 |
| `respo.core/realize-ssr!` | `code@5.8.1.0` | `assert-type` | `(:: List respo.schema/DomPatch)` | P1 |
| `respo.core/rerender-app!` | `code@3.3.1.3.3.1.0.1.0` | `assert-type` | `(:: List respo.schema/DomPatch)` | P1 |
| `respo.core/run-effect-ops!` | `code@3.2.2.1.1.0.0` | `assert-type` | `Fn` | F1 |
| `respo.core/run-effect-ops!` | `code@3.2.3.1.1.0.0` | `assert-type` | `Fn` | F1 |
| `respo.core/run-effect-ops!` | `code@3.2.4.1.1.0.0` | `assert-type` | `Fn` | F1 |
| `respo.core/run-effect-ops!` | `code@3.2.5.1.1.0.0` | `assert-type` | `Fn` | F1 |
| `respo.core/run-first-task!` | `code@3.1.0.1.0` | `assert-type` | `Fn` | F1 |
| `respo.cursor/coerce-cursor-test-state` | `code@3.0` | `assert-type` | `CursorTestState` | C3 |
| `respo.cursor/get-state-at` | `code@3.2.3.1.0.1.0` | `unsafe-coerce` | `(:: 'Map 'Tag (:: 'JsNullish 'Dynamic))` | C3 |
| `respo.cursor/get-state-at` | `code@3.2.3.1.1.1.0` | `assert-type` | `'Tag` | C1 |
| `respo.cursor/update-state-tree` | `code@3.1.0.1.0` | `unsafe-coerce` | `(:: List Tag)` | C1 |
| `respo.cursor/update-state-tree-kv` | `code@3.1.0.1.0` | `unsafe-coerce` | `(:: List Tag)` | C1 |
| `respo.cursor/update-state-tree-kv` | `code@3.2.2.2.1.0.1.0` | `unsafe-coerce` | `(:: Map Dynamic Dynamic)` | C3 |
| `respo.cursor/update-state-tree-kv` | `code@3.2.2.3.2.3.1.0` | `unsafe-coerce` | `Struct` | C2 |
| `respo.cursor/update-state-tree-kv` | `code@3.2.2.3.2.3.2.0` | `unsafe-coerce` | `Tag` | C2 |
| `respo.cursor/update-state-tree-merge` | `code@3.1.0.1.0` | `unsafe-coerce` | `(:: List Tag)` | C1 |
| `respo.cursor/update-state-tree-merge` | `code@3.2.2.1.0.1.0` | `unsafe-coerce` | `(:: Map Dynamic Dynamic)` | C3 |
| `respo.cursor/update-state-tree-merge` | `code@3.2.2.1.1.1.0` | `unsafe-coerce` | `(:: List (:: List Dynamic))` | C3 |
| `respo.cursor/update-state-tree-merge` | `code@3.2.2.2.2.3.1.3.1.2.1.0` | `unsafe-coerce` | `(:: Map Dynamic Dynamic)` | C3 |
| `respo.cursor/update-state-tree-merge` | `code@3.2.2.2.2.3.1.3.1.3.2.1.0` | `unsafe-coerce` | `Struct` | C2 |
| `respo.cursor/update-state-tree-merge` | `code@3.2.2.2.2.3.1.3.1.3.2.2.0` | `unsafe-coerce` | `Tag` | C2 |
| `respo.render.diff/collect-event-refreshing` | `code@3.2.1.2.2.2.2.2.4.0` | `assert-type` | `'Struct` | N1 |
| `respo.render.diff/find-children-diffs` | `code@3.2.2.3.1.1.1.1.1.0` | `assert-type` | `'List` | N2 |
| `respo.render.diff/find-children-diffs` | `code@3.2.2.3.1.2.4.1.0` | `assert-type` | `'List` | N2 |
| `respo.render.diff/find-children-diffs` | `code@3.3.2.1.4.1.7.1.2.2.0` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.3.2.1.4.2.2.1.0.1.0` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.3.2.1.4.2.2.1.1.1.0` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.3.2.1.4.3.2.2.1.0.1.0` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.3.2.1.4.3.2.2.1.1.1.0` | `assert-type` | `'Struct` | N1 |
| `respo.render.diff/find-children-diffs` | `code@3.3.2.1.4.4.2.1.0.1.0` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.3.2.1.4.4.2.1.1.1.0` | `assert-type` | `'Struct` | N1 |
| `respo.render.diff/find-children-diffs` | `code@3.3.2.1.4.5.2.3.1.1.2.0` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.3.2.1.4.5.2.3.1.2.1.4.1.0` | `assert-type` | `(:: 'Option 'Number)` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.3.2.1.4.6.2.1.0.1.0` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.3.2.1.4.6.2.1.1.1.0` | `assert-type` | `'Struct` | N1 |
| `respo.render.diff/find-children-diffs` | `code@3.3.3.1.3.1.1.1.0` | `assert-type` | `(:: 'Option 'Number)` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.3.3.1.3.2.3.1.1.2.0` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.3.3.1.3.2.3.1.2.1.4.1.0` | `assert-type` | `(:: 'Option 'Number)` | I1 |
| `respo.render.diff/find-element-diffs` | `code@5.2.5.1.2.3.1.2.4.0` | `assert-type` | `'Struct` | N1 |
| `respo.render.diff/first-duplicate-key-js` | `code@3.2.1.1.1.0` | `assert-type` | `(:: 'Option 'Number)` | I1 |
| `respo.render.diff/first-duplicate-key-js` | `code@3.2.2.1.0.1.0` | `assert-type` | `Number` | I1 |
| `respo.render.diff/first-duplicate-key-js` | `code@3.2.2.1.1.1.0` | `assert-type` | `(:: 'Option 'Number)` | I1 |
| `respo.render.diff/first-duplicate-key-native` | `code@3.1.0.1.2.3.1.0.1.0` | `assert-type` | `'K` | D1 |
| `respo.render.diff/first-duplicate-key-native` | `code@3.1.0.1.2.3.1.1.1.0` | `assert-type` | `(:: Set 'K)` | I1 |
| `respo.render.diff/first-duplicate-key-native` | `code@3.1.0.1.2.3.1.2.1.0` | `assert-type` | `(:: Set 'K)` | I1 |
| `respo.render.diff/first-duplicate-key-native` | `code@3.2.3.2.1.0.1.0` | `assert-type` | `'K` | D1 |
| `respo.render.diff/index-of-equal-key` | `code@3.2.3.1.0.1.0` | `assert-type` | `Number` | I1 |
| `respo.render.diff/keyed-boundaries` | `code@3.2.2.1.2.1.2.0` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/keyed-boundaries` | `code@3.2.2.1.2.2.2.0` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/lis-reconstruct` | `code@3.1.1.1.0` | `assert-type` | `(:: 'Set 'Number)` | I1 |
| `respo.render.diff/lis-reconstruct` | `code@3.2.3.1.1.2.0` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/lis-reconstruct` | `code@3.2.3.2.1.0` | `assert-type` | `(:: 'Set 'Number)` | I1 |
| `respo.render.diff/lis-reconstruct` | `code@3.2.3.2.2.1.2.0` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/lis-values` | `code@3.1.2.1.0` | `assert-type` | `(:: 'List 'Number)` | I1 |
| `respo.render.diff/lis-values` | `code@3.1.3.1.0` | `assert-type` | `(:: 'List 'Number)` | I1 |
| `respo.render.diff/lis-values` | `code@3.1.4.1.0` | `assert-type` | `(:: 'List 'Number)` | I1 |
| `respo.render.diff/lis-values` | `code@3.2.2.1.2.0` | `assert-type` | `(:: 'List 'Number)` | I1 |
| `respo.render.diff/lis-values` | `code@3.2.2.1.3.3.1.1.0` | `assert-type` | `(:: 'List 'Number)` | I1 |
| `respo.render.diff/lis-values` | `code@3.2.3.1.1.1.1.3.1.1.0` | `assert-type` | `(:: 'List 'Number)` | I1 |
| `respo.render.diff/props-as-list` | `code@3.2.0` | `unsafe-coerce` | `(:: 'List (:: 'List 'Dynamic))` | D1 |
| `respo.render.effect/collect-mounting` | `code@3.2.1.2.2.2.2.2.4.0` | `assert-type` | `'Struct` | N1 |
| `respo.render.effect/collect-unmounting` | `code@3.2.1.1.2.2.2.2.4.0` | `assert-type` | `'Struct` | N1 |
| `respo.render.html/coerce-pairs` | `code@3.0` | `assert-type` | `(:: 'List (:: 'List 'Dynamic))` | D1 |
| `respo.render.html/props->html` | `code@3.1.0.1.0` | `assert-type` | `(:: 'List (:: 'List 'Dynamic))` | D1 |
| `respo.render.patch/add-style` | `code@3.2.1.0` | `unsafe-coerce` | `JsObject` | H1 |
| `respo.render.patch/apply-dom-changes` | `code@3.1.0.1.1.0` | `assert-type` | `(:: 'Map (:: 'List 'Number) 'respo.dom/DomElement)` | I1 |
| `respo.render.patch/apply-dom-changes` | `code@3.1.2.1.1.0` | `assert-type` | `(:: 'Map (:: 'List 'Number) (:: 'List 'respo.dom/DomElement))` | I1 |
| `respo.render.patch/apply-dom-changes` | `code@3.1.3.1.1.0` | `assert-type` | `(:: 'Map (:: 'List 'Number) (:: 'List 'respo.render.patch/MoveScrollState))` | I1 |
| `respo.render.patch/apply-dom-changes` | `code@3.1.4.1.3.2.2.1.0.1.0` | `assert-type` | `'respo.render.patch/MoveScrollState` | I1 |
| `respo.render.patch/apply-dom-changes` | `code@3.2.2.14.1.1.1.1.0` | `assert-type` | `(:: 'List 'respo.dom/DomElement)` | I1 |
| `respo.render.patch/apply-dom-changes` | `code@3.2.2.14.1.2.4.0` | `assert-type` | `(:: 'List 'respo.dom/DomElement)` | I1 |
| `respo.render.patch/collect-scroll-states` | `code@3.1.0.1.2.0` | `assert-type` | `(:: 'List 'respo.render.patch/MoveScrollState)` | I1 |
| `respo.render.patch/collect-scroll-states` | `code@3.2.2.0` | `assert-type` | `(:: 'List 'respo.render.patch/MoveScrollState)` | I1 |
| `respo.render.patch/find-target-cached` | `code@3.3.1.3.1.1.1.0` | `assert-type` | `Number` | I1 |
| `respo.render.patch/insert-before-target!` | `code@3.3.1.1.0.1.0` | `unsafe-coerce` | `'respo.dom/DomElement` | H1 |
| `respo.render.patch/invalidate-target-children!` | `code@3.2.1.0.1.0` | `assert-type` | `(:: List Number)` | I1 |
| `respo.render.patch/invalidate-target-children!` | `code@3.2.1.1.1.0` | `assert-type` | `(:: Map (:: List Number) 'respo.dom/DomElement)` | I1 |
| `respo.render.patch/replace-prop` | `code@3.2.2.1.1.1.0` | `unsafe-coerce` | `JsObject` | H1 |
| `respo.render.patch/replace-style` | `code@3.2.1.0` | `unsafe-coerce` | `JsObject` | H1 |
| `respo.util.list/first-pair` | `code@3.0` | `assert-type` | `(:: 'List 'Dynamic)` | N2 |
| `respo.util.list/index-of-dynamic` | `code@3.2.3.2.2.0` | `assert-type` | `'Number` | I1 |
| `respo.util.list/pair-key` | `code@3.0` | `assert-type` | `'Tag` | N2 |
| `respo.util.list/pick-event` | `code@3.1.1.1.2.0` | `unsafe-coerce` | `(:: Map Tag respo.schema/EventHandler)` | F1 |
| `respo.util.list/pick-event` | `code@3.1.2.1.2.3.2.4.0` | `assert-type` | `respo.schema/EventHandler` | F1 |

## 后续验证

- RenderNode / ChildPair 的实际生产字段与递归消费者均完成迁移。
- 现有 native attached tests、重新生成 JS 的 Node/SSR/DOM lifecycle 回归通过。
- Calcium Workflow 与 TopixIM 的真实项目分别验证并记录版本与迁移方式。
- 使用同一统计范围报告前后数量；基线或检查不能为通过而扩大。
