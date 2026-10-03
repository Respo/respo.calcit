# Diary 的第二组实际组件回归

独立快照来自 Diary main `e0dacdf`。通过本地 Respo、UI、Reel、alerts、
feather 的迁移依赖，使用候选 Calcit 0.29.0-alpha.1 和匹配的 JS runtime，
重新生成组件依赖图的 JS，验证实际 `comp-container`。

结果：

- initial：HTML 271 字符，包含 Loading 文案与 comp-offline 标记。
- offline：HTML 291 字符，包含断线重试文案与 comp-offline 标记。
- online / 未登录：HTML 1640 字符，包含用户名、密码、注册、登录、
  应用说明及 comp-login 标记。输入复用已有 decoder 测试的 wire map。

检查器保存在 `test/downstream/diary-render-check.mjs`，输出 HTML 到
指定目录。运行时需要已有的独立回归快照和新生成的 JS：

```bash
mode=release node \
  --loader ./test/downstream/resolve-diary-ssr-imports.mjs \
  ./test/downstream/diary-render-check.mjs \
  /private/tmp/respo-194-diary-regression \
  /private/tmp/respo-194-diary-regression
```

loader 仅补齐 Diary build-errors 及 bottom-tip 的两个 virtual-dom
导入的文件扩展名，以便 Node 加载浏览器构建可解析的模块；没有替换组件、
网络、DOM 或业务函数。依赖组合仍是本地候选组合，尚未写回发布 pin。

## 证据范围和仍待完成的工作

先前 native 附加测试只断言返回值是 String，证据太弱。改成实际内容
断言后暴露了 CSS 对 JS `process` 的依赖，native 不能执行该 SSR 路径。
本次结论来自新生成 JS 的实际输出，不能引用那个弱断言作为通过证据。

回归快照还修正了已有 `initial-state` 的错误 schema：实际值是 LoginState，
原标注却是 Map。这个修改尚未整合到 Diary 仓库。

当前只证明以上三种页面状态的组件 SSR。完整 Diary 客户端严格入口仍有
ws-edn 的 WsClient / WsClient0 类型问题；正式 0.28 还有 JS-FFI 回调类型
问题。登录后的页面、浏览器交互、完整发布构建及 typed dispatch 迁移
尚未在这里验证。milestone 不能因此视为完成。
