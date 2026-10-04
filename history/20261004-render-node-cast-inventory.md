# #194 渲染与 cursor 类型转换盘点

基线：Respo `3fd1fa3`（Snapshot 与 `f7cb8c6` 相同）。表来自 `query search` 和逐定义
`query def` 的实际 AST，覆盖 `respo.render.*`、`respo.core`、`respo.cursor` 和
`respo.util.list` 的 definition code；依赖、附带测试、schema 和文档不计入。
宏模板中的转换保留。这里列出迁移路径，删除前仍需类型证明和语义回归。

全项目 definition code 的计数：main `b94962e` 为 124 个 assert-type / 41 个
unsafe-coerce；初次盘点时为 125 / 41。该阶段尚未达到数量下降的验收要求。
后续迁移与验证分别记录在本目录的 Component.tree、ChildPair、cursor、
净化及事件定位说明中；这些初次盘点数字不代表最新状态。事件定位
迁移又移除了 `find-event-target` 的两处 assert-type，未增加 unsafe-coerce。

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

## 当前统计复查

完成 RenderNode / ChildPair 与递归消费者迁移后，再用正式 CLI 的 query search --source project --exact --format json 提取实际 AST，只计每项 code@ 路径；范围继续包含项目测试命名空间和宏模板，排除依赖、schema、doc、examples、attached tests。当前为 101 处 assert-type、38 处 unsafe-coerce，较本记录的 b94962e 基线 124/41 分别减少 23/3。不能继续引用初次盘点的 125/41 描述当前源码。

| 当前区域 | assert-type | unsafe-coerce |
| --- | ---: | ---: |
| respo.render.diff | 31 | 1 |
| respo.render.patch | 11 | 4 |
| respo.render.effect | 0 | 0 |
| respo.render.html | 2 | 0 |
| respo.core | 13 | 3 |
| respo.cursor | 1 | 9 |

结构化结果保存在临时目录 respo-194-current-asserts.json 与 respo-194-current-coerces.json，未入库。减少计数只证明这项验收的进展；生产 dispatch 的同一 Op 关系、已发布依赖接入和完整 milestone 仍须分别验证。

## cursor / LIS 后续清理

继续移除有分支、返回类型和循环签名证明的转换后，当前计数更新为 95/33（assert-type / unsafe-coerce）。本轮减少 6/5，保留原运行时边界与空容器类型声明；正式 0.28.0 和候选均完成 100/100 native 与 12/12 keyed/cursor JS 回归。具体证明、正式循环推断失败及修复见 [cursor 与 LIS 记录](20261004-cursor-lis-proofs.md)。

## 2026-10-04 当前盘点与验收补充

本节替代旧表作为当前源码的计数依据；旧表保留初始问题和迁移路径。基线仍为
main `b94962e`，当前代码包含 `7644b19` 后的重复 key 循环与 Map/Struct 分支证明修正。计数扫描 Snapshot
所有 definition code 的调用 AST，包含宏模板，不包含依赖、schema、附带测试、
examples 或 Markdown。不是文本行数，也不将 Symbol 引用当作一次调用。

| 范围 | 基线 assert-type | 当前 assert-type | 基线 unsafe-coerce | 当前 unsafe-coerce |
| --- | ---: | ---: | ---: | ---: |
| 全项目 definition code | 124 | 92 | 41 | 30 |
| `respo.controller.client` | 1 | 0 | 1 | 1 |
| `respo.controller.resolve` | 4 | 1 | 0 | 0 |
| `respo.core` | 20 | 13 | 3 | 3 |
| `respo.cursor` | 2 | 1 | 12 | 1 |
| `respo.render.diff` | 36 | 22 | 1 | 1 |
| `respo.render.effect` | 2 | 0 | 0 | 0 |
| `respo.render.html` | 2 | 2 | 0 | 0 |
| `respo.render.patch` | 11 | 11 | 4 | 4 |
| `respo.util.detect` | 14 | 13 | 0 | 0 |
| `respo.util.list` | 4 | 4 | 1 | 1 |

### 剩余转换及需要的证明

扩大逐项表范围，补入 controller 与节点创建边界。表列出当前每一次转换，分类
沿用上面的消除路径。标为保留或待证明不意味着已经证明不可消除。

- N2/D1：公开创建器和 props/effects 仍接收开放数据；消费者不能从调用约定推断
  payload 已验证。进一步收紧必须保留现有运行验证、nil 和序列化语义。
- C2/C3：泛型 key 和开放状态仍混合 Map/Struct；需证明 branch 与 key 合同。
  不能为了匹配 Tag/String 场景拒绝已经支持的 Number key。
- I1：空容器声明只为新建 seed 提供类型，不验证已有容器；Map lookup、循环及
  缓存中的其余断言仍待上下文证明。新循环保留 key 的 K 与索引 Number，未换算法。
- F1：开放 Fn、props 回调及 DOM ref 必须保留实际参数/返回合同，不能只证明可调用。
- H1：JS style/dataset/parent 的宿主能力需要宿主合同；RenderNode 不提供这些证明。
- P1：BufList 生产者/消费者还需贯通 DomPatch，不能只删输出列表断言。
- 测试边界：CursorTestState adapter 是测试定义的开放输入验证，单独列出。

| 定义 | 当前 AST 坐标 | 调用 | 目标类型 | 下一项证明 |
| --- | --- | --- | --- | --- |
| `respo.controller.client/patch-instance!` | `code@3.2.2` | `unsafe-coerce` | `'respo.dom/DomElement` | F1 |
| `respo.controller.resolve/build-deliver-event` | `code@3.3.1.1.1` | `assert-type` | `(:: 'Option 'respo.schema/EventHandler)` | F1 |
| `respo.core/>>` | `code@3.1.0.1` | `assert-type` | `(:: List Dynamic)` | C3 |
| `respo.core/>>` | `code@3.1.1.1` | `unsafe-coerce` | `(:: Map Tag (:: JsNullish Dynamic))` | C3 |
| `respo.core/create-list-element` | `code@4.1.4.1.1` | `assert-type` | `(:: List (:: List Dynamic))` | D1/N2 |
| `respo.core/create-list-element-open` | `code@3.3` | `assert-type` | `(:: 'List (:: 'List 'Dynamic))` | D1/N2 |
| `respo.core/extract-effects-list` | `code@3.3.2.1.0.1` | `unsafe-coerce` | `(:: List Dynamic)` | N2：开放 effects 输入 |
| `respo.core/mount-app!` | `code@5.6.1` | `assert-type` | `(:: List respo.schema/DomPatch)` | P1 |
| `respo.core/normalize-dom-props` | `code@3.2.1.1.0.1` | `assert-type` | `(:: 'Fn ({} (:args ([] (:: 'Map 'Tag 'Dynamic) (:: 'Fn ({} (:args ([] 'Tag 'Dynamic)) (:return 'Bool))))) (:return (:: 'Map 'Tag 'Dynamic))))` | F1 |
| `respo.core/normalize-ref` | `code@3.3` | `assert-type` | `(:: Fn ({} (:args ([] (:: JsNullish respo.dom/DomElement))) (:return Unit)))` | F1 |
| `respo.core/realize-ssr!` | `code@5.3.2` | `unsafe-coerce` | `'js-ffi.browser/DomElementHost` | H1 |
| `respo.core/realize-ssr!` | `code@5.8.1` | `assert-type` | `(:: List respo.schema/DomPatch)` | P1 |
| `respo.core/rerender-app!` | `code@3.3.1.3.3.1.0.1` | `assert-type` | `(:: List respo.schema/DomPatch)` | P1 |
| `respo.core/run-effect-ops!` | `code@3.2.2.1.1.0` | `assert-type` | `Fn` | F1 |
| `respo.core/run-effect-ops!` | `code@3.2.3.1.1.0` | `assert-type` | `Fn` | F1 |
| `respo.core/run-effect-ops!` | `code@3.2.4.1.1.0` | `assert-type` | `Fn` | F1 |
| `respo.core/run-effect-ops!` | `code@3.2.5.1.1.0` | `assert-type` | `Fn` | F1 |
| `respo.core/run-first-task!` | `code@3.1.0.1` | `assert-type` | `Fn` | F1 |
| `respo.cursor/coerce-cursor-test-state` | `code@3` | `assert-type` | `CursorTestState` | 测试边界 |
| `respo.cursor/get-state-at` | `code@3.3.3.1.0.1` | `unsafe-coerce` | `(:: 'Map 'KeyInput (:: 'JsNullish 'Dynamic))` | C2/C3 |
| `respo.render.diff/find-children-diffs` | `code@3.2.3.2.1.4.1.7.1.2.2` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.2.3.2.1.4.2.2.1.0.1` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.2.3.2.1.4.2.2.1.1.1` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.2.3.2.1.4.3.2.2.1.0.1` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.2.3.2.1.4.4.2.1.0.1` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.2.3.2.1.4.5.2.3.1.1.2` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.2.3.2.1.4.5.2.3.1.2.1.4.1` | `assert-type` | `(:: 'Option 'Number)` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.2.3.2.1.4.6.2.1.0.1` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.2.3.3.1.3.1.1.1` | `assert-type` | `(:: 'Option 'Number)` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.2.3.3.1.3.2.3.1.1.2` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/find-children-diffs` | `code@3.2.3.3.1.3.2.3.1.2.1.4.1` | `assert-type` | `(:: 'Option 'Number)` | I1 |
| `respo.render.diff/first-duplicate-key-js` | `code@3.2.1.1.1` | `assert-type` | `(:: 'Option 'Number)` | I1 |
| `respo.render.diff/first-duplicate-key-js` | `code@3.2.2.1.0.1` | `assert-type` | `Number` | I1 |
| `respo.render.diff/first-duplicate-key-js` | `code@3.2.2.1.1.1` | `assert-type` | `(:: 'Option 'Number)` | I1 |
| `respo.render.diff/first-duplicate-key-native` | `code@3.1.0.1.1.1.1` | `assert-type` | `(:: 'Set 'K)` | I1 |
| `respo.render.diff/first-duplicate-key-native` | `code@3.1.0.1.1.2.1` | `assert-type` | `(:: 'Set 'K)` | I1 |
| `respo.render.diff/keyed-boundaries` | `code@3.2.2.1.2.1.2` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/keyed-boundaries` | `code@3.2.2.1.2.2.2` | `assert-type` | `'Number` | I1 |
| `respo.render.diff/lis-reconstruct` | `code@3.1.1.1` | `assert-type` | `(:: 'Set 'Number)` | I1 |
| `respo.render.diff/lis-values` | `code@3.1.2.1` | `assert-type` | `(:: 'List 'Number)` | I1 |
| `respo.render.diff/lis-values` | `code@3.1.3.1` | `assert-type` | `(:: 'List 'Number)` | I1 |
| `respo.render.diff/lis-values` | `code@3.1.4.1` | `assert-type` | `(:: 'List 'Number)` | I1 |
| `respo.render.diff/props-as-list` | `code@3.2` | `unsafe-coerce` | `(:: 'List (:: 'List 'Dynamic))` | D1/N2 |
| `respo.render.html/coerce-pairs` | `code@3` | `assert-type` | `(:: 'List (:: 'List 'Dynamic))` | D1/N2 |
| `respo.render.html/props->html` | `code@3.1.0.1` | `assert-type` | `(:: 'List (:: 'List 'Dynamic))` | D1/N2 |
| `respo.render.patch/add-style` | `code@3.2.1` | `unsafe-coerce` | `JsObject` | H1 |
| `respo.render.patch/apply-dom-changes` | `code@3.1.0.1.1` | `assert-type` | `(:: 'Map (:: 'List 'Number) 'respo.dom/DomElement)` | I1/H1：缓存与宿主列表 |
| `respo.render.patch/apply-dom-changes` | `code@3.1.2.1.1` | `assert-type` | `(:: 'Map (:: 'List 'Number) (:: 'List 'respo.dom/DomElement))` | I1/H1：缓存与宿主列表 |
| `respo.render.patch/apply-dom-changes` | `code@3.1.3.1.1` | `assert-type` | `(:: 'Map (:: 'List 'Number) (:: 'List 'respo.render.patch/MoveScrollState))` | I1/H1：缓存与宿主列表 |
| `respo.render.patch/apply-dom-changes` | `code@3.1.4.1.3.2.2.1.0.1` | `assert-type` | `'respo.render.patch/MoveScrollState` | I1/H1：缓存与宿主列表 |
| `respo.render.patch/apply-dom-changes` | `code@3.2.2.14.1.1.1.1` | `assert-type` | `(:: 'List 'respo.dom/DomElement)` | I1/H1：缓存与宿主列表 |
| `respo.render.patch/apply-dom-changes` | `code@3.2.2.14.1.2.4` | `assert-type` | `(:: 'List 'respo.dom/DomElement)` | I1/H1：缓存与宿主列表 |
| `respo.render.patch/collect-scroll-states` | `code@3.1.0.1.2` | `assert-type` | `(:: 'List 'respo.render.patch/MoveScrollState)` | I1/H1：缓存与宿主列表 |
| `respo.render.patch/collect-scroll-states` | `code@3.2.2` | `assert-type` | `(:: 'List 'respo.render.patch/MoveScrollState)` | I1/H1：缓存与宿主列表 |
| `respo.render.patch/find-target-cached` | `code@3.3.1.3.1.1.1` | `assert-type` | `Number` | I1/H1：缓存与宿主列表 |
| `respo.render.patch/insert-before-target!` | `code@3.3.1.1.0.1` | `unsafe-coerce` | `'respo.dom/DomElement` | H1 |
| `respo.render.patch/invalidate-target-children!` | `code@3.2.1.0.1` | `assert-type` | `(:: List Number)` | I1/H1：缓存与宿主列表 |
| `respo.render.patch/invalidate-target-children!` | `code@3.2.1.1.1` | `assert-type` | `(:: Map (:: List Number) 'respo.dom/DomElement)` | I1/H1：缓存与宿主列表 |
| `respo.render.patch/replace-prop` | `code@3.2.2.1.1.1` | `unsafe-coerce` | `JsObject` | H1 |
| `respo.render.patch/replace-style` | `code@3.2.1` | `unsafe-coerce` | `JsObject` | H1 |
| `respo.util.detect/component-effects` | `code@3.1.0.1` | `assert-type` | `'respo.schema/Component` | 开放节点创建边界 |
| `respo.util.detect/component-listeners` | `code@3.1.0.1` | `assert-type` | `'respo.schema/Component` | 开放节点创建边界 |
| `respo.util.detect/component-name` | `code@3.1.0.1` | `assert-type` | `'respo.schema/Component` | 开放节点创建边界 |
| `respo.util.detect/component-tree` | `code@3.1.0.1` | `assert-type` | `'respo.schema/Component` | 开放节点创建边界 |
| `respo.util.detect/effect-args` | `code@3.1.0.1` | `assert-type` | `'respo.schema/Effect` | 开放节点创建边界 |
| `respo.util.detect/effect-method` | `code@3.1.0.1` | `assert-type` | `'respo.schema/Effect` | 开放节点创建边界 |
| `respo.util.detect/effect-name` | `code@3.1.0.1` | `assert-type` | `'respo.schema/Effect` | 开放节点创建边界 |
| `respo.util.detect/element-attrs` | `code@3.1.0.1` | `assert-type` | `'respo.schema/Element` | 开放节点创建边界 |
| `respo.util.detect/element-event` | `code@3.1.0.1` | `assert-type` | `'respo.schema/Element` | 开放节点创建边界 |
| `respo.util.detect/element-name` | `code@3.1.0.1` | `assert-type` | `'respo.schema/Element` | 开放节点创建边界 |
| `respo.util.detect/element-ref` | `code@3.1.0.1` | `assert-type` | `'respo.schema/Element` | 开放节点创建边界 |
| `respo.util.detect/element-style` | `code@3.1.0.1` | `assert-type` | `'respo.schema/Element` | 开放节点创建边界 |
| `respo.util.detect/listener-handler` | `code@3.1.0.1` | `assert-type` | `'respo.schema/RespoListener` | 开放节点创建边界 |
| `respo.util.list/first-pair` | `code@3` | `assert-type` | `(:: 'List 'Dynamic)` | D1/I1 |
| `respo.util.list/index-of-dynamic` | `code@3.2.3.2.2` | `assert-type` | `'Number` | D1/I1 |
| `respo.util.list/pair-key` | `code@3` | `assert-type` | `'Tag` | D1/I1 |
| `respo.util.list/pick-event` | `code@3.1.1.1.2` | `unsafe-coerce` | `(:: Map Tag respo.schema/EventHandler)` | F1 |
| `respo.util.list/pick-event` | `code@3.1.2.1.2.3.2.4` | `assert-type` | `respo.schema/EventHandler` | F1 |

### 当前验证与尚未完成的验收

重复 key 回归覆盖空输入、Tag/String 同名但不同 key、按原输入顺序选择重复 key，
以及 hash bucket 中代表索引的顺序与无匹配结果。非空读取使用 nth 0；Set<K>
声明只用于两个新空 seed，循环合同保持同一 K。正式 0.28 和候选各 103/103 native
通过，正式重新生成 JS 后 keyed moves 全通过，`yarn test-dom-host` 通过；正式严格
检查与原 quality baseline 通过。未增加预算，也未提交生成的 JS/JSON。

实际下游 Calcium 与 Cumulo Reel 的迁移记录分别在各自工作区。Calcium 两入口严格
检查和 67 项回归已验证；Cumulo 候选两入口严格检查、24 项 native、共享协议 JS、
Node runtime、Vite 和浏览器注册/路由/退出通过。Cumulo 正式 0.28 仍有两条 nullable
watcher 告警，质量门禁仍失败；依赖与编译器修复尚未全部发布，因此不能把本地
候选组合写成正式下游 CI 或整个 milestone 已完成。

本盘点尚需发布到 #194 和最终 PR；#195 的 dispatch 类型贯通、#104 与发布依赖
完整回归也未完成。计数下降只证明这项验收的数据，不替代其他要求。

### Map / Struct 分支证明

update-state-tree-kv 在 map? / struct? 分支中直接使用已经收窄的 state，移除两处
state 强转。再检查 assoc 的真实泛型 K 合同后，移除 key 的 Tag 假声明，开放 key
交由既有底层 assoc 做原有运行验证；未新增转换或 runtime 分支。
没有新加类型谓词、改变状态树层级、字段查找顺序或更新原子的方式。
新增回归验证 Number 路径与 Number Map key，以及 Struct 字段更新前后的具名身份
和原值不变。新增非支持的 Number Struct key 拒绝回归，原状态保持不变。正式/候选各 106/106 native，正式重新生成 JS 后 5/5 cursor 回归通过；
严格检查和原 quality baseline 通过。当前扩展盘点表为 78 处转换。

日志：`/private/tmp/respo-194-cursor-branch-{formal,candidate,js,check,quality}.log`。


### Draft PR 与持续回归

当前分支已创建中文 draft PR #221。70a8f23 的 GitHub Actions run 37198815100
实际完成并成功；逐步骤确认 Snapshot 格式/严格检查/quality、native tests、DOM
host、cursor keys、Markdown 和 Vite build 均为 success。PR 的限制和未发布依赖
明确保留，不关闭 issue。

核对 workflow 时发现 6 个新增渲染遍历测试文件尚未由 CI 调用。正式 0.28 重新
生成 JS 后，该组 15/15 Node 测试通过，已作为 Test typed render traversal 接入
workflow，涵盖 DOM 创建、effects、事件刷新、listener、事件定位与 purification。
本记录的首轮 CI 成功对应加入这一新步骤之前的提交，新步骤仍需新 run 验证。
