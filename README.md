## Respo: A virtual DOM library in Calcit-js

### JS FFI 文件模块试验

Respo 的开发版本以 `deps.cirru` 固定 Calcit 与 js-ffi 依赖，通过普通 `:modules` 和 `:require` 调用 `js-ffi.browser/document-available?`。该实现由 js-ffi 模块携带单表达式 JS 文件，Respo 不引用文件路径，也不安装片段专用 npm 包。运行 `caps --strict --ci`、`yarn install --immutable` 和 `yarn test-dom-host`，可验证干净安装、生成模块中的内嵌实现及有无 `document` 时的行为。文件修改后需显式重新构建。

资源 ID helper 已省去可由编译器证明的重复 schema，普通 `.add` 和既有测试保持不变；见[推断验收记录](docs/guide/resource-helper-validation.md)。

升级时同时固定 `deps.cirru :calcit-version` 和 `package.json` 的 `@calcit/procs` 为同一精确版本，并执行 `yarn install --immutable`。只更新 CLI 而沿用旧 JS runtime，可能在运行时缺失新的 trait 实现；编译成功不能代替 DOM/SSR 测试。核心 API 迁移先用当前 CLI 的 `--check-only` 诊断和 `analyze weak-types` 只读视图定位，再根据真实类型契约和调用点，通过 `query`、`tree`、`edit` 按需改写。不要长期依赖旧版本的固定迁移 preset；开放输入和 macro 能力仍需审阅，并运行原有测试。

使用者影响：本分支计划作为 Respo `0.17.0` 发布，配对 Calcit CLI / `@calcit/procs` `0.31.0-alpha.1` 和正式 JS-FFI `0.2.5`。这是破坏性改动：`d!` 只接受一个参数，类型是当前 entry 用 `:dispatch-op` 类型槽绑定的应用 `Op`；`wrap-dispatch` 已删除，旧的 `d! cursor state`、`d! :tag payload` 写法改为 `d! $ :: :states cursor state`、`d! $ :: :tag payload`。`render!`、`render-with!`、`realize-ssr!` 直接接收应用的 `dispatch!`，demo 不再需要运行时解码。迁移步骤见[类型槽指南](docs/guide/type-slots.md)。升级应用时需一起选择请求同一 Respo / JS-FFI 版本的 Router、UI 等正式模块；不能只改根依赖并放宽 Caps。仍使用旧派发 API 的应用应留在 `maintenance/0.16` 的正式维护版本。旧正式 tag 保持原依赖，不改写历史版本。候选需通过原门禁并正式发版后才可消费。

当前源码逐步使用已有 `.assoc` / `.dissoc` 方法，显式 `slice` 终点传 `Option :some`，省略终点仍表示到末尾。SSR 内容查询直接匹配 `get-in` 的 `Result :ok / :err`，保留缺失属性、混合键及内容优先级。兼容 helper `append-dynamic!` 保留名字，但以同一个泛型关联 `Ref<List<T>>` 与写入值；初始化空 Ref 时声明实际元素类型，不把可变引用扩宽为任意元素类型。

js-ffi 使用正式 Git tag，不使用提交 hash。Respo `0.16.115` 增加 `respo.ffi.browser/query-selector`，返回可直接交给 Respo renderer 的 `Option<respo.dom/DomElement>`；应用无需自行强转跨库 DOM 类型。通过普通 Calcit 引用复用 JS FFI，不需要片段专用 npm 包。版本以 `deps.cirru :version` 为准，旧 Snapshot 的镜像字段不作为发布依据。此前 alpha 工具链的历史验收见[发布依赖验收](docs/guide/calcit-0.28-alpha3-validation.md)，不代表当前组合的完整验收。

演示页前端构建使用 `https://cos-sh.tiye.me/Respo/respo.calcit/` 作为资源 base。仅 main push 在测试、构建通过后上传 `dist/`，使用 `cos-upload-action@v1.2.0` 的 `public-base-url` 内置逐文件校验，不维护额外验证脚本。PR 只构建，不读取部署 secrets。原 rsync 页面路径 `/web-assets/repo/${github.repository}` 保持不变；生产运行串行且上传前检查 main SHA，跳过已过期提交，这并非原子发布。

当前组合保留原 definition `:tests` 及其断言，并增加缺失值、状态分支、名义类型和属性 key 合同回归；native 和生成 JS 均不排除测试。框架检查继续覆盖 23 个命名空间的 340 个定义。测试中的空列表 Ref 显式声明元素类型，避免初始化为 `List<Never>` 后再写入其他值；dispatch 测试使用 entry 绑定的 Op 类型，`yarn test-typed-dispatch` 覆盖正例与反例。SSR、DOM patch/lifecycle、正反类型检查、Markdown 示例和生产构建继续保留。EDN 解析所得 Task 名称与字段布局不是名义类型证明：恢复时复用受检 decoder 校验字段，恢复当前 Task 身份；已验证的当前 Task 保留对象身份。`yarn test-persisted-tasks` 验证生成 JS 的序列化往返和错误字段拒绝；真实浏览器继续验证新增、编辑、切换状态及刷新后，同一份任务的 ID、内容和完成状态恢复且控制台无错误。`with-attrs` 接收已序列化的 SVG 扩展属性；DOM anchor 末尾移动使用 null，保留宿主边界的运行时验证。

缺失值查询使用公共 `get`、`first`、`last`、`struct-definition` 和 `enum-definition` 的 Option 合同，不依赖底层原语曾经返回 nil 的行为。已证明非空的列表或已存在的内部索引用 `.unwrap`；可能缺失的属性与类型查询使用 `match`。宿主 ref、旧 states 和开放事件数据仍在既有边界保留 nil，并由原来的校验、默认值或错误分支处理；这不扩大参数类型，也不把 nil payload 与缺失混为一谈。源码使用 canonical core 名称。已弃用的 quality 计数基线、`check-quality` 命令及对应 CI 步骤已移除；类型正确性由严格检查、definition 测试和 DOM/SSR 等实际语义验收保证，不再以 nil/Dynamic 数量判断回退。新的 Calcit 版本仍须与同版本 `@calcit/procs` 配对验收后才升级 pin。

SSR 的属性 Map 保留自身 key 类型：内容读取通过现有路径 API 查询 `:value`、`:innerHTML`、`:inner-text`，不会把额外的 String 或 Number 键转换成 Tag。属性序列化仍沿用原有排序、事件属性过滤和转义规则；nil、false、0 与空字符串的内容优先级不变。非 Map 输入在读取内容前明确报错。演示程序的 microtask callback 显式返回 Unit，忽略宿主 timer handle，但不会吞掉调度错误。

Memo 帧生命周期、依赖记录、DOM 缓存失效和 demo 派发的 Unit 合同显式返回 `&unit`。`reset!` / `swap!` 本身返回写入值；`!` 表示有副作用，不代表返回 Unit。附带测试覆盖帧状态和空缓存的两条路径，原有 JS memo 与 DOM patch 测试继续检查缓存保留、失效顺序和宿主效果，同时断言这些接口的 Unit 返回。

早期候选工具链的七项失败分为五项回调边界和两项列表构造，恢复过程见[回调边界历史记录](history/20261004-callback-type-boundaries.md)。这是历史验证，不代表当前组合；当前套件保留原有列表构造的 nil 过滤与替换/移除用例，当前均已通过。

完整库的 Node target 和应用级 type-slot 贯通仍需分别验收；默认入口、框架定义检查和 demo 正例不能证明所有应用的 typed dispatch 已完成。

内部事件刷新沿用 `DomPatch` 的渲染坐标合同 `List<Dynamic>`：路径会组合组件名 Tag 与子节点 key（例如 String、Number），不会把它们统一转换成字符串；实际 DOM 子节点坐标仍为 `List<Number>`。这条内部路径不改变应用 StateKey 泛型或状态树结构，开放 key 边界的进一步收窄仍需另行验收。

`yarn check-framework-types` 使用当前固定工具链检查默认入口的动态方法，并逐一
检查 23 个非空框架命名空间中的全部定义；CI 执行相同命令，避免遗漏 demo 没有
调用的 helper。空的 `respo.schema.listener` 不计作覆盖；检查不执行 JavaScript
宿主，也不能替代 DOM host 和真实下游回归。事件 target 的现行合同见
[DOM events](docs/guide/dom-events.md#原生事件的类型边界)。

`yarn test-nominal-accessors` 检查 Component、Effect、Element 和 RespoListener
访问器和转换 helper 的名义类型参数、37 个错误或未验证输入的编译期拒绝，以及原有列表、事件表、回调
和 tree payload 的身份。开放输入应先在调用方完成分类或受检转换。
`component-tree` 保留 `Option<Struct>` 兼容返回值；该检查不证明 effect 参数、
Listener 回调或整个 strict workflow 已全部封闭。

> Inspired by React and Reagent. Previously [Respo/respo.cljs](https://github.com/Respo/respo.cljs).

- Home http://respo-mvc.org
- [Bundled example](http://repo.respo-mvc.org/respo.calcit/)
- [Guide](https://github.com/Respo/guidebook)

### Project Info

- **Version**: 见 `deps.cirru` 的 `:version`
- **Init Function**: `respo.main/main!`
- **Reload Function**: `respo.main/reload!`
- **Core Namespaces**: 33 namespaces providing virtual DOM, rendering, components, and utilities
- **Testing**: language built-in definition tests, plus a small JS-target smoke suite

### Usage

In `deps.cirru` and run `caps` (replace the version with the compatible published release):

```cirru
{}
  :dependencies $ {}
    |Respo/respo.calcit |0.16.113
```

![Latest](https://img.shields.io/github/v/release/Respo/respo.calcit)

DOM syntax

```cirru.no-check
; ns app.demo $ :require
  respo.core :refer $ div

let
    comp-demo $ fn (dispatch!)
      respo.core/div
        {}
          :class-name "|demo-container"
          :style $ {} (:color :red)
          :on-click $ fn (event dispatch!)
            dispatch! $ :: :clicked
        respo.core/div $ {}
```

### SVG 渲染

`create-element` 创建的 `:svg` 会为自身及其子节点使用 SVG 命名空间；进入 `:foreignObject` 后，子节点恢复 HTML 命名空间。SVG 的普通属性在首次渲染及后续补丁中都以 DOM attribute 写入、更新和移除，`strokeWidth` 等常见驼峰名称会转为 `stroke-width`。事件、`data-*` 和样式仍沿用 Respo 的现有处理路径。

共同属性继续传给 `create-element`，不把 SVG Map 强转为闭合的 DomProps。`with-attrs` 接收 `Element` 和 `Map<Tag, String>`，将已序列化的扩展属性合并到 Element；同名属性覆盖，其他属性、子节点、事件、ref 和样式不变。数字须显式转成字符串；它不是事件或样式 props 入口。

```cirru.no-run
respo.core/with-attrs
  respo.core/create-element :rect $ {} $ :class-name |shape
  {} (:fill |red)
    :strokeWidth $ to-string 2
```

本仓库的 `yarn test-dom-host` 覆盖 SVG 初次创建及属性增删改；消费者可用 Cross Stitch 页面验证图案显示及点击后的增量更新。

More examples adapted from `calcit.cirru`:

```cirru.no-run
; ns app.demo $ :require
  respo.core :refer $ defcomp a <>

let
    comp-link $ fn (href text)
      respo.core/a
        {} $ :href href
        respo.core/<> text
```

```cirru.no-run
; ns app.demo $ :require
  respo.core :refer $ list-> div

let
    comp-list $ fn ()
      respo.core/list->
        {}
        [] $ [] :a $ respo.core/div ({})
```

Text Node:

```cirru.no-run
; ns app.demo $ :require
  respo.core :refer $ <>

let
    comp-text $ fn (content)
      respo.core/<> content

  ; with styles
  respo.core/<> "|demo" $ {}
    :color :red
    :font-size 14
```

Component definition:

```cirru.no-run
; ns app.demo $ :require
  respo.core :refer $ div <>

let
    comp-container $ fn (content)
      respo.core/div
        {}
          :class-name |demo-container
          :style $ {} (:color :red)
        respo.core/<> content
```

App initialization:

```cirru.no-run
; ns app.demo $ :require
  respo.core :refer $ render-with!

; initialize store and update store
let
    *store $ ref $ {} (:point 0) (:states {})
    updater $ fn (store op)
      hint-fn $ {}
        :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic
        :return $ :: 'Map 'Tag 'Dynamic
      match op
        (:TODO a b) store
        _ store
    dispatch! $ fn (op)
      reset! *store $ updater @*store op
    mount-point nil
    comp-container $ fn (state) state
  dispatch! $ :: :TODO 1 2

  ; 在受管理的 memo 帧内构建组件树，再渲染到 DOM
  defn render-app! ()
    respo.core/render-with! mount-point
      fn () $ comp-container @*store
      , dispatch!
```

与 demo 一样，将同一微任务前的 store 更新合并为一次渲染：

```cirru.no-check
let
    schedule! $ respo.core/make-render-scheduler
      fn () $ render-app!
      %:: Option :none
  add-watch! *store :changes $ fn (_current _previous) (schedule!)
```

`render!` 和 `render-with!` 仍同步执行。如果 dispatch 后需要立即读取更新后的 DOM，
让 watch 直接调用 `render-app!`。使用调度器的 DOM 测试应等待微任务或清空注入的队列。
详见[调度时机与测试示例](docs/api.md#make-render-scheduler)及
[热更新时替换 watch](docs/beginner-guide.md#rerender-on-updates)。

在 `render-with!` 构建的组件树中，为带业务 key 的列表组件启用缓存：

```cirru.no-check
; ns app.demo $ :require
  respo.core :refer $ list-> memo-comp-by >>

list->
  {} (:class-name |task-list)
  -> tasks .to-list .reverse $ map
    fn (task)
      let
          task-id $ :id task
        [] task-id $ memo-comp-by task-id comp-task (>> states task-id) task
```

`memo-comp-by` 按组件函数、key 和完整参数列表匹配缓存。每次 `render-with!` 调用都会记录
活跃的 key，并清除已从最新组件树中消失的条目。外层 memo 命中时，会保留其嵌套依赖的缓存。
在受管理的帧之外调用时，直接计算结果，不读取或增加缓存；传入 `nil` key 也会绕过缓存。
Respo 内部管理这些条目，应用无需再依赖 `memof` 缓存组件。
如果组件树构建抛出异常，当前帧会被丢弃，保留上次成功提交的缓存，并重新抛出原错误。
配置、生命周期和迁移方式见[列表渲染指南](docs/guide/render-list.md#memoizing-components)。

Reset virtual DOM caching during hot code swapping, and rerender:

```cirru.no-run
; ns app.demo $ :require
  respo.core :refer $ clear-cache!

let
    *store $ ref $ {} (:point 0)
    render-app! $ fn () &unit
  add-watch! *store :changes $ fn (_previous _next)
    render-app!
  remove-watch *store :changes
  add-watch! *store :changes $ fn (_previous _next)
    render-app!
  respo.core/clear-cache!
  render-app!
```

Adding effects to component:

```cirru.no-run
; ns app.demo $ :require
  respo.core :refer $ div

let
    effect-a $ fn (text)
      fn (action parent-element at-place?)
        println action
        ; action could be :mount :update :amount
        when (&= :mount action) nil
    comp-a $ fn (text)
      []
        effect-a text
        respo.core/div ({})
```

Define a hooks plugin based on Calcit Record, better use a pure function:

```cirru.no-run
; ns app.demo $ :require
  respo.core :refer $ div <>

let
    plugin-x $ fn (states options)
      %::
        %{} :PluginX
          :render $ fn (self) (nth self 1)
          :show $ fn (self d! text) nil
        , :plugin-name
        respo.core/div ({}) (respo.core/<> "|Demo")
```

### License

MIT

---

## Documentation Index (For LLM Tool Integration)

This index helps LLM tools automatically fetch and reference documentation using relative paths and the `calcit` CLI.

### Getting Started

- [Beginner Guide](./docs/beginner-guide.md) - Introduction to Respo concepts and component definition
- **[Respo-Agent Guide](./docs/Respo-Agent.md)** - 🤖 Detailed guide for LLM agents developing Respo apps (debugging, patterns, CLI tools)
- [API Documentation Overview](./docs/api.md) - Quick reference for all APIs

### Guides and Concepts (see `docs/guide/`)

| Topic             | Path                                                               | Overview                                                   |
| ----------------- | ------------------------------------------------------------------ | ---------------------------------------------------------- |
| Why Respo         | [docs/guide/why-respo.md](docs/guide/why-respo.md)                 | Motivation and design philosophy                           |
| Virtual DOM       | [docs/guide/virtual-dom.md](docs/guide/virtual-dom.md)             | Understanding virtual DOM concepts                         |
| Base Components   | [docs/guide/base-components.md](docs/guide/base-components.md)     | Core component patterns                                    |
| DOM Elements      | [docs/guide/dom-elements.md](docs/guide/dom-elements.md)           | HTML element creation and usage                            |
| Component States  | [docs/guide/component-states.md](docs/guide/component-states.md)   | Managing component state                                   |
| DOM Properties    | [docs/guide/dom-properties.md](docs/guide/dom-properties.md)       | DOM property binding                                       |
| DOM Events        | [docs/guide/dom-events.md](docs/guide/dom-events.md)               | Event handling in Respo                                    |
| Typed Dispatch    | [docs/guide/type-slots.md](docs/guide/type-slots.md)               | Entry-level `Op` binding and checks                        |
| Styles            | [docs/guide/styles.md](docs/guide/styles.md)                       | CSS and styling approach                                   |
| Render Lists      | [docs/guide/render-list.md](docs/guide/render-list.md)             | Efficient list rendering                                   |
| Renderer Upgrades | [docs/guide/upgrade.md](docs/guide/upgrade.md)                     | Internal patch protocol changes                            |
| Common Primitives | [docs/guide/common-primitives.md](docs/guide/common-primitives.md) | Conditional UI, lifecycle, resources, errors, and batching |
| Hot Swapping      | [docs/guide/hot-swapping.md](docs/guide/hot-swapping.md)           | Hot code reloading setup                                   |
| Server Rendering  | [docs/guide/server-rendering.md](docs/guide/server-rendering.md)   | SSR capabilities                                           |
| Pros and Cons     | [docs/guide/pros-and-cons.md](docs/guide/pros-and-cons.md)         | Framework comparison                                       |

### API Reference

Core API descriptions are now stored in source doc strings inside `calcit.cirru`.
Use `docs/api.md` for the overview, or inspect a definition directly with Calcit CLI:

```bash
calcit query def respo.core/defcomp
calcit query def respo.core/render!
calcit query def respo.render.html/make-string
```

| API                     | Namespace                                    | Purpose                                |
| ----------------------- | -------------------------------------------- | -------------------------------------- |
| `defcomp`               | `respo.core/defcomp`                         | Define components with macro           |
| `defeffect`             | `respo.core/defeffect`                       | Define lifecycle effects               |
| `dispatch-fn`           | `respo.core/dispatch-fn`                     | Inline callback with a typed `d!`      |
| `div`                   | `respo.core/div`                             | Create div elements                    |
| `create-element`        | `respo.core/create-element`                  | Dynamically create elements            |
| `render!`               | `respo.core/render!`                         | Sync virtual DOM to real DOM           |
| `render-with!`          | `respo.core/render-with!`                    | Render with managed memo frame         |
| `memo-comp-by`          | `respo.core/memo-comp-by`                    | Memoize keyed components               |
| `memo-value-by`         | `respo.core/memo-value-by`                   | Memoize immutable derived data         |
| `show`                  | `respo.core/show`                            | Render a child conditionally           |
| `for-keyed`             | `respo.core/for-keyed`                       | Build ordered keyed child pairs        |
| `effect-on-mount`       | `respo.core/effect-on-mount`                 | Run a mount-only lifecycle callback    |
| `effect-on-update`      | `respo.core/effect-on-update`                | Run when immutable dependencies change |
| `effect-on-unmount`     | `respo.core/effect-on-unmount`               | Run an unmount-only lifecycle callback |
| `effect-watch`          | `respo.core/effect-watch`                    | Dependency-aware lifecycle effect      |
| `error-boundary`        | `respo.core/error-boundary`                  | Render a synchronous fallback          |
| `make-render-scheduler` | `respo.core/make-render-scheduler`           | Coalesce render requests               |
| `resource-reducer`      | `respo.resource/resource-reducer`            | Reduce immutable async state           |
| `resource-idle`         | `respo.resource/resource-idle`               | Create initial resource state          |
| `load-resource!`        | `respo.resource/load-resource!`              | Emit async resource actions            |
| `<>`                    | `respo.core/<>`                              | Create text nodes                      |
| `comp-space`            | `respo.comp.space/comp-space`                | Spacing component                      |
| `comp-inspect`          | `respo.comp.inspect/comp-inspect`            | Inspection/debugging component         |
| `clear-cache!`          | `respo.core/clear-cache!`                    | Clear memoization cache                |
| `patch-instance!`       | `respo.controller.client/patch-instance!`    | Patch DOM instances                    |
| `activate-instance!`    | `respo.controller.client/activate-instance!` | Activate DOM instances                 |
| `>>`                    | `respo.core/>>`                              | Create state cursors                   |
| `purify-element`        | `respo.util.format/purify-element`           | Clean element markup                   |
| `mute-element`          | `respo.util.format/mute-element`             | Silence element output                 |
| `make-string`           | `respo.render.html/make-string`              | Serialize to string                    |
| `find-element-diffs`    | `respo.render.diff/find-element-diffs`       | Find DOM differences                   |
| `apply-dom-changes`     | `respo.render.patch/apply-dom-changes`       | Apply DOM patches                      |
| `realize-ssr!`          | `respo.core/realize-ssr!`                    | Server-side rendering                  |
| `list->`                | `respo.core/list->`                          | Create list containers                 |

Legacy page names such as `make-html` and `render-app` were removed during the migration to source doc strings.

### Agent Workflows

Agent-oriented CLI workflows (query/check-md automation) are maintained in [Agents.md](./Agents.md).
