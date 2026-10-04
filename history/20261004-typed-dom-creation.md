# #194：DOM 创建递归保留 RenderNode

旧 `make-element` 在组件和子节点边界还原 Struct，再递归调用自己。
现在保留该入口及其参数合同，内部调用
`make-render-node-element : RenderNode -> DomElement`。
内部函数还接收原监听构造器、坐标和明确的 Bool SVG 上下文。

- Component 直接读取 `Option<RenderNode>`，追加组件名坐标。
- Element 直接读取具体字段；有值的 ChildPair 直接传递 RenderNode。
- None 子节点继续过滤；空组件树继续报 unwrap 错误。
- 保留父节点创建、子节点创建、属性、样式、事件及 append 的执行顺序。
- SVG 及 foreignObject 上下文传播逻辑保留。
- 旧入口先检查 coord，再验证节点；SVG 可选参数经空列表判断后用
  `&list:nth` 读取首项，避免将不存在的 Bool/nullish 情况传到内部。
- ref 生命周期仍由既有 effect 路径负责，本次未改动该路径。

## 验证

- 正式 Calcit 0.28.0 与候选 0.29.0-alpha.1 的默认严格检查通过。
- 两版本原有 93 项 native 附加测试全部通过。
- 正式 JS 生成及匹配 runtime：43 项 Node 测试通过。
- 新增 `test/typed-dom-creation.test.mjs` 三个用例，覆盖子节点顺序、
  空节点、组件事件坐标、nil handler、属性/样式、继承的 SVG 上下文，
  以及 coord 检查先于节点验证。在修改前 `2b32234` 的独立快照和
  修改后生成的 JS 中均通过。
- DOM smoke 六条事件、DOM、SSR/ref、坐标、属性及 paste 合同通过。
- Diary `2e70820` 使用本地迁移依赖，在候选下完整客户端严格检查、
  JS 生成通过；initial/offline/login 三页 SSR 为 271/291/1640 字符。

## 质量预算的处理

新函数复用原监听构造器合同，其中事件坐标为 List<Dynamic>，因此
代码拆分后 typeNotFull 的实际定义数从 189 变为 190；没有改变回调合同。
不能为降低该数字而删除签名、增加 Dynamic 或强制转换。

本次为新函数登记一项已有部分类型合同，并将已经完成泛型化、
check-types 明确报告 full 的 `respo.util.detect/expect-function` 的
过时 typeNotFull 预算降为零。整体上限仍为 190，其他整体上限不变，
质量检查通过。unsafeCoerce 仍为 38，schemaDynamic 仍为 188。
这个兼容预算不能代替默认严格检查和行为验证。

DOM 创建不再使用 component-tree。diff 与 effect 等递归路径仍需
继续迁移，typed dispatch 和 milestone 完整验收尚未完成。
