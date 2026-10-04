# #194 / #218：effect 的 Unit 合同与 Diary 回归进展

## defeffect 的返回合同

Diary 回归在本地候选编译器中暴露 `effect-keydown` 的生成方法可能返回可空 Unit，
与 `Effect.method: (List<Dynamic>, List<Dynamic>) -> Unit` 不一致。
原 `defeffect` 模板直接返回 body 的最后一个值。

生成的方法现在声明两个 List 参数和 Unit 返回类型，并在执行原 body 后返回
`&unit`。参数解构、body 的执行次数和副作用顺序保持不变。框架的 effect 调用方
本来就忽略 body 返回值；直接消费这个未声明结果的代码需要按 Unit 合同迁移。

新增附带回归用字符串作为 body 的最后结果，并检查：payload、action、target、
at-place? 原样传入，body 的计数副作用发生一次，而方法返回 Unit。
在独立快照中恢复旧宏后，同一回归以 `not equal in assertion!` 失败；新宏通过。

## 当前验证

- 正式 0.28.0 与本地候选各通过全部 86 个原生 tests。
- 正式版本重新生成 JS 后，全部 33 个 Node tests 与 DOM host 回归通过。
- quality baseline 通过，无违规，未调整预算。
- Diary 组件测试中的 Effect.method 返回类型诊断已经消失；这只证明该诊断修复，
  不代表整个 Diary 回归通过。

## Diary 的实际状态

从最新 main `e0dacdf` 建立独立副本，原始 Diary 工作区未修改。

1. 缓存 alerts 的 plugin 定义错误已确认在迁移前后均存在。远端 alerts PR #84
   已合并（`ad93137`），加载该源码后原诊断消失；没有重复修改该库。
2. `app.comp.login/initial-state` 的值是 LoginState，schema 却声明 Map<Tag,String>。
   在独立副本通过固定 0.27 CLI 改为 LoginState 后，检查继续向下推进。
3. 完整 client entry 仍被旧 ws-edn 的 WsClient/WsClient0 断言不一致阻断。
4. 为覆盖实际组件路径，向独立副本增加真实 `comp-container` SSR 测试。
   本地候选还报告 feather 颜色使用 Dynamic 调用 ToString，以及 alerts 的
   placeholder 为 Dynamic，不能满足 `JsNullish<String>`。没有放宽检查开关。

目前仍未满足第二个完整下游回归，不能将只有组件构造、类型修复或错误减少
视为完整下游通过。下一步继续处理依赖与应用边界，并对迁移前后相同依赖组合
执行可比较的实际回归。
