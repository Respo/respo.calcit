{}
  :schema-version 1
  :feature 'legacy-dispatch-0301
  :doc |补齐既有开放派发边界的回调合同；旧_Tag/cursor-list_仍由_wrap-dispatch_处理，业务入口解码为_Op，不提前采用_195_的完整_slot_路线。
  :roots $ #{} 'respo.app.core/render-app! 'respo.app.core/handle-ssr! 'respo.controller.client/wrap-dispatch
  :definitions $ {}
    'respo.app.schema/decode-op $ {}
      :mode :ensure
      :kind :fn
      :params $ [] 'raw
      :doc |在_demo_入口校验名义操作，或逐变体转换旧匿名操作；不修改框架派发协议。
      :schema $ :: 'Fn $ {} (:args ([] 'Dynamic)) (:return 'respo.app.schema/Op)
    'respo.app.core/dispatch! $ {}
      :mode :ensure
      :kind :fn
      :params $ [] 'op
      :doc |业务更新器继续只接收已证明的_Op。
      :schema $ :: 'Fn $ {} (:args ([] 'respo.app.schema/Op)) (:return 'Unit) (:features (#{} :js-ffi))
    'respo.app.core/render-app! $ {}
      :mode :ensure
      :kind :fn
      :params $ [] 'mount-target
      :doc |通过入口回调解码开放操作后再调用业务_dispatch!。
      :schema $ :: 'Fn $ {} (:args ([] (:: 'JsNullish 'respo.dom/DomElement))) (:return 'Unit)
    'respo.app.core/handle-ssr! $ {}
      :mode :ensure
      :kind :fn
      :params $ [] 'mount-target
      :doc |SSR_复用与普通挂载相同的操作校验。
      :schema $ :: 'Fn $ {} (:args ([] 'respo.dom/DomElement)) (:return 'Unit)
    'respo.core/render-with! $ {}
      :mode :ensure
      :kind :fn
      :params $ [] 'target 'render-tree 'dispatch!
      :doc |回调明确接受既有_Dynamic_边界并返回_Unit，与_render!_一致。
      :schema $ :: 'Fn $ {} (:return 'Unit) (:features (#{} :js-ffi))
        :args $ [] (:: 'JsNullish 'respo.dom/DomElement)
          :: 'Fn $ {} (:args ([])) (:return 'respo.schema/Component)
          :: 'Fn $ {} (:args ([] 'Dynamic)) (:return 'Unit)
    'respo.controller.client/wrap-dispatch $ {}
      :mode :ensure
      :kind :fn
      :params $ [] '*dispatch-fn
      :doc |保留运行时与旧调用测试；本轮不改写。
      :schema $ :: 'Fn $ {}
        :args $ [] $ :: 'Ref $ :: 'Fn $ {} (:args ([] 'Dynamic)) (:return 'Unit)
        :return $ :: 'Fn $ {} (:args ([] 'Dynamic)) (:rest 'Dynamic) (:return 'Unit)
  :edges $ #{}
    :: :call 'respo.app.core/render-app! 'respo.core/render-with!
    :: :call 'respo.app.core/render-app! 'respo.app.schema/decode-op
    :: :call 'respo.app.core/handle-ssr! 'respo.app.schema/decode-op
    :: :call 'respo.app.core/render-app! 'respo.app.core/dispatch!
    :: :call 'respo.app.core/handle-ssr! 'respo.app.core/dispatch!
