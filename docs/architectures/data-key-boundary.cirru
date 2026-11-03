{}
  :schema-version 1
  :feature 'data-key-boundary
  :doc "|保留异构数据键及原状态路径，只在 keyed children 边界转成 String CoordKey。复用 managed memo 的完整值相等、依赖保留、帧清理和 abort；不建立第二份全局键表，不依赖行号、hash 或字符串化。"
  :roots $ #{} 'respo.core/data-list-> 'respo.core/data-states 'respo.core/render-with!
  :definitions $ {}
    'respo.core/data-list-> $ {} (:mode :ensure) (:kind :fn)
      :params $ [] 'props 'child-pairs
      :schema $ quote $ Fn PropsInput (List $ Tuple Key Child) (-> respo.schema/Element) $ :generics PropsInput Key Child
      :doc "|整组数据键统一适配；需要 render-with! 或显式 memo 帧。"
    'respo.core/data-states $ {} (:mode :ensure) (:kind :fn)
      :params $ [] 'states 'k
      :schema $ quote $ Fn StateInput Key (-> respo.schema/States) (:generics StateInput Key) $ :features :js-ffi
      :doc "|保留原数据 key 的状态下降；普通 >> 继续要求 CoordKey。"
    'respo.memo/data-key $ {} (:mode :ensure) (:kind :fn)
      :params $ [] 'key
      :schema $ quote $ Fn Key (-> String) $ :generics Key
      :doc "|内部：同一非 nil 数据键在活跃帧复用字符串 token，未使用 key 由现有 memo 生命周期回收。"
    'respo.memo/next-data-key! $ {} (:mode :ensure) (:kind :fn)
      :params $ []
      :schema $ quote $ Fn $ -> String
      :doc "|内部：单调分配不复用的精确整数 token，在安全整数耗尽前明确失败。"
    'respo.core/render-with! $ {} (:mode :external) (:kind :fn)
      :schema $ quote $ Fn (JsNullish respo.dom/DomElement) (Fn $ -> respo.schema/Component) (Fn *dispatch-op $ -> Unit) (-> Unit) $ :features :js-ffi
      :doc "|DOM render 成功后才提交 memo 帧；失败保留上一次成功缓存。"
    'respo.memo/*data-key-counter $ {} (:mode :ensure) (:kind :data)
      :schema $ quote $ Ref Number
      :code $ quote $ defref *data-key-counter 0
      :doc "|单调 token 计数器；缓存清理不复用已分配身份。"
    'respo.memo/with-memo-frame $ {} (:mode :ensure) (:kind :fn)
      :params $ [] 'build
      :schema $ quote $ Fn (Fn (-> Value) $ :features :js-ffi) (-> Value) (:generics Value) $ :features :js-ffi
      :doc "|SSR 和自定义 renderer 共用的作用域；嵌套复用外帧，成功提交，异常 abort。"
    'respo.memo/memo-value-by $ {} (:mode :external) (:kind :fn)
      :schema $ quote $ Fn Dynamic Fn & Dynamic $ -> Dynamic
  :edges $ #{}
    :: :call 'respo.core/data-list-> 'respo.memo/data-key
    :: :call 'respo.memo/data-key 'respo.memo/memo-value-by

    :: :call 'respo.core/render-with! 'respo.memo/with-memo-frame
