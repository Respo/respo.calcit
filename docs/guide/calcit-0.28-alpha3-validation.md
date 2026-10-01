# Calcit 0.28 发布依赖验收

## 精确依赖

此项为 [Calcit #1457](https://github.com/calcit-lang/calcit/issues/1457) / [#1458](https://github.com/calcit-lang/calcit/issues/1458) 的实际消费者验收。使用 crates.io 安装的 Calcit CLI `0.28.0-alpha.3`、npm `@calcit/procs` 同版本，以及已发布 js-ffi Git tag `0.2.1-alpha.11`；不要求本地编译器源码包含尚未发布的类型证明修复。

js-ffi tag 对应 `799e7079cd144fb1781a86298458faa9058e83f7`，其[精确 main Check](https://github.com/calcit-lang/js-ffi/actions/runs/36805073095) 已通过。[模块发布说明](https://github.com/calcit-lang/js-ffi/releases/tag/0.2.1-alpha.11) 区分模块与 runtime 版本，并保留浏览器实际契约验证、宿主调用与异步语义。版本号表达依赖，SHA 只用于完整性核对。

## 验证路径

```bash
calcit -v
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only
yarn test
yarn test-dom-patch-types
yarn test-dom-host
yarn check-docs
calcit js
yarn vite build
calcit fix --preset core-api-0.28-v1 --format edn
```

`yarn test` 执行 Snapshot 自身的全部附带测试，不以单独的 `unit` tag 子集代替完整验收。DOM/SSR smoke 验证真实生成模块和明确的测试宿主，不把它描述为真实浏览器执行；js-ffi 的 Chromium 测试覆盖模块自己的浏览器契约，Respo 实际应用的浏览器回归仍待验证，不能用模块测试替代。

保留既有人工审阅建议，不为让预览清零而扩大 Dynamic、添加 unsafe、修改预期或以 native call 替代方法。依赖升级不改变 Snapshot 语义、事件 dispatch type slot 或 Respo 自身模块版本；未来发布 Respo 时仍需单独版本、tag 与精确 main 门禁。

## 本次结果与边界

- 全部附带测试：48 项选中、48 项执行、48 项通过；DOM patch 类型脚本以及 DOM/SSR 测试宿主契约通过；另有 3 项 nullish props 测试通过。
- 文档：60 个 Markdown 文件、111 个代码块检查通过。默认入口的严格检查、JavaScript 生成和 Vite 构建通过。
- 核心 API preset：没有可自动应用的建议，30 项跨 macro 的建议仍为 `requires-review`，预览前后 revision 一致；本次没有执行空自动改写，也没有修改 Snapshot。
- 公开定义检查：在仅用于审计的 Snapshot 副本中通过 CLI 明确设置 `browser` target，检查 `respo.core`、`respo.dom`、`respo.schema`、`respo.render.patch` 四个命名空间，120/120 项定义通过，无诊断。原项目没有声明 target，因此不能直接把默认入口的检查当作全公开 API 的验收；这也不是全部命名空间的证明。
- 既有质量 baseline 的各项增量均为零，没有放宽阈值。不过默认类型汇总仍有 188 项部分标注、3 项未标注；测试通过不代表 Dynamic 或 runtime 动态方法调用已经消除。

这些结果使用实际发布的 alpha.3，而非包含后续类型证明修复的本地 Calcit main。后续稳定版本仍需重新验证最终发布组合。
