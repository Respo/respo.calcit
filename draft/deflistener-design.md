# Respo Listener 设计方案（草案）

## 目标

在 Respo 中添加 listener 机制，用于处理全局事件（如键盘事件）并更新组件状态。

**核心问题**：

- Respo 的 effect 不能同时访问组件状态和调用 dispatch!
- 全局事件（如键盘监听）无法直接影响组件状态

**解决思路**：

- 提供 listener 函数作为中间层
- Listener 接收从全局事件处理器转发的事件（tuple）
- 使用 dispatch! 更新状态
- 通过闭包访问组件状态

---

## Effect 的限制

**当前 Effect 机制**：

- 只能访问 DOM 元素
- 不能调用 dispatch!
- 不能访问组件状态
- 通过参数变化检测触发

**这导致**：全局事件无法影响组件状态

---

## 基本方案

### 核心流程

1. **mount-app 监听原生事件** → 包装成 tuple
2. **调用 send-to-component!** → 分发事件到组件树
3. **send-to-component! 递归遍历** element tree，从数组中识别 Listener Record
4. **调用 listener handler** → 传入 (event dispatch!)

### deflistener 宏定义

```cirru
defmacro deflistener (listener-name params & body)
  ; listener-name: 监听器名称 (symbol)
  ; params: 固定为 (event dispatch!)
  ; body: 处理逻辑

  ; 返回 Listener Record
  quasiquote
    %{} Listener
      :type :listener
      :name ~listener-name
      :handler $ fn ~params ~@body
```

### Listener Record 结构

```cirru
; Listener record
%{} RespoListener
  :name listener-name
  :handler handler-fn
```

**关键点**：

- defcomp 返回数组，包含元素和 listener
- 使用 `%{} RespoListener` 定义 Record 类型，方便识别
- handler 是从 params 和 body 构造的函数 `(event dispatch!)`
- 写法类似 effect 在组件中的用法

---

## 使用场景示例

### 1. mount-app 监听全局事件

```cirru
defn mount-app! ()
  js/window.addEventListener "|keydown"
    fn (e)
      ; 包装成 tuple 并分发
      send-to-component! $ :: :keydown
        {} (:key $ .-key e) (:ctrl $ .-ctrlKey e)
```

### 2. 组件使用 deflistener

```cirru

deflistener keydown-listener (event dispatch!)
  tag-match event
    (:keydown key-info)
      when (= "|Enter" $ :key key-info)
        ; 可以访问闭包中的 cursor
        dispatch! :insert-newline cursor

defcomp comp-editor (states store)
  let
      cursor $ :cursor states  ; 闭包捕获状态
    [] keydown-listener

      ; 定义 listener（类似 effect 的写法）
      ; 其他元素
      textarea {} nil
```

### 3. defcomp 返回结构

```cirru
; defcomp 返回数组，包含：
; - Listener Record
; - Element
[]
  %{} RespoListener
    :name :keydown-listener
    :handler fn
  element-tree
```

---

## 待设计问题

### 1. Listener 识别和提取

- send-to-component! 如何从数组中识别 Listener Record？
- 如何遍历 element tree 中的所有组件？

### 2. 性能优化

- 是否缓存 listener 列表？
- 避免重复遍历

### 3. Event 格式规范

是否需要标准化 tuple 格式？

---

## 与 Effect 对比

| Feature        | Effect     | Listener     |
| -------------- | ---------- | ------------ |
| 访问 DOM       | ✅         | ❌           |
| 调用 dispatch! | ❌         | ✅           |
| 访问组件状态   | ❌         | ✅（闭包）   |
| 触发方式       | 生命周期   | 全局事件分发 |
| 使用场景       | DOM 副作用 | 全局事件处理 |

---

## 关键优势

1. **闭包捕获状态**：listener 可以访问组件状态，effect 做不到
2. **统一接口**：所有 listener handler 都是 `(event dispatch!)`
3. **类似 effect 写法**：在组件中用 deflistener，熟悉的语法
4. **通过 Record 识别**：从 defcomp 返回的数组中提取
5. **不是用于 button click**：普通组件事件直接用 `:on-click`

---

## 实现计划

### 第零阶段：定义 RespoListener Record

**在 respo.schema 中定义 RespoListener**

```cirru
defrecord RespoListener :name :handler
```

- `:name` - listener 名称（symbol）
- `:handler` - 处理函数，签名为 `(event dispatch!)`
- 参考 `Effect` 的定义方式：`defrecord Effect :name :coord :args :method`

### 第一阶段：核心实现

**1. 实现 deflistener 宏（respo.core）**

```cirru
defmacro deflistener (listener-name params & body)
  quasiquote
    %{} RespoListener
      :name ~listener-name
      :handler $ fn ~params ~@body
```

- 位置：`respo.core` 命名空间
- 导出：添加到 ns 的 :def 列表
- 测试：验证宏展开结果

**2. 实现 listener 提取函数（respo.controller.resolve）**

```cirru
defn extract-listeners (component-result)
  ; 从 defcomp 返回的数组中提取 Listener Records
  ; 返回 {:listeners [...] :element ...}
```

- 遍历数组，识别 Record 类型为 Listener 的项
- 分离 listeners 和 element
- 处理边界情况（只有 element、多个 listeners）

**3. 实现 send-to-component!（respo.controller.client）**

```cirru
defn send-to-component! (event-tuple)
  ; 1. 从 @*global-element 获取当前 element tree
  ; 2. 递归遍历，遇到组件就提取 listeners 并立即调用
  ; 3. 按树创建顺序，从外层到内层
```

- 访问全局 `*global-element` atom 获取当前 virtual DOM tree
- 递归遍历时直接调用 listeners，无需预先收集
- 传入 (event dispatch!) 调用 handler
- 自然按照从外层到内层的顺序

**4. 集成到 mount-app!（respo.controller.client）**

```cirru
defn mount-app! (mount-target store build-fn)
  ; 现有初始化逻辑

  ; 添加全局事件监听
  js/window.addEventListener "|keydown"
    fn (e)
      let
          event-tuple $ :: :keydown
            {} (:key $ .-key e) (:ctrl $ .-ctrlKey e)
        send-to-component! event-tuple
```

### 第二阶段：优化和完善

**5. Event 格式标准化**

定义标准事件 tuple 格式：

```cirru
; 键盘事件
:: :keydown
  {}
    :key |Enter
    :ctrl true
    :shift false
    :meta false

; 窗口事件
:: :resize
  {}
    :width 1920
    :height 1080
```

**6. 递归遍历 element tree**

```cirru
defn traverse-and-call (element event-tuple dispatch!)
  ; 递归访问所有组件节点
  ; 提取 listeners 并立即调用
  ; 继续递归处理子树
```

- 识别 component 类型的 element
- 调用组件，提取 listeners，立即执行
- 递归处理子树（从外到内的顺序）
- 支持嵌套组件

### 第三阶段：测试和文档

**8. 单元测试**

- `deflistener` 宏展开测试
- `extract-listeners` 边界情况测试
- `send-to-component!` 事件分发测试
- 闭包状态访问测试

**9. 集成测试**

- 完整的键盘事件流程测试
- 多个 listener 同时存在的测试
- listener 和 effect 共存的测试

**10. 更新文档**

- API 文档：deflistener 使用说明
- 示例项目：展示 listener 实际应用
- 迁移指南：从其他方案迁移到 listener

---

## 技术细节补充

### Listener 识别逻辑

```cirru
defn listener? (item)
  and (record? item)
    = :RespoListener $ &record:get-name item
```

### 递归遍历并调用 Listeners

```cirru
defn traverse-and-call (element event-tuple dispatch!)
  when (component? element)
    let
        result $ call-component element
        extracted $ extract-listeners result
      ; 立即调用当前组件的 listeners
      each (:listeners extracted) $ fn (listener)
        (:handler listener) event-tuple dispatch!
      ; 继续递归处理子树
      traverse-and-call (:element extracted) event-tuple dispatch!
```

### Dispatch! 访问

```cirru
; dispatch! 直接使用全局 *dispatch-fn
defn send-to-component! (event-tuple)
  let
      dispatch! @*dispatch-fn
    traverse-and-call @*global-element event-tuple dispatch!
```

---

## 实现说明

1. **性能考虑**：全局事件场景固定，用量较少，暂不做深度优化，先保证逻辑正确
2. **调用顺序**：从外层到内层遍历调用，与组件树结构自然对应
3. **状态访问**：listener 通过闭包访问组件状态，遍历时重新调用组件获取最新状态

---

## 备注

- 本设计针对全局事件处理场景
- deflistener 宏返回 `%{} RespoListener` Record 类型
- defcomp 返回数组，包含 listener 和元素
- 通过 Record 类型识别 Listener（参考 Effect 的定义）
- 写法类似 effect，语法一致性好
- 具体实现细节待进一步讨论
