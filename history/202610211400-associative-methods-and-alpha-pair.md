# 关联更新方法与正式工具链配对迁移（进行中）

## 范围

沿 Calcit #2187 / #2213 的已确认路线，把真实 assoc/dissoc 调用迁到已有方法，并以已发布的 0.31.0-alpha.1 CLI/runtime 配对验证。现有 typed-dispatch、状态树、混合键和开放边界不擅自改合同；本分支不表示 Respo 0.17.0 或 Calcit 稳定版已发布。

修改前的原 alpha.4 配对通过完整 strict、145 项定义测试和 340 个框架定义检查。官方 query 与 revision 守卫事务迁移 39 个调用操作符和八个 swap! 函数值；后者改为普通可推断闭包，不加手写签名、Dynamic 或 unsafe。另一个开放 update-states 调用暂留旧入口，不把不成立的直接方法替换计为已完成。

## 实际发现

alpha.4 的部分合成闭包丢失 DOM 类型命名空间，因此使用已有授权的正式 alpha.1 配对，不用本地原型冒充发布验证。新 Sliceable 合同要求六处显式终点用 Option :some，另外两处省略终点保留。默认入口原先只暴露五处错误，完整源码查询找到第六处，不能以可达入口代替完整库验收。

SSR 的 element-content 先校验 Map，再查单个属性键；四处 get-in 查询已返回 Result，原 Option 模式会在真实运行时报错。迁移只把模式改为 ok/err，保留原成功值、缺失属性回退、nil/false/0、错误输入校验和 AttrKey 泛型，不把 Result 再擦回 Option/nil。

append-dynamic! 保留现有名称，将实际元素类型关联为 Ref<List<T>>、T → Unit，并使用 .append。原有二十项测试与两个 DOM 测试 helper 为 Ref 声明真实 patch、任务回调、宿主目标或 dispatch 类型；混合 effect 参数日志只保留原来的开放 payload 边界。未将 Ref 任意扩宽，不改原断言。两个新增 :tests 验证 Number 与名义 FsPath 元素；既有 callback 拒绝测试扩展 String / 未证明 Dynamic 写入 Number Ref 的反例。

DomPatch 原来已要求一个 DomElement 参数和 Unit 返回，但 effect 闭包经过开放列表传参后不能独立恢复该输入。仅在这十四个现有边界补充函数体注解。两个 ref 包装器显式以 &unit 收尾，与 diff 的既有包装器一致；旧 ref 仍可返回任意值，调用顺序与异常传播不变。既有宿主测试增加 mount/unmount 对应断言，不放宽 Element.ref 的旧合同。

正式 0.31.0-alpha.1 CLI/runtime 配对回放 147/147 native 与 147/147 JS，零排除；340 个框架定义、34 项 callback 类型测试通过。原 DOM host、SSR、事件、memo、keyed move、混合 cursor、类型拒绝、文档与构建门禁已回放；DOM helper 的五个开放 List Ref 在首次 codegen 拒绝后按真实生产者补齐。真实独立浏览器通过新增、修改文本、切换状态和刷新恢复，保留同一 ID、文本及完成状态，控制台无错误。首次共享回放误用了 alpha.5 runtime，已更正运行器自身依赖并重跑，不用那次结果作为配对证据。

## 剩余门槛

- update-states 的公开 store 仍是既有 js-ffi Dynamic 边界，直接 .assoc 无法证明。保留旧函数调用与 Map/Struct 等原行为；不能把 Map-only、update 对缺失 Struct 字段的不同语义或无证明动态方法伪装成等价迁移。
- 本地完整 strict 曾实际超过三分钟和四分钟的进程时限。采样定位到 strict_workflow_type_findings → collect_schema_candidates → merge_callsite_argument_evidence → trace_definition_source_usages 的重复预处理；普通框架检查和执行测试通过不能代替它。保留原 CI 门禁，单独追踪编译器性能问题，不以加大预算或排除定义宣称完成。
- 最新 HEAD review/CI 和精确 main 仍是合并/发布门槛；本迁移不表示旧入口已可删除，也未发布模块版本。
