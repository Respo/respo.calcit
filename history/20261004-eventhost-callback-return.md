# EventHost 回调返回类型的独立复现

Diary 接入类型迁移依赖后，正式 Calcit 0.28.0 的剩余警告来自
JS-FFI `event-listener-host` 的返回类型比较。

复现保存为 `test/fixtures/eventhost-callback-return.cirru`，4444 字节，
通过正式 0.28 CLI 从 JS-FFI 快照裁剪得到。只保留两个命名空间、
四个定义，不需要外部模块；使用默认 entry 执行。
`EventHost`、`event-listener-host` 和 `expect-function` 保留实际定义，
新增入口传入一个返回 Unit 的回调。

```bash
calcit test/fixtures/eventhost-callback-return.cirru --check-only
```

验证结果：

- 正式 0.28.0 返回非零，报告一个 `W_FN_RETURN_TYPE_MISMATCH`：
  声明为 `fn('js-ffi.browser/EventHost) -> Unit`，实现被解析为
  `fn(trait EventHost) -> Unit`。
- 候选 0.29.0-alpha.1（编译器分支 `18899359`）返回零，严格检查通过。

声明和实现使用同一个具名 EventHost；结果表明两个编译器版本对
类型引用与解析后 trait 的函数类型比较有差异。复现没有证明所有
回调类型场景均已修复，候选通过也不能代替正式 0.28 的通过证据。
没有为消除警告而将宿主参数改成 Dynamic 或增加强制转换。

同批 Diary 修改只补充状态观察回调声明、修正 LoginState schema。
固定 0.27 原发布依赖下 22 项测试、客户端与服务端严格检查通过；
候选依赖下完整客户端生成及三种实际页面 SSR 通过。
该 fixture 是小型可运行源码，未提交中间操作 JSON 或生成的 JS/HTML。
