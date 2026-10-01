---
title: "渲染器协议升级"
scope: "module"
kind: "guide"
category: "ecosystem"
---

<a id="keyed-moves-and-dompatch"></a>

## keyed 移动与 DomPatch

内部的 `respo.schema/DomPatch` Enum 增加 `:move-element`。直接匹配所有 variant 的代码需要增加该分支，编译器会检查穷尽性。应用的事件 dispatch 和 keyed 子节点写法保持原有接口。

```cirru
respo.schema/DomPatch :move-element ([] 0) 3 (%:: Option :some 1)
```

三个 payload 分别为父节点的数字 DOM 坐标、源节点索引、可选的锚点索引。两个索引都引用同一份子节点快照：在父节点当前连续 move 批次的第一次移动前捕获。`:none` 表示移到末尾。该 variant 不携带虚拟坐标，因为移动后节点的 keyed 事件坐标不变。

Diff 先按旧 DOM 坐标更新保留的子节点，再按索引倒序移除缺失节点、追加新节点，然后从右向左移动节点并保留 LIS。完成重排后，才在新节点的最终 DOM 坐标执行其挂载 effect 和 ref，保证回调读到最终位置。公共后缀充当固定锚点；追加到后缀之后的新节点会移动到后缀之前。

子节点和滚动快照只属于一个连续 move 批次。遇到非 move patch 时先恢复滚动位置，再清空两类快照；后续批次重新捕获当前节点，不能复用之前批次或渲染调用的快照。

自定义 patch 消费器应实现相同的快照语义。移动必须复用节点，保持焦点、选区和滚动位置；保留的组件不因移动重新挂载或卸载。优先使用内置的 `apply-dom-changes`。
