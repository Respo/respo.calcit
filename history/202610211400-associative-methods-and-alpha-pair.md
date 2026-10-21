# 关联更新方法与正式工具链配对迁移（进行中）

## 范围

沿 Calcit #2187 / #2213 的已确认路线，把真实 assoc/dissoc 调用迁到已有方法，并以已发布的 0.31.0-alpha.1 CLI/runtime 配对验证。现有 typed-dispatch、状态树、混合键和开放边界不擅自改合同；本分支不表示 Respo 0.17.0 或 Calcit 稳定版已发布。

修改前的原 alpha.4 配对通过完整 strict、145 项定义测试和 340 个框架定义检查。官方 query 与 revision 守卫事务完成 40 个调用操作符和八个 swap! 函数值的迁移；函数值改为普通可推断闭包，不加手写签名、Dynamic 或 unsafe。

## 实际发现

alpha.4 的部分合成闭包丢失 DOM 类型命名空间，因此使用已有授权的正式 alpha.1 配对，不用本地原型冒充发布验证。新 Sliceable 合同要求六处显式终点用 Option :some，另外两处省略终点保留。默认入口原先只暴露五处错误，完整源码查询找到第六处，不能以可达入口代替完整库验收。

SSR 的 element-content 先校验 Map，再查单个属性键；四处 get-in 查询已返回 Result，原 Option 模式会在真实运行时报错。迁移只把模式改为 ok/err，保留原成功值、缺失属性回退、nil/false/0、错误输入校验和 AttrKey 泛型，不把 Result 再擦回 Option/nil。原两项定义测试通过，整体原生测试由 119/145 恢复到 125/145，尚未全绿。

## 剩余门槛

- append-dynamic! 的旧 Ref<List<Dynamic>> 合同与未标注空 Ref 的 List<Never> 存在真实不相容。应补齐合适的收集器类型关系与初始化上下文，保留原断言；不把 Ref 任意扩宽来通过测试。
- update-states 的公开 store 仍是既有 js-ffi Dynamic 边界，直接 .assoc 无法证明。保留 Map/Struct 等原行为，先验证受检实现；不擅自把公开参数收紧成 Map-only，也不新增 unsafe 或平行入口。
- 本地完整 strict 在设置的三分钟进程时限内未完成，已实际超时终止；不是 passed。后续先修已知源代码问题，再继续完整审计，不能只靠增加时限或跳过定义宣称完成。
- 继续原 framework、类型拒绝、DOM/SSR、文档、生产构建及真实浏览器验证；最新 HEAD review/CI 和精确 main 仍是合并/发布门槛。当前没有提交迁移 PR 或发布模块版本。
