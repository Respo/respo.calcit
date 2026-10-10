{}
  :schema-version 1
  :feature 'demo-watch-lifecycle
  :doc |demo_持有唯一的_rerender_watcher；替换和停止先使旧排队回调失效，再释放自己的注册；首次停止和重复停止均安全。
  :roots $ #{} 'respo.app.scheduler/watch-render! 'respo.app.scheduler/stop-render-watch!
  :definitions $ {}
    'respo.app.scheduler/watch-render! $ {}
      :mode :ensure
      :kind :fn
      :params $ [] 'render! 'enqueue-option
      :doc |每次安装先停止旧注册；保留默认微任务和显式_enqueue_两种调度方式。
      :schema $ :: 'Fn
        {} (:return 'Unit)
          :args $ []
            :: 'Fn $ {} (:return 'Unit) (:args $ [])
            :: 'Option $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] $ :: 'Fn $ {} (:return 'Unit) (:args $ [])
          :features $ #{} :js-ffi
    'respo.app.scheduler/stop-render-watch! $ {}
      :mode :ensure
      :kind :fn
      :params $ []
      :doc |使旧排队回调失效，且仅移除本调度器持有的注册；重复停止安全。
      :schema $ :: 'Fn $ {} (:return 'Unit) (:args $ [])
    'respo.app.scheduler/*render-watch-active? $ {}
      :mode :ensure
      :kind :data
      :doc |记录调度器是否持有_rerender_注册，与排队回调的_generation_分别管理。
      :schema $ :: 'Ref 'Bool
      :code $ quote $ defref *render-watch-active? false
  :edges $ #{}
    :: :call 'respo.app.scheduler/watch-render! 'respo.app.scheduler/stop-render-watch!
