# #194：移除错误的 Tag cursor 收窄

本阶段基于 `3ab4676`。保留 cursor 的原始列表和状态树的 Map key，不增加 wrapper，
不转换 Tag/String/Number，也不改变 `:data` 层级、路径拼接或不可变更新方式。

## 实际边界与修复

迁移前探测确认 `update-state-tree` 能写入 `[:panel, "task-1"]` 与 `[1]` 路径。
但 `get-state-at` 把每个 key 断言为 Tag，读取已存在的 String key 会抛出
`assert-type failed: expected :tag, got :string`。这是原有写入与读取边界不一致，
此次修复使合法写入路径可被读取。

`get-state-at` 的 path 改为 `List<KeyInput>`，遍历循环保留同一泛型 key 类型；
开放状态 Map 的既有边界转换改为 `Map<KeyInput, JsNullish<Dynamic>>`，不再声称
所有 Map key 都是 Tag。非空列表使用 `&list:nth xs 0`，移除第一项的 Tag 断言。

三种 `update-state-tree*` 删除把整个 cursor 强行转换成 `List<Tag>` 的步骤。
原有公开更新入口仍接受开放 cursor 列表，因为拼入 `:data` 后路径可能异构；
未把剩余动态边界伪装成只允许 Tag/String 的封闭并集。
`update-states-kv` 的 cursor 同样使用独立泛型，保留既有 K/V 泛型。

任务提出的 Tag/String 场景已覆盖。现有更新 API 实际也接受 Number key，
所以没有收紧成只接受 Tag/String 而破坏原有调用。泛型 key 描述的是实际容器
边界，不代表静态验证所有业务 state 数据。剩余状态 Map/Struct 转换仍待审计。

```cirru
let
    states $ respo.cursor/update-state-tree ({}) ([] :panel |task-1) :ready
  assert= ({} (:panel ({} (|task-1 ({} (:data :ready)))))) states
  assert= :ready $ respo.cursor/get-state-at states ([] :panel |task-1 :data)
```

## 验证

- 新增四个附带回归：混合 Tag/String 路径、已有 Number key、局部字段更新、merge。
  同时检查原始状态不变和 Map 层级/原始 key 保留。
- 新增 JS 回归，验证 String key 不变成同名 Tag，Number key 不变成同名 String，
  以及部分更新与合并结果。已接入 `yarn test-cursor-keys` 和 CI。
- 正式 Calcit 0.28.0 与本地候选各通过全部 85 个原生 tests。
- 正式版本重新生成 JS 后，通过全部 33 个 Node tests 和 DOM host 回归。
- quality baseline 通过，未调整预算。
- 原有多层缺失路径错误仍为 `&map:contains? requires a map, but received: :nil`；
  本阶段没有改写缺失状态的默认/错误行为。

同口径统计项目 definition code（含宏模板，不含依赖、测试、schema、文档）：

| 状态 | assert-type | unsafe-coerce |
| --- | ---: | ---: |
| main `b94962e` | 124 | 41 |
| ChildPair 阶段后 `3ab4676` | 105 | 41 |
| 本阶段后 | 104 | 38 |

剩余工作包括第二个真实下游回归、Component.tree 兼容读取层、完整类型债务审计，
以及将最终盘点与验收证据发布到 issue/PR。此阶段不代表整个 milestone 完成。
