# Patch 坐标查询与重复 key 检测 — #191

性能测量基线为 #204 的 `5f302951c5dfd9e067676fc8b5105c7a8d1bfc6a`。Calcit 和 @calcit/procs `0.28.0-alpha.3`、js-ffi `0.2.1-alpha.11`、Node `24.4.1`，macOS arm64、Chrome `154.0.0.0`。#204 已合并；本分支已同步 main `87f2242`。

## 实现

- 每次 patch 应用单独缓存已成功定位的 DOM 坐标前缀。重复路径复用节点；缺失节点不缓存，缓存不会跨调用保留。
- 插入、移除、替换会使受影响的子坐标失效；追加和移动会使子坐标失效。保守地只保留未改变的父节点及其祖先，使失效处理按路径深度执行。
- 内容属性使后代缓存失效；outerHTML 使所在父节点的子坐标失效。生命周期回调可能改变任意节点或挂载根，因此清空坐标缓存。
- 重复 key 检测保留原错误文本及原列表中最先重复的 key。原生后端使用哈希集合，JavaScript 使用 Calcit 哈希到原生 Map 桶的映射，并在桶内检查深度相等以区分碰撞。除 key 的哈希、比较成本和极端碰撞外，预期处理成本为线性。空列表及单项列表返回 false，不输出警告。

## Review 修复

新增节点先追加并完成重排，再按最终坐标执行挂载 effect/ref。子节点快照与滚动快照都限制在一个连续 move 批次内：非 move patch 前恢复滚动并清空快照，下一批次捕获当前 DOM。

修复前，最终挂载位置、跨 effect 的二次移动顺序、移除/追加后的二次移动三个回归均失败；修复后通过。Chrome 中新增节点的 ref 读到索引 1、顺序 `[0,9,2,1,3]`，其 top 与前一兄弟的 bottom 都为 969；第二 move 批次顺序正确。原生和强制 fallback 的 keyed fixtures 均保持节点身份、焦点、输入、选区、滚动及生命周期计数，控制台无错误。浏览器 deep/long-list/dispatch/index 原型四个负载的结果校验通过，其中两种 dispatch 路径均调用并投递 5000 次。

合并后验证：61 项原生测试、19 项 keyed-moves/patch-lookup/SSR/nullish Node 回归通过；严格检查、质量基线、DOM host、DomPatch 正负类型检查通过；63 份文档中的 113 个可检查片段通过；Vite 构建通过。

## 测量复现

编译两个 checkout 后运行：

```sh
mkdir -p .calcit/snippets
node test/render-performance-bench.mjs /path/to/compiled-baseline > .calcit/snippets/render-performance-bench.json
```

新生成的测量结果默认保存在被忽略的 `.calcit/snippets`，无需逐次入库。Worker 隔离两个版本的 Calcit 注册表。浏览器入口为 `test/examples/render-performance-bench.html?baseline=URL_ENCODED_BASELINE_URL`；同时启动两个 checkout 的服务，将当前 harness、`render-performance-fixture.mjs` 和 `dom-host.mjs` 复制到基线，保留基线编译后的运行时。

三轮预热后进行十一轮测量，交替版本顺序并轮换负载顺序。计时不包含准备过程，每轮负载执行后检查全部目标属性及准确的回调/dispatch 次数。浏览器使用真实 DOM，不强制 layout；Node 使用记录读取次数的 DOM host。

- deep：同一 32 层坐标上的 1000 次属性 patch。
- long-list：四层父节点下的 1000 个子节点属性 patch，同时检测 1000 个唯一 key。
- dispatch：1000 行组件、50 个 listener 的树上广播 100 次，共 5000 次回调及操作投递。
- listener-index-prototype：遍历同一棵树收集 listener 一次，再广播 100 次；计时包含收集过程。这是 JavaScript 评估原型，尚未加入渲染器。

| 负载 | Node 修复前 / ms | Node 修复后 / ms | Chrome 修复前 / ms | Chrome 修复后 / ms |
| --- | --- | --- | --- | --- |
| deep | 9.469 | 3.172 | 10.5 | 3.1 |
| long-list | 14.679 | 4.018 | 14.1 | 3.9 |
| dispatch | 42.441 | 42.996 | 36 | 35.6 |
| listener-index-prototype | 0.613 | 0.589 | 0.5 | 0.5 |

Node host 的子节点读取次数：deep 为 32,000 → 32，long-list 为 5,000 → 1,004。本地计时仅为观察结果。广播实现保持原样，前后小幅差异反映运行波动。

[原始样本和执行顺序](20261001-render-performance-bench.json)用于复核上述历史中位数，保留入库；继承的 keyed-moves 测量也用于复核已发布结论。两类 JSON 都由 `.gitattributes` 的 `history/*-bench.json linguist-generated=true` 标记为 generated，减少默认 review 噪声。修复后的回归验证不替换既有历史计时，也不宣称重新测量了这些中位数。

## Listener 索引评估

同一棵树接收多次广播时，一次收集有收益。渲染器索引还需覆盖树替换、重渲染和热更新后的刷新、最新闭包、重复组件位置及遍历顺序。每次渲染都重建会给从不广播的应用增加整树遍历，dispatch 触发的渲染也可能每次使索引失效。本 PR 保留现有广播方式，后续在覆盖这些刷新场景后再评估按树惰性建立索引。
