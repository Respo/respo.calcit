---
title: "Respo Development Guide for LLM Agents"
scope: "module"
kind: "agent"
category: "docs"
aliases:
  - "Respo-Agent"
  - "Respo Agent"
  - "agent guide"
entry_for:
  - "docs agents"
  - "llm agent"
---

# Respo Development Guide for LLM Agents

**🤖 This guide is specifically designed for LLM agents to develop, debug, and maintain Respo applications.**

📚 **Related Documentation**:

- [← Back to README](../README.md)
- [Beginner Guide](./beginner-guide.md)
- [CLI Tools Reference](../Agents.md)
- [API Reference](./api.md)

---

## Project Structure

The Respo project is a virtual DOM library written in Calcit-js, containing:

- **Main codebase**: `calcit.cirru` (2314 lines) - serialized source code
- **Compiled source**: `calcit.cirru` (13806 lines) - full AST representation
- **Namespaces**: 33 total namespaces organized by functionality
- **Version**: 0.16.21
- **Dependencies**: memof (memoization), lilac (UI utilities), calcit-test (testing)

### Core Namespace Organization

**User-facing APIs** (what you typically use):

- `respo.core` - Core APIs: defcomp, div, render-with!, memo-comp-by, clear-cache!, etc.
- `respo.comp.space` - Utility component comp-space (=<)
- `respo.comp.inspect` - Debugging component comp-inspect
- `respo.render.html` - HTML generation: make-string, make-html

**Application layer** (in example app):

- `respo.app.core` - Main application logic (\*store, dispatch!, render-app!)
- `respo.app.schema` - Data structures and schemas
- `respo.app.updater` - State management and updates
- `respo.app.comp.*` - Application components (container, task, todolist, wrap, zero)
- `respo.app.style.widget` - Application styles

**Rendering and internal** (low-level):

- `respo.render.diff` - Find differences between virtual DOM trees
- `respo.render.dom` - DOM element creation and manipulation
- `respo.render.effect` - Component lifecycle effects
- `respo.render.patch` - Apply DOM patches
- `respo.controller.client` - Client-side state management (activate-instance!, patch-instance!, send-to-component!)
- `respo.controller.resolve` - Event handling and resolution (build-deliver-event, wrap-dispatch)

**Utilities**:

- `respo.util.dom` - DOM utilities
- `respo.util.format` - Element formatting (purify-element, mute-element)
- `respo.util.list` - List utilities (map-val, map-with-idx)
- `respo.util.detect` - Type detection (component?, element?, effect?)
- `respo.css` - CSS utilities
- `respo.cursor` - Cursor management for nested states

---

## Essential Calcit CLI Commands for Development

CLI 套件完整参考见 `cr docs agents --full`。以下只列出 Respo 开发中高频使用的命令。

### 探索与定位

```bash
cr query ns                            # 列出命名空间
cr query ns respo.core                 # 阅读命名空间详情
cr query defs respo.core               # 列出定义
cr query peek 'respo.core/render!'     # 轻量签名预览
cr query def 'respo.core/render!'      # 完整定义
cr query find render!                  # 全局搜索
cr query usages 'respo.core/render!'   # 查找引用
```

### 结构化编辑

```bash
# 看结构
cr tree show 'respo.app.updater/updater' --path  --depth 1
cr tree show 'respo.app.updater/updater' --path @2 --depth 1

# 改内容（--code 自动识别 JSON vs Cirru）
cr tree replace 'respo.app.updater/updater' --path @2.1.0 --code '["fn", ["x"], "x"]'

# 定义操作
cr edit def 'respo.demo/greet' --code '["defn", "greet", ["name"], ["println", "|Hello", "name"]]'
cr edit imports respo.demo --code '[["respo.core", ":refer", ["div", "span"]]]'
cr edit rm-def 'respo.demo/old-fn'
```

### 项目配置

```bash
cr config show
cr config version "0.16.22"
cr config init-fn "respo.main/main!"
```

### 架构探索

```bash
# 调用图分析
cr analyze call-graph --root 'respo.app.core/render-app!' --ns-prefix respo.app. --max-depth 3

# 模式搜索
cr query search-expr '>> states'
cr query search-expr 'd! cursor'
cr query search-expr 'fn (e d!)'
```

---

## Development Workflow for LLM Agents

CLI 命令的详细用法见 `cr docs agents --full`。以下是 Respo 开发常用的工作流模板：

```bash
# 1. 探索
cr query ns 'respo.app.updater'
cr query usages 'respo.core/render!'

# 2. 定位 → 修改 → 验证
cr tree show 'respo.app.updater/updater' --path  --depth 1
cr tree replace 'namespace/function-name' --path @2.1.0 --code '["new", "code"]'
cr tree show 'namespace/function-name' --path @2.1

# 3. 编译与运行
cr --check-only
cr js --check-only
cr
cr --watch

# 4. 排错
cr query error
cr query find problem-symbol
cr query def 'namespace/definition'
```

---

## Common Patterns and Best Practices

### 1. Component Definition Pattern

**Cirru (Read):**

```cirru.no-run
; ns app.demo
  :require
    respo.core :refer $ defcomp div <>

let
    comp-name $ fn (param1 param2)
      respo.core/div
        {} $ :class-name "|component-name"
        respo.core/<> "|Content"
```

**JSON AST (Write - for `cr edit`):**

```json
[
  "defcomp",
  "comp-name",
  ["param1", "param2", "&", "options"],
  [
    "div",
    ["{}", [":class-name", "|component-name"], [":style", "comp-style"]],
    ["<>", "|Content"]
  ]
]
```

### 2. State Management Pattern

```cirru.no-check
; Define store atom at app.core level
defatom *store $ {}
  :states $ {}
  :data $ {}

; Create dispatcher
defn dispatch! (op)
  reset! *store (updater @*store op)

; Updater function pattern
defn updater (store op)
  tag-match op
    (:action-name value) $
      assoc store :data (process-action (:data store) value)
    (:nested-action id op2) $
      update-in store [:data :nested id] (process-nested op2)
    _ store
```

### 3. Rendering Pattern

```cirru.no-check
; Initial render
defn render-app! ()
  render-with! mount-point
    fn () $ comp-container @*store
    , dispatch!

; Watch for store changes
add-watch *store :changes $ fn ()
  render-app!

; Hot reload with cache clearing
defn reload! ()
  remove-watch *store :changes
  add-watch *store :changes $ fn ()
    render-app!
  clear-cache!
  render-app!
```

### 4. DOM Element Creation

```cirru.no-check
; Using predefined elements (defn wrappers for create-element)
div $ {} (<> "text")
button $ {} (<> "Click me")
input $ {:value "|default"}
span $ {:class-name "|style-name"} (<> "content")

; Dynamic elements with create-element
create-element :custom-tag $ {:prop-name "|value"}
  <> "|child"

; List rendering with list->
list-> $ {}
  :style $ {} (:display "|flex")
  , $ {}
    :a $ comp-item item-1
    :b $ comp-item item-2
    :c $ comp-item item-3
```

For keyed lists, call `memo-comp-by` while the tree builder passed to
`render-with!` is running. It reuses the exact `Component` value when the component
function, key, and all arguments are unchanged; this lets diffing stop immediately
at that subtree. Keys not visited in the latest frame are pruned automatically.

```cirru.no-check
list->
  {} (:class-name |task-list)
  -> tasks .to-list .reverse $ map
    fn (task)
      let
          task-id $ :id task
        [] task-id $ memo-comp-by task-id comp-task (>> states task-id) task
```

Use stable domain IDs as keys. A `nil` key deliberately bypasses memoization. Call
`clear-cache!` during hot reload to clear both managed component caches and legacy
`memof` caches.

### 5. Styling Pattern

**A. Dynamic Inline Styles (Style Maps)**

```cirru.no-run
; ns app.demo

let
    style-container $ {}
      :display "|flex"
      :padding "|10px"
      :background-color "|#f0f0f0"
    style-for-state $ fn (state)
      if (= state :active)
        assoc style-container :background-color "|#3388ff"
        , style-container
  style-for-state :active
```

```cirru.no-check
; Merge styles
let
  base $ {} (:color "|black")
  extended $ merge base $ {} (:font-size 14)
  extended
```

**B. Static CSS Styles with `defstyle` (Recommended for Performance)**

`defstyle` is a macro that generates CSS classes and injects them into `<style>` tags. Use it for static styles that don't need runtime computation.

```cirru.no-run
; ns my.namespace
  :require
    respo.css :refer $ defstyle

let
    style-button $ respo.css/defstyle style-button $ {}
      |& $ {} (:padding "|8px 16px") (:border-radius "|4px")
        :background-color $ respo.util.format/hsl 200 80 50
        :color "|white"
    style-link $ respo.css/defstyle style-link $ {}
      |& $ {} (:color "|blue") (:text-decoration :none)
      |&:hover $ {} (:text-decoration :underline)
    style-text $ respo.css/defstyle style-text $ {}
      |& $ {} (:font-size "|14px") (:line-height "|1.6")
      |&::before $ {} (:content "|\"→ \"")
    style-responsive $ respo.css/defstyle style-responsive $ {}
      |& $ {} (:font-family "|Avenir,Verdana")
      |& $ {} ('contained "|@media only screen and (max-width: 600px)")
        :background-color $ respo.util.format/hsl 0 0 90
  respo.core/div
    {} $ :class-name style-button
    respo.core/<> "|Click Me"
```

**Key Points:**

- `|&` refers to the current element (required)
- Use string prefix `|` for CSS selectors like `|&:hover`, `|&::before`
- `'contained` for media queries and container queries
- `defstyle` generates unique class names automatically
- Styles are injected into `<head>` before render
- For SSR: read from `@*style-list-in-nodejs` to extract CSS

**Testing Style to String Conversion:**

```bash
# Basic example (thread-first pipeline avoids bash escaping issues)
cr eval 'thread-first ({} (:display "|flex") (:color "|red") (:padding "|10px")) .to-list respo.render.dom/style->string println' --dep respo.calcit/
# Output: padding:10px;color:red;display:flex;
```

**Notes:**

- `--dep respo.calcit/` loads the module from `~/.config/calcit/modules/`
- `thread-first` (or `->`) chains operations: create map → convert to list → style->string → print
- Direct `ns/def` format to reference functions from loaded modules

**Inline Style Object Format:**

```cirru.no-check
# Map format (key-value pairs)
my-styles $ {}
  :display "|flex"
  :color "|red"
  :padding "|10px"
  :font-size "|14px"
```

### 6. Event Handling

**DOM Event Handlers:**

```cirru.no-check
; Simple click handler
div
  {}
    :on-click $ fn (e dispatch!)
      dispatch! [:button-clicked]

; Input with value tracking
input
  {}
    :value "|current-value"
    :on-input $ fn (e dispatch!)
      let
        value (e.target.value)
      dispatch! [:input-changed value]

; Keyboard events
div
  {}
    :on-keydown $ fn (e dispatch!)
      when (= (e.key) "|Enter")
        dispatch! [:submit-form]
```

**Component-Level Event Listeners:**

Components can define custom listeners that respond to events sent via `send-to-component!`. This is useful for global shortcuts, external triggers, or testing.

```cirru.no-check
; Define a listener function that returns a RespoListener record
defn on-keydown (cursor state)
  %{} respo.schema/RespoListener (:name :on-keydown)
    :handler $ fn (event dispatch!)
      tag-match event $
        :keydown info
        when
          and
            = |m $ :key info
            :ctrl info
          ; Handle Ctrl+M shortcut
          dispatch! $ :: :states cursor
            assoc state :message "|Shortcut triggered!"

; Use listener in component by including it in the component body
defcomp comp-with-listener (states data)
  let
      cursor $ :cursor states
      state $ either (:data states) ({})
    [] (on-keydown cursor state)  ; Add listener to component
      div $ {}
        <> $ :message state
```

**Triggering Component Listeners:**

Use `send-to-component!` (from `respo.controller.client`) to programmatically send events to the component tree:

```cirru.no-check
; Send keyboard event to all listening components
send-to-component! $ :: :keydown
  {} $ :key "|m"
    :ctrl true

; Trigger from timer or external source
js/window.setTimeout
  fn ()
    send-to-component! $ :: :custom-event
      {} $ :data |some-value
  , 1000

; Useful for:
; - Global keyboard shortcuts (Ctrl+S, Escape, etc.)
; - WebSocket message handlers
; - Timer-based triggers
; - Testing component event handlers
```

### 7. Type Slot — Typed Dispatch with Enum Validation

**Type slots** let the application choose the concrete `Op` enum accepted by Respo's `dispatch!` callbacks without passing a generic through every component API. The canonical, reusable guide is [Typed dispatch with type slots](./guide/type-slots.md); when Respo is installed, reopen it with:

```bash
cr docs search 'typed dispatch' --module respo.calcit
cr docs read type-slots.md --full --module respo.calcit
```

Bind the slot in the configuration for every entry that builds Respo components:

```bash
cr config set-type-slot :dispatch-op app.schema/Op
cr config set-type-slot --entry test :dispatch-op app.test-schema/TestOp
cr config type-slots
```

The path must be a full `namespace/definition`. Named entries are independent and do not inherit the default binding. No `bind-type` call or `with-type-slot` wrapper belongs in `main!`.

With the slot bound, Respo's `'*dispatch-op` callback schema types `d!`, and short dispatch tuples are validated against the configured enum:

```cirru.no-check
button $ {}
  :on-click $ fn (e d!)
    d! $ :: :toggle (:id task)
```

The compiler resolves this like `%:: app.schema/Op :toggle ...` and checks the variant name, payload count, and payload types. If shorthand is not checked, inspect `cr config type-slots` and the callback schema; a dynamic callback provides no enum evidence.

---

## Debugging Common Issues

### Issue: Component not re-rendering

**Diagnosis**:

```bash
# Check if render-app! is being called
cr query find render-app!
cr query usages 'respo.main/render-app!'

# Verify store watcher is set up
cr query def 'respo.app.core/dispatch!'
cr query def 'respo.main/main!'
```

**Solution Pattern**:

```cirru.no-check
; Ensure watch is on *store
add-watch *store :changes $ fn ()
  render-app!

; Ensure clear-cache! is called on reload
defn reload! ()
  remove-watch *store :changes
  clear-cache!
  add-watch *store :changes $ fn ()
    render-app!
  render-app!
```

### Issue: State not updating

**Diagnosis**:

```bash
# Check updater function logic
cr query def 'respo.app.updater/updater'

# Verify dispatch! is calling updater correctly
cr query def 'respo.app.core/dispatch!'

# Check the state path in component
cr query def 'respo.app.comp.container/comp-container'
```

**Solution Pattern**:

```cirru.no-check
; Verify tag-match pattern matches dispatched action
tag-match op
  (:action-name params) $
    ; Make sure return value is updated store
    assoc store :data new-value
  _ store  ; Default case needed!

; Ensure dispatch! is called with correct tuple
dispatch! [:action-name actual-value]
```

### Issue: Component effects not triggering

**Diagnosis**:

```bash
# Check effect definition
cr query def 'respo.core/defeffect'  # macro documentation

# Find effect in component
cr query find my-effect
cr query usages 'respo.app.comp.task/my-effect'
```

**Solution Pattern**:

```cirru.no-check
; Effects must be first in component body
defcomp comp-with-effect (props)
  []
    effect-name param1 param2  ; First!
    div $ {}                   ; Then render
      <> "|content"

; Effect must match action lifecycle
defeffect my-effect (initial-value)
  (action element at-place?)
  when (= action :mount)
    do (println "|mounted")
  when (= action :update)
    do (println "|updated")
```

### Issue: Hot reload breaking state

**Diagnosis**:

```bash
# Check reload! function
cr query def 'respo.main/reload!'

# Verify clear-cache! is called
cr query usages 'respo.core/clear-cache!'
```

**Solution Pattern**:

```cirru.no-check
; clear-cache! must be called during reload
defn reload! ()
  remove-watch *store :changes
  clear-cache!  ; Critical!
  add-watch *store :changes $ fn ()
    render-app!
  render-app!
```

---

## Modification Strategy: Safe Editing Guide

结构化编辑操作的完整参考见 `cr docs agents --full`。修改前先执行：

```bash
cr query ns namespace-name
cr query peek '<namespace/def>'
cr tree show '<namespace/def>' --path @  --depth 2
cr tree show '<namespace/def>' --path @2 --depth 2
cr tree replace '<namespace/def>' --path @2.1.0 --code 'quote |new-value'
cr tree show '<namespace/def>' --path @2.1  # 确认
cr --check-only
```

---

## Testing and Validation

详见 `cr docs agents --full`。常用验证命令：

```bash
cr --check-only           # 语法检查
cr js --check-only        # JS 编译检查
cr                        # 运行
cr query error            # 查看错误
cr query def 'respo.test.main/test-fn'
```

---

## Important Notes for LLM Agents

### ⚠️ Critical Rules

1. **NEVER directly edit `calcit.cirru`** — 使用 `cr edit` 命令操作 AST
2. **ALWAYS use relative paths** for documentation links
3. **运行 `cr --check-only` 验证语法**
4. **修改后立即验证**：`cr tree show` + `cr --check-only`
5. **优先 `cr query peek`** 看签名，需要时再用 `cr query def`

### 🎯 Optimization Tips for Token Usage

```bash
cr query peek 'respo.core/defcomp'              # 5-10 行签名
cr query def 'respo.app.updater/updater'        # 完整 AST
cr tree show 'ns/def' --path @2.1 --depth 1            # 浅层
cr tree show 'ns/def' --path @2.1 --depth 3            # 中层
cr query find my-function                       # 先搜再深入
cr query usages 'ns/def'
```

### 📖 Documentation Strategy

When stuck, use these resources in order:

1. This file (Respo-Agent.md) - you are here
2. [README.md](../README.md) - Project overview and index
3. [Beginner Guide](./beginner-guide.md) - Conceptual introduction
4. [API Reference](./api.md) - Specific API documentation
5. [Guide docs](./guide/) - Detailed topics
6. `cr docs api <keyword>` - Language documentation
7. Project code itself: `cr query ns <namespace>`

---

## Quick Reference

完整参考见 `cr docs agents --full`。Respo 常用命令：

```bash
cr query def 'respo.core/render!'
cr query usages 'respo.core/render!'
cr tree show 'ns/def' --path @2.1 --depth 1
cr edit def 'ns/def' --code '["defn", "func", [], "body"]'
cr tree replace 'ns/def' --path @2.1.0 --code 'quote |value'
cr --check-only
```

### File Paths in Documentation

When referring to files from within `docs/`:

- `./` - same directory
- `../` - parent (docs/ to root)
- `../../` - grandparent (for example from `docs/guide/` back to project root)

Example from `docs/guide/server-rendering.md`:

```markdown
- [← Back to README](../../README.md)
- [Beginner Guide](../beginner-guide.md)
- [API Reference](../api.md)
```
