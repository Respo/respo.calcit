# #194：cursor 分支与 LIS 循环的类型证明

基于本地 Respo e0c2ad7，用固定正式 Calcit 0.28.0 的 query / tree / edit 修改 Snapshot，候选为已完成完整门禁的本地 dff19bb0（0.29.0-alpha.1）。本轮没有修改编译器。

## cursor 的五处转换

update-state-tree-merge 保留原有 map? / struct? 分支、pair-key 的 Tag 检查、空 changes、state0 fallback、错误消息与 assoc-in 写回位置。changes-map 和 updated 的 Map/Struct 类型由相应分支证明；entries 由 &map:to-list 的 List<List<Dynamic>> 返回类型证明；k 已经由 pair-key 的签名和实际断言证明为 Tag。移除这里的五处 unsafe-coerce，原绑定与处理顺序保留。

新增定义附带测试验证 Struct 初值的局部更新与原值不变、非 Map changes 返回原树，以及非空 changes 合并到非法初值时仍报 unknown-state-to-merge 1。原有空 changes / 非法初值正例仍通过，不能提前把这个原本合法的空更新改成错误。

基线复现还确认 String changes key 会在 pair-key 的 Tag 断言失败；本轮保留该行为，不借移除转换扩展 key 合同。Tag/String/Number cursor 路径的存取和 key 身份保持已有回归。新增 Struct fixture 首次误用了要求 map 的字段读取形式，改为比较完整 Struct；该测试错误不作为生产缺陷或通过证据。

## LIS 的循环合同

lis-values 与 lis-reconstruct 共移除六处对循环参数的重复 assert-type。循环初始空 List / Set 的四处类型声明保留，两个生成函数各声明完整的参数与 Set<Number> 返回合同。LIS 的 lower-bound、predecessor、位置更新、回溯和求值顺序保持原样。

候选可推断移除断言后的循环参数，但正式 0.28.0 在没有循环签名时报告 nth 的 index 为 Dynamic，造成五项受影响回归失败；补齐循环签名后，两组受影响测试都通过。没有因为候选通过而忽略正式版失败，也没有放宽为 Dynamic。第一次测试命令误传两个 positional targets，被 CLI 拒绝，随后使用实际支持的重复 --affected 选择器。

## 当前验证

- 正式与候选默认严格检查通过，完整 native tests 各 100/100；两组受影响测试各 15/15。
- 两组分别重新生成 JS，并用匹配的 runtime 运行现有 keyed / cursor Node 回归，各 12/12。新 JS host 用例检查更新后的 Struct 保留生成的 nominal definition 和原值。
- 正式质量 baseline 门禁通过，没有放宽预算。
- Diary 本地依赖组合重新完成严格检查、客户端 JS 生成，再执行 initial/offline/login 三种 SSR 内容与组件身份断言，退出 0。临时 node_modules 链接已删除。

AST 计数范围与前段相同：project definition code，含项目测试命名空间及宏模板，排除依赖和附带测试等元数据。当前为 95 个 assert-type / 33 个 unsafe-coerce，本轮减少 6/5；相对于记录的 b94962e 基线 124/41，减少 29/8。所有日志与 JSON 留在临时目录 respo-194-cursor-lis-*、diary-194-cursor-lis-*，未入库。

这些结果证明本轮转换清理与单一下游的回归。Calcium 旧工具链的完整迁移、第二个真实下游验收、生产 typed dispatch、旧 list/tag 兼容和发布依赖接入仍需完成，不能据计数下降宣布整个 milestone 完成。
