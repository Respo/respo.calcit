# #194：列表取值保留元素类型与索引证明

基于 `0072610`，使用已发布 Calcit / runtime `0.29.0-alpha.6`，
js-ffi `0.2.1-alpha.13`。

## 类型来源与行为

`pair-first`、`pair-value` 的实现分别为 `&list:nth pair 0/1`；该内置函数
已经声明 `List<T>, Number -> T`，有效索引返回同一 T，越界仍抛错。
本轮仅将两个 helper 的 `List<Dynamic> -> Dynamic` schema 改为
`List<T> -> T`。异质 attrs/style pair 仍可使用 `List<Dynamic>`，没有假设
它们是同质数据，也没有改变 pair 的结构、索引或取值顺序。

新增四个静态与 native 回归：两个 helper 从同质函数列表取出的 callback
保留函数身份和 Number 参数合同；正常调用返回原结果，传 String 时诊断
指向 `selected` arg 1，且在执行前失败。现有 callback 回归完整保留。

`index-of-dynamic` 的 idx 由常量 0 初始化，递归仅使用 `inc idx`。
通过当前 CLI 的严格循环推断后，移除返回 `Option :some` 处重复的
`assert-type idx Number`。保留搜索输入的开放类型、深相等比较、首个命中
语义及未命中的 Option.none。

`first-pair` 的 `&list:first` 会在空列表返回 nil，原来的 List 检查仍承担
运行时失败语义，因此保留。开放的事件、attrs 和状态容器不在本轮收窄。

## 首次提交 `2053864` 的同口径数量

转换数量由 CLI `query search --exact --format json` 的 project definition
code 路径计数，包含项目测试命名空间及宏模板，排除依赖、schema 和附带元数据。

| 指标 | 修改前 | 修改后 |
| --- | --- | --- |
| assert-type | 89 | 88 |
| unsafe-coerce | 30 | 30 |
| schemaDynamic | 187 | 183 |
| typeNotFull | 188 | 186 |
| unresolved | 213 | 209 |

相对 #194 原始 `b94962e` 的 124 / 41，当前转换总数分别下降 36 / 11。
两处 helper 的 definition quality 预算同步收紧到零，不扩大任何预算。

## 本地验证与范围

- 默认严格检查、quality 门禁、106/106 原有附带测试通过。
- callback 类型回归 18/18（含新增四项）通过。
- 重新生成 JS 后，SSR、混合 cursor key 与 patch lookup 回归 15/15 通过。
- 重新生成独立 DOM 测试入口，`test-dom.mjs` 通过；随后重新生成默认 JS。
- 本地依赖使用严格 Caps 解析的已发布 tag；npm runtime 链接已有同版本安装，
  不宣称本工作树完成了新的 immutable 安装。完整安装与构建由 PR Actions 验证。

本轮修改未改变原有附带测试、examples、状态树及渲染行为。生成 JS、分析
JSON 和日志保留在忽略目录或临时目录。#194 的 issue 盘点发布与整体下游
验收，以及 #195 的生产 dispatch 合同仍需继续完成。

## 后续：keyed 移动循环的索引与 anchor

`find-children-diffs` 的普通重排与 rotation 两个移动循环显式声明
`List<Number>, Option<Number> -> Unit`。普通重排的 source-order 来自已验证
为 Number 的 Map 索引；rotation 的 sources 来自两个 range 的 concat。
每次递归传入列表剩余部分与 `Option.some source`，保留索引关系。

移除循环体内两处 source 的 Number 断言与两处 anchor 的 Option<Number>
断言。保留 Map 查找结果的 Number 检查：`&map:get` 的返回值可能缺失，
它们仍承担运行时验证。rotation 的初始空 Option 类型声明保留。
原有从右到左的移动顺序、LIS 保留集合、index-offset、anchor 映射、DomPatch
内容与递归实参均保持原样；增加的循环 hint 不参与运行时求值。

同一计数范围内 `assert-type` 88 → 84，`unsafe-coerce` 仍为 30。
相对 `b94962e` 的 124 / 41，分别下降 40 / 11。quality 指标保持上述
183 / 186 / 209，预算未改动。

默认严格检查与 `--warn-dyn-method --check-only` 通过；106/106 原有附带
测试通过。生成当前 JS 后，现有 keyed move 与 patch lookup 共 15/15
回归通过，包含六键全部 720 个排列的最少移动数与节点身份、混合增删、
嵌套坐标、None 子节点、公共前后缀中的 ref 位置及移动批次快照。

后续复用 DomElement 参数、list? 分支与 Map-to-List 返回合同，并贯通两项
style helper 的 DOM 宿主合同，又移除六处 unsafe-coerce，最新计数为 84 / 24；证明及验证范围见
[已有容器证明](20261005-proven-container-casts.md)。
