
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |respo
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'respo.main/main!) (:mode :js) (:reload-fn 'respo.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |js-ffi/
      :type-slots $ {} $ :dispatch-op |respo.app.schema/Op
  :files $ {}
    'respo.app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (store)
            let
                states $ :states store
                tasks $ :tasks store
              div
                {} (; :class-name highlight-defcomp) (:class-name style-global)
                comp-todolist states tasks
                div
                  {} $ :style style-states
                  <> $ str "|states: " $ to-lispy-string states
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'respo.app.schema/Store
        'style-global $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-global
            {}
              |& $ {} $ :font-family |Avenir,Verdana
              |& $ {} ('contained "|@media only screen and (max-width: 600px)")
                :background-color $ hsl 0 0 90
          :examples $ []
          :schema $ :: 'String
        'style-states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-states
            {} $ :padding 8
          :examples $ []
          :schema $ :: 'Map
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.app.comp.container
          :require
            respo.core :refer $ defcomp div span <> >> a
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo.app.comp.todolist :refer $ comp-todolist
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ highlight-defcomp
    'respo.app.comp.task $ %{} 'FileEntry
      :defs $ {}
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-task (states task)
            let
                cursor $ decode-map-as
                  either (&map:get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ either (&map:get states :data) |
                task-id $ :id task
                task-text $ :text task
                done? $ :done? task
              [] (effect-log task)
                div
                  {} $ :class-name style-task
                  comp-inspect |Task task $ {} $ :left 200
                  button $ {} (:class-name style-done)
                    :style $ {} $ :background-color
                      if done? (hsl 200 20 80) (hsl 200 80 70)
                    :on-click $ fn (e d!)
                      d! $ :: :toggle task-id
                  =< 8 0
                  input $ {} (:value task-text) (:class-name widget/style-input)
                    :on-input $ fn (e d!)
                      let
                          text $ str $ assert-type (&map:get e :value) String
                        d! $ Op :update task-id text
                  =< 8 0
                  input $ {} (:value state) (:class-name widget/style-input)
                    :on-input $ fn (e d!)
                      d! $ Op :states cursor $ &map:get e :value
                  =< 8 0
                  div
                    {} (:class-name widget/style-button)
                      :on-click $ fn (e d!)
                        d! $ Op :remove task-id
                    <> |Remove
                  =< 8 0
                  div ({})
                    <> $ str state
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'respo.app.schema/Task
        'effect-log $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-log (task) (action parent at-place?) (; js/console.log "|Task effect" action at-place?)
            match action
              :mount $ let
                  x0 $ js/Math.random
                ; println |Stored x0
                , nil
              :update (; println |read) nil
              :unmount (; println |read) nil
              _ nil
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] 'respo.app.schema/Task
            :features $ #{} :js-ffi
        'style-done $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-done
            {} $ :& $ {} (:width 32) (:height 32) (:outline :none) (:border :none) (:vertical-align :middle) (:cursor :pointer)
          :examples $ []
          :schema $ :: 'String
        'style-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-task
            {} $ |& $ {} (:display :flex) (:padding "|4px 0px")
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.app.comp.task
          :require
            respo.core :refer $ defcomp div input span button <> defeffect
            respo.util.format :refer $ hsl
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo.app.style.widget :as widget
            respo.css :refer $ defstyle
            respo.app.schema :refer $ Op
    'respo.app.comp.todolist $ %{} 'FileEntry
      :defs $ {}
        'comp-todolist $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-todolist (states tasks)
            let
                cursor $ decode-map-as
                  either (&map:get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ assert-type
                  either (&map:get states :data) (respo.app.schema/TodoState :draft | :locked? false :message "|Press Ctrl+M to change message")
                  , respo.app.schema/TodoState
                draft $ :draft state
                locked? $ :locked? state
                message $ :message state
              assert-type state 'respo.app.schema/TodoState
              assert-type tasks $ :: 'List 'respo.app.schema/Task
              [] (on-keydown cursor state) (effect-focus |#draft-input)
                div
                  {} (:class-name style-todo-root) (:data-name |todolist)
                  comp-inspect |States state $ {} $ :left |80px
                  div
                    {} $ :style style-panel
                    input $ {} (:placeholder |Text) (:id |draft-input) (:value draft) (:class-name widget/style-input)
                      :style $ {} $ :width
                        &max 200 $ + 24 $ text-width draft 16 |BlinkMacSystemFont
                      :on-input $ fn (e d!)
                        d! $ Op :states-merge cursor state $ {}
                          :draft $ assert-type (&map:get e :value) String
                      :on-focus on-focus
                    =< 8 0
                    span
                      {} (:class-name widget/style-button)
                        :on-click $ fn (e d!)
                          d! $ Op :add draft
                          d! $ Op :states cursor $ assoc state :draft |
                      span $ {} (:on-click nil) (:inner-text |Add)
                    =< 8 0
                    span $ {} (:inner-text |Clear) (:class-name widget/style-button)
                      :on-click $ fn (e d!)
                        d! $ Op :clear
                    =< 8 0
                    div ({})
                      div
                        {} (:class-name widget/style-button) (:on-click on-test)
                        <> "|heavy tasks" style-bold!
                  list->
                    {} (:class-name |task-list) (:style style-list)
                    map (reverse tasks)
                      fn (task)
                        hint-fn $ {}
                          :args $ [] 'respo.app.schema/Task
                          :return $ :: 'List 'Dynamic
                        let
                            task-id $ :id task
                          [] task-id $ memo-comp-by task-id comp-task (>> states task-id) task
                  if
                    > (count tasks) 0
                    div
                      {} (:spell-check true) (:class-name style-toolbar)
                      div
                        {} (:class-name widget/style-button)
                          :on-click $ if (not locked?)
                            fn (e d!)
                              d! $ Op :clear
                        <> |Clear2
                      =< 8 0
                      div
                        {} (:class-name widget/style-button)
                          :on-click $ fn (e d!)
                            d! $ Op :states cursor $ assoc state :locked?
                              not $ :locked? state
                        <> (str-spaced |Lock? locked?)
                          {} $ :font-size 13
                      =< 8 0
                      comp-wrap $ comp-zero
                  comp-inspect |Tasks tasks $ {} (:left 500) (:top 20)
                  div
                    {} $ :style $ {} (:padding |8px) (:font-size 12) (:color |#999) (:margin-top |16px)
                    <> message
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic $ :: 'List 'respo.app.schema/Task
        'effect-focus $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-focus (pattern) (action parent at-place?)
            when (= action :mount)
              match
                js-nullish->option $ js/document.querySelector pattern
                (:none) &unit
                (:some target)
                  .select! $ unsafe-coerce target 'respo.dom/DomElement
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'number-order $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn number-order (a b)
            if (&< a b) -1 $ if (&> a b) 1 0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'Number 'Number
        'on-focus $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-focus (e dispatch!) (println "|Just focused~")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'Map 'Tag 'Dynamic)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Dynamic
        'on-keydown $ %{} 'CodeEntry
          :doc "|Creates a keyboard listener for Ctrl+M shortcut. This function demonstrates how to create component-local listeners that can access component state through closures. Returns a RespoListener that updates the message state when Ctrl+M is pressed."
          :code $ quote $ defn on-keydown (cursor state)
            respo.schema/RespoListener :name :on-keydown :handler $ fn (event dispatch!)
              match event $
                :keydown info
                when
                  and
                    &= |m $ &map:get info :key
                    identical? true $ &map:get info :ctrl
                  do
                    dispatch! $ Op :states cursor $ assoc state :message "|Message changed by Ctrl+M!"
                    js/window.setTimeout
                      fn () $ dispatch! $ Op :states cursor (assoc state :message "|Press Ctrl+M to change message")
                      , 2000
          :examples $ [] $ quote (on-keydown cursor state)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/RespoListener)
            :args $ [] (:: 'List 'Dynamic) 'respo.app.schema/TodoState
            :features $ #{} :js-ffi
        'on-test $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-test (e dispatch!) (println "|trigger test!")
            try-test! dispatch! $ []
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'Map 'Tag 'Dynamic)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Dynamic
        'style-bold! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-bold!
            {} $ |& $ {} (:font-weight "|bold !important")
          :examples $ []
          :schema $ :: 'String
        'style-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-list
            {} (:color :black)
              :background-color $ hsl 120 20 98
          :examples $ []
          :schema $ :: 'Map
        'style-panel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-panel
            {} (:display :flex) (:margin-bottom 4)
          :examples $ []
          :schema $ :: 'Map
        'style-todo-root $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-todo-root
            {} $ |& $ {} (:color :black)
              :background-color $ hsl 120 20 98
              :line-height |24px
              |font-size 16
              :padding 10
              :font-family "|\"微软雅黑\", Verdana"
          :examples $ []
          :schema $ :: 'String
        'style-toolbar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-toolbar
            {} $ |& $ {} (:display :flex) (:flex-direction :row) (:justify-content :start) (:padding "|4px 0") (:white-space :nowrap)
          :examples $ []
          :schema $ :: 'String
        'try-test! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn try-test! (dispatch! acc)
            let
                started $ unsafe-coerce (js/Date.now) Number
              dispatch! $ Op :clear
              loop
                  x 20
                dispatch! $ Op :add |empty
                if (> x 0)
                  recur $ dec x
              loop
                  x 20
                dispatch! $ Op :hit-first $ str (js/Math.random)
                if (> x 0)
                  recur $ dec x
              dispatch! $ Op :clear
              loop
                  x 10
                dispatch! $ Op :add "|only 10 items"
                if (> x 0)
                  recur $ dec x
              shared/queue-microtask! $ fn () $ let
                  cost $ -
                    unsafe-coerce (js/Date.now) Number
                    , started
                if
                  < (count acc) 40
                  js/setTimeout
                    fn () $ try-test! dispatch! $ conj acc cost
                    , 0
                  println |result: $ sort acc number-order
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Dynamic
              :: 'List 'Number
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.app.comp.todolist
          :require
            respo.core :refer $ defcomp div span input <> list-> defeffect >> a memo-comp-by
            respo.util.format :refer $ hsl
            respo.app.comp.task :refer $ comp-task
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo.app.comp.zero :refer $ comp-zero
            respo.app.comp.wrap :refer $ comp-wrap
            respo.util.dom :refer $ text-width
            respo.app.style.widget :as widget
            respo.css :refer $ defstyle
            respo.app.schema :refer $ Op
            js-ffi.shared :as shared
    'respo.app.comp.wrap $ %{} 'FileEntry
      :defs $ {} $ 'comp-wrap
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-wrap (x)
            div ({}) x
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.app.comp.wrap
          :require $ respo.core :refer $ defcomp div
    'respo.app.comp.zero $ %{} 'FileEntry
      :defs $ {} $ 'comp-zero
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-zero ()
            div $ {} $ :inner-text 0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.app.comp.zero
          :require $ respo.core :refer $ defcomp div
    'respo.app.core $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry
          :doc "|Global state storage Atom for the Respo application.\n\nThis is an atom containing all application state data, initialized with the structure defined by schema/store.\nIn Respo applications, all component states are stored in this global store and updated through the dispatch mechanism."
          :code $ quote $ defatom *store schema/store
          :examples $ []
          :schema $ :: 'Ref 'respo.app.schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            if dev? $ js/console.log op
            let
                store $ updater @*store op $ generate-id!
              reset! *store store
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.app.schema/Op
            :features $ #{} :js-ffi
        'handle-ssr! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn handle-ssr! (mount-target)
            realize-ssr! mount-target (comp-container @*store) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'new-fn $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn new-fn () (println |hello)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! (mount-target)
            render-with! mount-target
              fn () $ comp-container @*store
              , dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'JsNullish 'respo.dom/DomElement
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.app.core
          :require
            respo.app.comp.container :refer $ comp-container
            respo.core :refer $ render-with! realize-ssr!
            respo.schema :refer $ dev?
            respo.app.schema :as schema
            respo.app.updater :refer $ updater
    'respo.app.scheduler $ %{} 'FileEntry
      :defs $ {}
        '*render-watch-generation $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *render-watch-generation 0
          :examples $ []
          :schema $ :: 'Ref 'Number
        'watch-render! $ %{} 'CodeEntry
          :doc "|Install the demo store watch with one scheduler per registration. Read application state when the render callback runs; replacing the watch invalidates pending callbacks from the previous registration. Pass Option:none for queueMicrotask or Option:some enqueue! for deterministic tests."
          :code $ quote $ defn watch-render! (render! enqueue-option) (swap! *render-watch-generation inc)
            let
                generation @*render-watch-generation
                schedule! $ make-render-scheduler
                  fn ()
                    when (= generation @*render-watch-generation) (render!)
                    , &unit
                  , enqueue-option
              calcit.core/add-watch! *store :rerender $ fn (_current _previous) (schedule!)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ []
              :: 'Option $ :: 'Fn $ {} (:return 'Unit)
                :args $ [] $ :: 'Fn
                  {} (:return 'Unit)
                    :args $ []
            :features $ #{} :js-ffi
          :tags $ #{} :internal
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.app.scheduler
          :require
            respo.app.core :refer $ *store
            respo.core :refer $ make-render-scheduler
    'respo.app.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (:: 'List 'Dynamic) 'Dynamic
            :states-kv (:: 'List 'Dynamic) 'Dynamic 'Dynamic
            :states-merge (:: 'List 'Dynamic) 'respo.app.schema/TodoState 'Dynamic
            :add 'String
            :remove 'String
            :clear
            :update 'String 'String
            :hit-first 'String
            :toggle 'String
          :examples $ []
          :schema $ :: 'EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :tasks $ :: 'List 'respo.app.schema/Task
            :states 'Dynamic
            :cursor $ :: 'List 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'Task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Task (:id 'String) (:text 'String) (:done? 'Bool)
          :examples $ []
          :schema $ :: 'StructDef
        'TodoState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct TodoState (:draft 'String) (:locked? 'Bool) (:message 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'store $ %{} 'CodeEntry
          :doc "|Default immutable Store record value used by the example application."
          :code $ quote $ def store
            Store :tasks ([]) :states ({}) :cursor $ []
          :examples $ []
          :schema $ :: 'respo.app.schema/Store
        'task $ %{} 'CodeEntry
          :doc "|Default immutable Task record value used when constructing example tasks."
          :code $ quote $ def task (Task :id | :text | :done? false)
          :examples $ []
          :schema $ :: 'respo.app.schema/Task
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.app.schema
    'respo.app.style.widget $ %{} 'FileEntry
      :defs $ {}
        'button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def button
            {} (:display :inline-block) (:padding "|0 6px 0 6px") (:font-family |Avenir,Verdana) (:cursor :pointer)
              :background-color $ hsl 0 80 70.9
              :color $ hsl 0 0 100
              :height 28
              :line-height |28px
              :transition-duration |200ms
          :examples $ []
          :schema $ :: 'Map
        'style-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-button
            {} (:& button)
              |&:hover $ {} $ :transform "|scale(1.04)"
          :examples $ []
          :schema $ :: 'String
        'style-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-input
            {} $ |& $ {} (:font-size |16px) (:line-height |24px) (:padding "|0px 8px") (:outline :none) (:min-width |300px)
              :background-color $ hsl 0 0 94
              :border :none
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.app.style.widget
          :require
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
    'respo.app.task $ %{} 'FileEntry
      :defs $ {}
        'normalize-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-task (data)
            cond
                struct? data
                let
                    task $ assert-type data 'respo.app.schema/Task
                  Option :some task
              (map? data)
                match (try-decode-map-as data 'respo.app.schema/Task)
                  (:ok task) (Option :some task)
                  (:err _) (Option :none)
              true $ Option :none
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'calcit.core/Option 'respo.app.schema/Task
          :tests $ [] $ %{} 'TestEntry (:name |restores-valid-task-data)
            :code $ quote $ do
              let
                  task $ %{} Task (:id |task-1) (:text |saved) (:done? false)
                  normalized $ option:unwrap $ normalize-task task
                assert |struct-id-is-kept $ = |task-1 $ &struct:nth normalized 1 :id
                assert |struct-text-is-kept $ = |saved $ &struct:nth normalized 2 :text
                assert |struct-status-is-kept $ = false $ &struct:nth normalized 0 :done?
              let
                  normalized $ option:unwrap $ normalize-task
                    {} (:id |task-2) (:text |mapped) (:done? true)
                assert |map-input-is-restored $ = |task-2 $ &struct:nth normalized 1 :id
              assert |invalid-data-is-rejected $ option:none? $ normalize-task
                {} $ :id |missing-fields
        'normalize-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-tasks (items)
            loop
                acc $ assert-type ([]) (:: 'List 'respo.app.schema/Task)
                xs items
              if (empty? xs) acc $ let
                  next-acc $ match
                    normalize-task $ &list:first xs
                    (:none) acc
                    (:some task) (append acc task)
                recur next-acc $ &list:rest xs
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'Dynamic
            :return $ :: 'List 'respo.app.schema/Task
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.app.task
          :require $ respo.app.schema :refer $ Task
    'respo.app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id)
            match op
              (:states cursor s)
                assoc store :states $ update-state-tree (:states store) cursor s
              (:states-kv cursor k v)
                assoc store :states $ update-state-tree-kv (:states store) cursor k v
              (:states-merge cursor s o)
                assoc store :states $ update-state-tree-merge (:states store) cursor s o
              (:add text)
                assoc store :tasks $ conj (:tasks store) (respo.app.schema/Task :text text :id op-id :done? false)
              (:remove task-id)
                assoc store :tasks $ filter (:tasks store)
                  fn (task)
                    hint-fn $ {}
                      :args $ [] 'respo.app.schema/Task
                      :return 'Bool
                    not $ = (:id task) task-id
              (:clear)
                assoc store :tasks $ []
              (:update task-id text)
                assoc store :tasks $ map (:tasks store)
                  fn (task)
                    hint-fn $ {}
                      :args $ [] 'respo.app.schema/Task
                      :return 'respo.app.schema/Task
                    if
                      = (:id task) task-id
                      assoc task :text text
                      , task
              (:hit-first rd)
                let
                    tasks $ :tasks store
                  if (empty? tasks) store $ let
                      first-task $ assert-type (&list:first tasks) 'respo.app.schema/Task
                    assoc store :tasks $ &list:assoc tasks 0 $ assoc first-task :text rd
              (:toggle task-id)
                assoc store :tasks $ map (:tasks store)
                  fn (task)
                    hint-fn $ {}
                      :args $ [] 'respo.app.schema/Task
                      :return 'respo.app.schema/Task
                    if
                      = (:id task) task-id
                      assoc task :done? $ not $ :done? task
                      , task
              _ $ do (eprintln |Unknown-op: op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.app.schema/Store)
            :args $ [] 'respo.app.schema/Store 'respo.app.schema/Op 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.app.updater
          :require $ respo.cursor :refer $ update-state-tree update-state-tree-kv update-state-tree-merge
    'respo.comp.global-keydown $ %{} 'FileEntry
      :defs $ {}
        'comp-global-keydown $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-global-keydown (options on-event)
            ; "|dirty solution: proxy window keydown event to a `<span/>`, comes with some restrictions. however Respo does not allow effects to modify states."
            [] (effect-listen-keyboard options |keydown)
              span $ {} $ :on-keydown
                fn (e d!) (on-event e d!)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
              :: 'Map 'Tag $ :: 'Set 'String
              , 'Fn
        'comp-global-keyup $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-global-keyup (options on-event)
            ; "|dirty solution: proxy window keydown event to a `<span/>`, comes with some restrictions. however Respo does not allow effects to modify states."
            [] (effect-listen-keyboard options |keyup)
              span $ {} $ :on-keyup
                fn (e d!) (on-event e d!)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
              :: 'Map 'Tag $ :: 'Set 'String
              , 'Fn
        'dirty-field $ %{} 'CodeEntry
          :doc "|Constant string key for the global keyboard listener."
          :code $ quote $ def dirty-field |_global_listener
          :examples $ []
          :schema $ :: 'String
        'effect-listen-keyboard $ %{} 'CodeEntry
          :doc "|Effect for listening to global keyboard events on the window object."
          :code $ quote $ defeffect effect-listen-keyboard (options event-name) (action el at?)
            cond
                or (= action :mount) (= action :update)
                let
                    disabled-commands $ let
                        raw-disabled $ option:unwrap-or (get options :disabled-commands) (#{} |p |s)
                      assert-type raw-disabled $ :: 'Set 'String
                    handler $ fn (event)
                      hint-fn $ {}
                        :args $ [] 'js-ffi.browser/EventHost
                        :return 'Unit
                      let
                          key $ contract/expect-string |KeyboardEvent.key $ .-key event
                          ctrl-key? $ contract/expect-bool |KeyboardEvent.ctrlKey $ .-ctrlKey event
                          meta-key? $ contract/expect-bool |KeyboardEvent.metaKey $ .-metaKey event
                        if
                          and (contains? disabled-commands key) (or ctrl-key? meta-key?)
                          .!preventDefault event
                          Option :none
                        .!dispatchEvent el $ new js/KeyboardEvent (.-type event) event
                        , &unit
                  let
                      prev-listener $ aget el dirty-field
                      listener $ unsafe-coerce prev-listener $ :: 'Fn
                        {}
                          :args $ [] 'js-ffi.browser/EventHost
                          :return 'Unit
                    if (js-present? prev-listener)
                      browser/remove-event-listener! (str event-name) listener
                  aset el dirty-field handler
                  browser/add-event-listener! (str event-name) handler
              (= action :unmount)
                let
                    handler $ aget el dirty-field
                    listener $ unsafe-coerce handler $ :: 'Fn
                      {}
                        :args $ [] 'js-ffi.browser/EventHost
                        :return 'Unit
                  if (js-present? handler)
                    browser/remove-event-listener! (str event-name) listener
                  js-delete el dirty-field
              true nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ []
              :: 'Map 'Tag $ :: 'Set 'String
              , 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.comp.global-keydown
          :require
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input a list->
            js-ffi.browser :as browser
            js-ffi.contract :as contract
    'respo.comp.inspect $ %{} 'FileEntry
      :defs $ {}
        'comp-inspect $ %{} 'CodeEntry
          :doc "|Development helper for visualizing data in the UI.\n\nIt renders a labeled preview of arbitrary data and logs the original value when clicked. This is useful for debugging component props or local state and is usually disabled or removed in production."
          :code $ quote $ defcomp comp-inspect (tip data style)
            let
                class-name $ if (string? style) style
                style-map $ if (map? style) style
              pre $ {}
                :class-name $ str-spaced style-data class-name
                :inner-text $ str tip "|: " $ grab-info data
                :style style-map
                :on-click $ fn (e d!)
                  if (js-present? js/window.devtoolsFormatters) (js/console.log data)
                    js/console.log $ to-js-data data
                  , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'grab-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn grab-info (data)
            cond
                map? data
                str |Map/ $ count data
              (list? data)
                str |List/ $ count data
              (set? data)
                str |Set/ $ count data
              (nil? data) |nil
              (number? data) (str data)
              (tag? data) (str data)
              (bool? data) (str data)
              (fn? data) |Fn
              true $ to-lispy-string data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic
        'highlight-defcomp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle highlight-defcomp
            {} $ "|& *" $ {}
              :outline $ str "|1px dashed " $ hsl 200 40 50 0.5
          :examples $ []
          :schema $ :: 'String
        'style-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-data
            {} $ |& $ {} (:position :absolute) (:background-color "|hsl(240,100%,0%)") (:color :white) (:opacity 0.2) (:font-size |12px) (:font-family |Avenir,Verdana) (:line-height |1.4em) (:padding "|2px 6px") (:border-radius |4px) (:max-width 160) (:max-height 32) (:white-space :normal) (:text-overflow :ellipsis) (:cursor :default)
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.comp.inspect
          :require
            respo.core :refer $ defcomp pre <>
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
    'respo.comp.space $ %{} 'FileEntry
      :defs $ {}
        '=< $ %{} 'CodeEntry
          :doc "|insert a tiny space, horizontally or verticaly.\n\n- `8 nil` for horizontal width 8px,\n- `nil 8` for vertical height 8px.\n"
          :code $ quote $ defn =< (w x) (comp-space w x)
          :examples $ []
            quote $ =< 8 nil
            quote $ =< nil 16
            quote $ =< 12 nil
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic
        'comp-space $ %{} 'CodeEntry
          :doc "|A tiny spacer component that renders an empty styled `<div>` with either width or height.\n\nUse it for explicit horizontal or vertical gaps when you want spacing as a component, although plain CSS margin is often cheaper."
          :code $ quote $ defcomp comp-space (w h)
            div $ {} (:class-name style-space)
              :style $ if (calcit.core/non-nil? w) (&{} :width w) (&{} :height h)
          :examples $ []
            quote $ comp-space 10 nil
            quote $ comp-space nil 16px
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic
        'style-space $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-space
            {} $ :& $ {} (:height 1) (:width 1) (:display :inline-block)
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.comp.space
          :require
            respo.core :refer $ div defcomp
            respo.css :refer $ defstyle
    'respo.controller.client $ %{} 'FileEntry
      :defs $ {}
        'activate-instance! $ %{} 'CodeEntry
          :doc "|Create and mount the initial DOM tree into a mount point.\n\nThis function clears previous content, builds event listeners from `deliver-event`, and appends the rendered root element. It is an internal mounting step used by `mount-app!`."
          :code $ quote $ defn activate-instance! (entire-dom mount-point deliver-event)
            let
                listener-builder $ fn (event-name)
                  hint-fn $ {}
                    :args $ [] 'Tag
                    :return $ :: 'Fn $ {} (:return 'Unit)
                      :args $ [] 'respo.dom/DomEvent $ :: 'List 'Dynamic
                  build-listener event-name deliver-event
              set! mount-point.:inner-html |
              mount-point .append-child! $ make-element entire-dom listener-builder $ []
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.schema/Component 'respo.dom/DomElement $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] (:: 'List 'Dynamic) 'Tag $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'build-listener $ %{} 'CodeEntry
          :doc "|Creates a DOM event listener that converts events and dispatches them to Respo."
          :code $ quote $ defn build-listener (event-name deliver-event)
            fn (event coord)
              hint-fn $ {} (:return 'Unit)
                :args $ [] 'respo.dom/DomEvent $ :: 'List 'Dynamic
              let
                  simple-event $ event->edn event
                deliver-event coord event-name simple-event
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Tag $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] (:: 'List 'Dynamic) 'Tag $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] 'respo.dom/DomEvent $ :: 'List 'Dynamic
        'patch-instance! $ %{} 'CodeEntry
          :doc "|Apply collected patch operations to the mounted DOM root.\n\nIt builds event listeners from `deliver-event` and delegates concrete DOM mutations to `apply-dom-changes`."
          :code $ quote $ defn patch-instance! (changes mount-point deliver-event)
            let
                listener-builder $ fn (event-name)
                  hint-fn $ {}
                    :args $ [] 'Tag
                    :return $ :: 'Fn $ {} (:return 'Unit)
                      :args $ [] 'respo.dom/DomEvent $ :: 'List 'Dynamic
                  build-listener event-name deliver-event
              apply-dom-changes changes mount-point listener-builder
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'List 'respo.schema/DomPatch) 'respo.dom/DomElement $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] (:: 'List 'Dynamic) 'Tag $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'send-to-component! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn send-to-component! (event-tuple)
            let
                dispatch! $ wrap-dispatch *dispatch-fn
                tree @*global-element
              match tree
                (:none) &unit
                (:some component) (traverse-and-call component event-tuple dispatch!)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
        'traverse-and-call $ %{} 'CodeEntry
          :doc "|Traverses the rendered tree and invokes component listeners. The dispatch callback intentionally stays at the generic Fn boundary because wrap-dispatch supports multiple operation forms and an optional payload."
          :code $ quote $ defn traverse-and-call (element event-tuple dispatch!)
            when
              or (component? element) (element? element)
              loop
                  xs $ [] $ respo.util.detect/as-render-node element
                hint-fn $ {}
                  :args $ [] $ :: 'List 'respo.schema/RenderNode
                  :return 'Unit
                if (empty? xs) &unit $ let
                    node $ &list:nth xs 0
                    pending $ &list:rest xs
                  match node
                    (:component component)
                      do
                        each (:listeners component)
                          fn (listener)
                            hint-fn $ {}
                              :args $ [] 'respo.schema/RespoListener
                              :return 'Unit
                            (:handler listener) event-tuple dispatch!
                            , &unit
                        match (:tree component)
                          (:none) (recur pending)
                          (:some tree)
                            recur $ prepend pending tree
                    (:element markup)
                      recur $ foldl
                        reverse $ :children markup
                        , pending $ fn (acc pair)
                          hint-fn $ {}
                            :args $ [] (:: 'List 'respo.schema/RenderNode) 'respo.schema/ChildPair
                            :return $ :: 'List 'respo.schema/RenderNode
                          match (:node pair)
                            (:none) acc
                            (:some child) (prepend acc child)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Struct 'Enum 'Fn
          :tests $ []
            %{} 'TestEntry
              :name |tolerates-none-subtree-and-keeps-component-listener
              :code $ quote $ let
                  log $ atom $ []
                  listener $ %{} respo.schema/RespoListener (:name :watch)
                    :handler $ fn (event _dispatch!)
                      reset! log $ [] event
                  component $ %{} respo.schema/Component (:name :empty)
                    :effects $ []
                    :listeners $ [] listener
                    :tree $ %none
                traverse-and-call component (:: :changed)
                  fn (_op) &unit
                assert |listener-was-called $ &= 1 $ count @log
                assert |listener-received-event $ &= (:: :changed) (&list:nth @log 0)
              :tags $ #{} :unit
            %{} 'TestEntry
              :name |keeps-listener-order-dispatch-and-empty-children
              :code $ quote $ let
                  calls $ atom $ []
                  operations $ atom $ []
                  event $ :: :changed
                  dispatch-ref $ atom $ fn (op)
                    reset! operations $ append @operations op
                    , &unit
                  wrapped-dispatch $ wrap-dispatch dispatch-ref
                  make-component $ fn (name tree)
                    hint-fn $ {}
                      :args $ [] 'Tag $ :: 'Option 'respo.schema/RenderNode
                      :return 'respo.schema/Component
                    respo.schema/Component :name name :effects ([]) :tree tree :listeners $ [] $ respo.schema/RespoListener :name :watch :handler
                      fn (received dispatch!) (assert= event received)
                        reset! calls $ append @calls name
                        dispatch! $ :: :heard name
                        , &unit
                  first-component $ make-component :first $ %none
                  second-component $ make-component :second $ %none
                  element $ &struct:assoc
                    respo.core/div $ {}
                    , :children $ [] (respo.util.detect/make-child-pair :first first-component) (respo.util.detect/make-child-pair :empty nil) (respo.util.detect/make-child-pair :second second-component)
                  nested $ make-component :nested $ %some (respo.util.detect/as-render-node element)
                  root $ make-component :root $ %some (respo.util.detect/as-render-node nested)
                traverse-and-call root event wrapped-dispatch
                assert= ([] :root :nested :first :second) @calls
                assert=
                  [] (:: :heard :root) (:: :heard :nested) (:: :heard :first) (:: :heard :second)
                  , @operations
        'wrap-dispatch $ %{} 'CodeEntry
          :doc "|Wraps a raw dispatch function to automatically handle different operation types (list, tag, or direct)."
          :code $ quote $ defn wrap-dispatch (*dispatch-fn)
            fn (op & data)
              hint-fn $ {}
                :args $ [] 'Dynamic
                :rest 'Dynamic
                :return 'Unit
              let
                  dispatch! $ deref *dispatch-fn
                  payload $ if (empty? data) nil $ &list:nth data 0
                if (list? op)
                  dispatch! $ :: :states op payload
                  if (tag? op)
                    if (nil? payload)
                      dispatch! $ :: op
                      dispatch! $ :: op payload
                    dispatch! op
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Ref
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Dynamic
            :return $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
              :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |handles-legacy-data-and-single-enum)
            :code $ quote $ let
                received $ atom |
                dispatch-ref $ atom $ fn (op)
                  reset! received $ str op
                  , &unit
                wrapped $ wrap-dispatch dispatch-ref
              wrapped ([] :field) :value
              assert |legacy-two-argument-state-dispatch $ =
                str $ :: :states ([] :field) :value
                , @received
              wrapped :effect/persist nil
              assert |legacy-nil-tag-dispatch $ =
                str $ :: :effect/persist
                , @received
              wrapped $ :: :direct
              assert |single-enum-dispatch $ =
                str $ :: :direct
                , @received
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.controller.client
          :require
            respo.render.patch :refer $ apply-dom-changes
            respo.util.format :refer $ event->edn
            respo.render.dom :refer $ make-element
            respo.core :refer $ *dispatch-fn *global-element
            respo.util.detect :refer $ component? element? component-listeners component-tree element-children listener-handler
            respo.controller.resolve :refer $ extract-listeners
            respo.dom :refer $ DomElement
    'respo.controller.resolve $ %{} 'FileEntry
      :defs $ {}
        'build-deliver-event $ %{} 'CodeEntry
          :doc "|Creates a function to dispatch events from the DOM to Respo's event handling system."
          :code $ quote $ defn build-deliver-event (*global-element *dispatch-fn)
            fn (coord event-name simple-event)
              hint-fn $ {} (:return 'Unit)
                :args $ [] (:: 'List 'Dynamic) 'Tag $ :: 'Map 'Tag 'Dynamic
              let
                  target-element-option $ find-event-target
                    option:unwrap $ deref *global-element
                    , coord event-name
                  target-listener-option $ match target-element-option
                    (:none)
                      do (js/console.warn |found-no-element coord event-name) (Option :none)
                    (:some target-element)
                      match
                        get (element-event target-element) event-name
                        (:none) (Option :none)
                        (:some handler)
                          if (js-present? handler) (Option :some handler) (Option :none)
                  dispatch-wrap $ wrap-dispatch *dispatch-fn
                match target-listener-option
                  (:none) &unit
                  (:some target-listener)
                    &let
                      _handled $ target-listener simple-event dispatch-wrap
                      , &unit
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
              :: 'Ref $ :: 'calcit.core/Option 'respo.schema/Component
              :: 'Ref $ :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] (:: 'List 'Dynamic) 'Tag $ :: 'Map 'Tag 'Dynamic
        'extract-listeners $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn extract-listeners (component-result)
            if (list? component-result)
              let
                  listeners $ filter component-result listener?
                  elements $ filter component-result $ fn (x)
                    not $ listener? x
                {} (:listeners listeners)
                  :element $ option:unwrap-or (first elements) nil
              {}
                :listeners $ []
                :element component-result
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'find-child-by-key $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn find-child-by-key (children expected-key)
            option:map (find-child-node children expected-key) respo.util.detect/render-node-value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'respo.schema/ChildPair) 'Dynamic
            :return $ :: 'Option 'Struct
        'find-child-node $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn find-child-node (children expected-key)
            loop
                xs children
              hint-fn $ {}
                :args $ [] $ :: 'List 'respo.schema/ChildPair
                :return $ :: 'Option 'respo.schema/RenderNode
              if (empty? xs) (Option :none)
                let
                    pair $ &list:nth xs 0
                  if
                    &= (:key pair) expected-key
                    :node pair
                    recur $ &list:rest xs
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'respo.schema/ChildPair) 'KeyInput
            :generics $ [] 'KeyInput
            :return $ :: 'Option 'respo.schema/RenderNode
        'find-event-target $ %{} 'CodeEntry
          :doc "|Traverses the virtual DOM to find the element that should handle a specific event."
          :code $ quote $ defn find-event-target (element coord event-name)
            assert |element-cannot-be-nil $ calcit.core/non-nil? element
            assert |coord-cannot-be-nil $ calcit.core/non-nil? coord
            let
                target-element-option $ loop
                    m-option $ get-render-node-at (respo.util.detect/as-render-node element) coord
                  hint-fn $ {}
                    :args $ [] $ :: 'Option 'respo.schema/RenderNode
                    :return $ :: 'Option 'respo.schema/Element
                  match m-option
                    (:none) (Option :none)
                    (:some node)
                      match node
                        (:component component)
                          recur $ :tree component
                        (:element target) (Option :some target)
                event-present? $ option:fold target-element-option
                  fn () false
                  fn (target-element)
                    contains? (element-event target-element) event-name
              if event-present? target-element-option $ if (empty? coord) (Option :none)
                recur element
                  slice coord 0 $ - (count coord) 1
                  , event-name
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Struct (:: 'List 'Dynamic) 'Tag
            :return $ :: 'calcit.core/Option 'respo.schema/Element
          :tests $ [] $ %{} 'TestEntry (:name |returns-none-through-empty-component-tree)
            :code $ quote $ let
                component $ %{} respo.schema/Component (:name :empty)
                  :effects $ []
                  :listeners $ []
                  :tree $ %none
              assert |coordinate-descent-stops-at-none-tree $ option:none? $ get-markup-at component ([] :child)
              assert |event-target-stops-at-none-tree $ option:none? $ find-event-target component ([]) :click
            :tags $ #{} :unit
        'get-markup-at $ %{} 'CodeEntry
          :doc "|Retrieves the virtual DOM element at the specified coordinate."
          :code $ quote $ defn get-markup-at (markup coord)
            option:map
              get-render-node-at (respo.util.detect/as-render-node markup) coord
              , respo.util.detect/render-node-value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Struct $ :: 'List 'Dynamic
            :return $ :: 'calcit.core/Option 'Struct
        'get-render-node-at $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-render-node-at (node coord)
            list-match coord
              () $ Option :some node
              (coord-head cs)
                match node
                  (:component component)
                    match (:tree component)
                      (:none) (Option :none)
                      (:some tree) (get-render-node-at tree cs)
                  (:element element)
                    let
                        children $ :children element
                      match (find-child-node children coord-head)
                        (:some child) (get-render-node-at child cs)
                        (:none)
                          raise $ str |child-not-found: coord $ map children
                            fn (pair)
                              hint-fn $ {}
                                :args $ [] 'respo.schema/ChildPair
                                :return 'Dynamic
                              :key pair
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.schema/RenderNode $ :: 'List 'CoordKey
            :generics $ [] 'CoordKey
            :return $ :: 'Option 'respo.schema/RenderNode
          :tests $ [] $ %{} 'TestEntry (:name |preserves-component-segments-and-mixed-keys)
            :code $ quote $ let
                leaf $ respo.core/span $ {}
                wrapped $ respo.schema/Component :name :wrapped :effects ([]) :listeners ([]) :tree $ %some (respo.util.detect/as-render-node leaf)
                numeric $ respo.core/div $ {}
                parent $ &struct:assoc
                  respo.core/div $ {}
                  , :children $ [] (respo.util.detect/make-child-pair |7 wrapped) (respo.util.detect/make-child-pair 7 numeric)
                root $ respo.schema/Component :name :root :effects ([]) :listeners ([]) :tree $ %some (respo.util.detect/as-render-node parent)
              assert= wrapped $ option:unwrap $ get-markup-at root ([] :root |7)
              assert= numeric $ option:unwrap $ get-markup-at root ([] :root 7)
              assert= (respo.util.detect/as-render-node leaf)
                option:unwrap $ get-render-node-at (respo.util.detect/as-render-node root) ([] :root |7 :wrapped)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.controller.resolve
          :require
            respo.util.detect :refer $ component? element? listener? component-tree element-children element-event
            respo.controller.client :refer $ wrap-dispatch
    'respo.core $ %{} 'FileEntry
      :defs $ {}
        '*changes-logger $ %{} 'CodeEntry
          :doc "|Atom to hold a logging function for observing changes during rerenders. Function signature: (old-tree new-tree changes)."
          :code $ quote $ defatom *changes-logger (Option :none)
          :examples $ [] $ quote
            reset! *changes-logger $ fn (old new changes) (println changes)
          :schema $ :: 'Ref $ :: 'calcit.core/Option
            :: 'Fn $ {} (:return 'Unit)
              :args $ [] 'respo.schema/Component 'respo.schema/Component $ :: 'List 'respo.schema/DomPatch
        '*dispatch-fn $ %{} 'CodeEntry
          :doc "|internal atom storing the dispatch function. used to handle events and state updates throughout the application."
          :code $ quote $ defatom *dispatch-fn
            fn (op) (raise |[Respo]-dispatch-before-render)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic
        '*global-element $ %{} 'CodeEntry
          :doc "|internal atom storing the current virtual DOM tree. used by render! to track and update the application state."
          :code $ quote $ defatom *global-element (Option :none)
          :examples $ []
          :schema $ :: 'Ref $ :: 'calcit.core/Option 'respo.schema/Component
        '<> $ %{} 'CodeEntry
          :doc "|Create a text node with `span`.\n\nThe first argument is the content string. The optional second argument can be a style map or a class-name string."
          :code $ quote $ defn <> (content & styles)
            let
                style $ if (empty? styles) nil $ &list:first styles
              if (string? style)
                span $ {} (:inner-text content) (:class-name style)
                span $ {} (:inner-text content) (:style style)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'String
        '>> $ %{} 'CodeEntry
          :doc "|Create a nested state cursor for a child branch.\n\nThe returned map reuses branch data and extends `:cursor` with the new key, so child components can manage local state without losing the parent path."
          :code $ quote $ defn >> (states k)
            &let
              base $ as-states-map states
              &let
                raw-cursor $ &map:get base :cursor
                &let
                  parent-cursor $ if (nil? raw-cursor) ([])
                    if (list? raw-cursor) raw-cursor $ raise $ str "|[Respo] expected states cursor as a list, got: " (type-of raw-cursor)
                  &map:assoc
                    as-states-map $ &map:get base k
                    , :cursor $ append parent-cursor k
          :examples $ [] $ quote (>> states :task-a)
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'a $ %{} 'CodeEntry
          :doc "|Creates HTML link element (anchor tag).\n\nParameters:\n  props - Attribute map, can include standard HTML attributes like href, target, class-name, etc.\n  & children - Variable arguments for child elements, typically link display text or other elements\n\nReturns:\n  Created link element component\n\nUsed to create hyperlinks, supports all standard HTML link attributes."
          :code $ quote $ defn a (props & children) (create-element :a props & children)
          :examples $ [] $ quote
            a $ {} (:href |https://example.com) (:inner-text "|Visit Example")
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'append-dynamic! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn append-dynamic! (target value)
            reset! target $ append @target value
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Ref $ :: 'List 'Dynamic
              , 'Dynamic
        'as-states-map $ %{} 'CodeEntry (:doc "|在状态树开放边界校验 states map，nil 视为空。")
          :code $ quote $ defn as-states-map (value)
            if (nil? value) ({})
              if (map? value)
                foldl value ({})
                  defn %as-states-entry (acc pair)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'List 'Dynamic)
                      :return $ :: 'Map 'Tag 'Dynamic
                    &let
                      state-key $ &list:nth pair 0
                      if (tag? state-key)
                        &map:assoc acc state-key $ &list:nth pair 1
                        raise $ str "|[Respo] expected states keys as tags, got: " state-key
                raise $ str "|[Respo] expected states as a map, got: " $ type-of value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'blockquote $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn blockquote (props & children) (create-element :blockquote props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'body $ %{} 'CodeEntry
          :doc "|create a body element with properties and children. first argument is a hashmap for properties, rest arguments are children elements."
          :code $ quote $ defn body (props & children) (create-element :body props & children)
          :examples $ []
            quote $ body ({})
              div ({}) (<> |Content)
            quote $ body $ {}
              :style $ {} $ :margin |0
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'build-effect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn build-effect (name deps method)
            when
              not $ tag? name
              raise "|[Respo/build-effect] expected a tag name"
            when
              not $ list? deps
              raise "|[Respo/build-effect] expected dependencies as a list"
            let
                method-fn $ expect-function method "|[Respo/build-effect] expected a lifecycle method function"
              schema/Effect :name name :coord ([]) :args deps :method method-fn
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] 'Tag (:: 'List 'Dynamic)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] (:: 'List 'Dynamic) (:: 'List 'Dynamic)
          :tags $ #{} :internal
        'button $ %{} 'CodeEntry
          :doc "|Renders a <button> element. Wrapper around create-element."
          :code $ quote $ defn button (props & children)
            create-element :button props & $ map children confirm-child
          :examples $ [] $ quote
            button
              {} $ :on-click $ fn (e d!)
                d! $ :: :click
              <> "|Click me"
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'clear-cache! $ %{} 'CodeEntry
          :doc "|Clear memoized render caches used by Respo.\n\nThis is mainly useful during hot reloading or code swapping, where mounted DOM may stay in place but cached render results must be dropped before the next render."
          :code $ quote $ defn clear-cache! () (memo/reset-component-caches!)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn code (props & children) (create-element :code props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'configure-events! $ %{} 'CodeEntry
          :doc "|Configure event installation before the first render! or realize-ssr!. EventConfig contains stop-propagation? (default true) and ListenerMode :property (default) or :add-event-listener. Configuration is immutable after mounting and is preserved during hot reload."
          :code $ quote $ defn configure-events! (config)
            match @*global-element
              (:none) (reset! events/*event-config config)
              (:some _)
                raise |[Respo/configure-events!]-configure-before-mount
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.schema/EventConfig
        'confirm-child $ %{} 'CodeEntry
          :doc "|Validates if the item is a valid Respo node (element, component, or nil). Returns the item."
          :code $ quote $ defn confirm-child (x)
            assert "|Invalid data in elements tree: " $ or (nil? x) (element? x) (component? x)
            , x
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
        'confirm-child-pair $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn confirm-child-pair (pair)
            assert "|expected pair" $ and (list? pair)
              &= 2 $ count pair
            assert "|[Respo] keyed child requires a non-nil key" $ calcit.core/non-nil? $ &list:first pair
            &let
              x $ &list:nth pair 1
              assert "|Invalid data in elements tree: " $ or (nil? x) (element? x) (component? x)
            , pair
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'Dynamic
            :return $ :: 'List 'Dynamic
        'create-element $ %{} 'CodeEntry
          :doc "|Low-level helper for creating a virtual DOM element.\n\nPass a tag name, an optional props map, and child nodes. Public helpers such as `div`, `span`, `button`, and `input` are thin wrappers around this function."
          :code $ quote $ defn create-element (tag-name props & children)
            let
                props-map $ normalize-dom-props props
                ref-value $ &map:get props-map :ref
                ref! $ normalize-ref ref-value "|[Respo/create-element] expected :ref to be a function or nil"
                attrs $ pick-attrs props-map
                styles $ ->
                  props-style-map $ &map:get props-map :style
                  &map:to-list
                  sort $ fn (x y)
                    &compare (&list:nth x 0) (&list:nth y 0)
                event $ pick-event props-map
                children-nodes $ loop
                    acc $ []
                    xs children
                    idx 0
                  hint-fn $ {}
                    :args $ [] (:: 'List 'respo.schema/ChildPair) (:: 'List 'Dynamic) 'Number
                    :return $ :: 'List 'respo.schema/ChildPair
                  if (empty? xs) acc $ let
                      item $ &list:first xs
                    confirm-child item
                    recur
                      if (calcit.core/non-nil? item)
                        append acc $ respo.util.detect/make-child-pair idx item
                        , acc
                      &list:rest xs
                      inc idx
              schema/Element :name tag-name :coord (Option :none) :attrs attrs :style styles :event event :children children-nodes :ref ref!
          :examples $ []
            quote $ create-element :div $ {}
            quote $ create-element :span $ {} (:class-name |text)
            quote $ create-element :a
              {} $ :href |/home
              <> |Home
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'Tag 'PropsInput
            :generics $ [] 'PropsInput
        'create-list-element $ %{} 'CodeEntry
          :doc "|Creates an element for ordered keyed children. Validates each [key child] pair before omitting nil-valued children, matching ordinary element children. Keys must be non-nil, including for omitted children."
          :code $ quote $ defn create-list-element (tag-name props child-pairs)
            when
              not $ list? child-pairs
              raise "|[Respo/create-list-element] expected keyed child pairs as a list or map"
            let
                props-map $ normalize-dom-props props
                ref-value $ &map:get props-map :ref
                ref! $ normalize-ref ref-value "|[Respo/create-list-element] expected :ref to be a function or nil"
                attrs $ pick-attrs props-map
                styles $ sort
                  assert-type
                    &map:to-list $ props-style-map $ &map:get props-map :style
                    :: List $ :: List Dynamic
                  fn (x y)
                    &compare (&list:first x) (&list:first y)
                event $ pick-event props-map
              schema/Element :name tag-name :coord (Option :none) :attrs attrs :style styles :event event :children
                map
                  filter (map child-pairs confirm-child-pair)
                    fn (pair)
                      calcit.core/non-nil? $ respo.util.list/pair-value pair
                  fn (pair)
                    hint-fn $ {}
                      :args $ [] $ :: 'List 'Dynamic
                      :return 'respo.schema/ChildPair
                    respo.util.detect/make-child-pair (respo.util.list/pair-key pair) (respo.util.list/pair-value pair)
                , :ref ref!
          :examples $ [] $ quote
            create-list-element :div
              {} $ :class-name |list
              [] $ [] :item-1 $ span ({})
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'Tag 'Dynamic $ :: 'List (:: 'List 'Dynamic)
          :tests $ []
            %{} 'TestEntry (:name |rejects-invalid-child-collections)
              :code $ quote $ let
                  caught? $ atom false
                try
                  create-list-element-open :div ({}) :invalid
                  fn (_error) (reset! caught? true)
                assert |invalid-keyed-children-report-the-contract @caught?
              :tags $ #{} :unit
            %{} 'TestEntry (:name |ignores-new-nil-child)
              :code $ quote $ let
                  patches $ atom $ []
                  collect! $ fn (patch) (append-dynamic! patches patch)
                  empty-tree $ list-> ({}) ([])
                  nil-tree $ list-> ({})
                    [] $ [] :missing nil
                respo.render.diff/find-element-diffs collect! ([]) ([]) empty-tree nil-tree
                assert= ([]) @patches
              :tags $ #{} :unit
            %{} 'TestEntry (:name |replaces-and-removes-nil-children)
              :code $ quote $ let
                  patches $ atom $ []
                  collect! $ fn (patch) (append-dynamic! patches patch)
                  child $ span $ {}
                  live-tree $ list-> ({})
                    [] $ [] :live child
                  nil-tree $ list-> ({})
                    [] $ [] :live nil
                  empty-tree $ list-> ({}) ([])
                respo.render.diff/find-element-diffs collect! ([]) ([]) live-tree nil-tree
                assert=
                  [] $ schema/DomPatch :rm-element ([] :live) ([] 0)
                  , @patches
                reset! patches $ []
                respo.render.diff/find-element-diffs collect! ([]) ([]) nil-tree empty-tree
                assert= ([]) @patches
                respo.render.diff/find-element-diffs collect! ([]) ([]) nil-tree live-tree
                assert=
                  [] $ schema/DomPatch :append-element ([] :live) ([]) child
                  , @patches
              :tags $ #{} :unit
            %{} 'TestEntry (:name |validates-before-omitting-nil-pairs)
              :code $ quote $ let
                  child $ span $ {}
                  tree $ list-> ({})
                    [] ([] :nil-before nil) ([] :live child) ([] :nil-after nil)
                  caught-key? $ atom false
                  caught-child? $ atom false
                assert=
                  [] $ respo.util.detect/make-child-pair :live child
                  respo.util.detect/element-children tree
                try
                  list-> ({})
                    [] $ [] nil nil
                  fn (_error) (reset! caught-key? true)
                try
                  list-> ({})
                    [] $ [] :invalid false
                  fn (_error) (reset! caught-child? true)
                assert |nil-key-is-rejected-before-filtering @caught-key?
                assert |invalid-child-is-not-filtered @caught-child?
              :tags $ #{} :unit
        'create-list-element-open $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-list-element-open (name attrs children)
            create-list-element name attrs $ assert-type children $ :: 'List (:: 'List 'Dynamic)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Tag (:: 'Map 'Tag 'Dynamic) 'Dynamic
            :features $ #{} :js-ffi
        'decorate-defcomp $ %{} 'CodeEntry
          :doc "|Add the component name to the root element as one data-comp attribute at its sorted position. Preserves the property ordering required by the merge diff, replacing an existing marker when necessary."
          :code $ quote $ defn decorate-defcomp (c name)
            match (:tree c)
              (:none) c
              (:some tree)
                match tree
                  (:component _component) c
                  (:element element)
                    let
                        updated $ assoc element :attrs $ loop
                            before $ []
                            remaining $ :attrs element
                          hint-fn $ {}
                            :args $ []
                              :: 'List $ :: 'List 'Dynamic
                              :: 'List $ :: 'List 'Dynamic
                            :return $ :: 'List $ :: 'List 'Dynamic
                          if (empty? remaining)
                            append before $ [] :data-comp name
                            let
                                pair $ respo.util.list/first-pair remaining
                                order $ &compare (respo.util.list/pair-key pair) :data-comp
                              if (&< order 0)
                                recur (append before pair) (&list:rest remaining)
                                concat before
                                  [] $ [] :data-comp name
                                  if (&= order 0) (&list:rest remaining) remaining
                      assoc c :tree $ Option :some $ respo.schema/RenderNode :element updated
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'respo.schema/Component 'String
          :tests $ []
            %{} 'TestEntry (:name |title-removal-keeps-component-marker)
              :code $ quote $ let
                  patches $ atom $ []
                  collect! $ fn (patch) (append-dynamic! patches patch)
                  old-component $ decorate-defcomp
                    schema/Component :name :link :effects ([]) :listeners ([]) :tree $ Option :some $ respo.util.detect/as-render-node
                      div $ {} (:href |/page) (:title |title)
                    , |comp-link
                  new-component $ decorate-defcomp
                    schema/Component :name :link :effects ([]) :listeners ([]) :tree $ Option :some $ respo.util.detect/as-render-node
                      div $ {} $ :href |/page
                    , |comp-link
                respo.render.diff/find-props-diffs collect! ([]) ([])
                  respo.util.detect/element-attrs $ option:unwrap $ respo.util.detect/component-tree old-component
                  respo.util.detect/element-attrs $ option:unwrap $ respo.util.detect/component-tree new-component
                assert=
                  [] $ schema/DomPatch :rm-prop ([]) ([]) :title
                  , @patches
              :tags $ #{} :unit
            %{} 'TestEntry
              :name |property-addition-and-update-keep-component-marker
              :code $ quote $ let
                  patches $ atom $ []
                  collect! $ fn (patch) (append-dynamic! patches patch)
                  old-component $ decorate-defcomp
                    schema/Component :name :link :effects ([]) :listeners ([]) :tree $ Option :some $ respo.util.detect/as-render-node
                      div $ {} $ :href |/old
                    , |comp-link
                  new-component $ decorate-defcomp
                    schema/Component :name :link :effects ([]) :listeners ([]) :tree $ Option :some $ respo.util.detect/as-render-node
                      div $ {} (:class-name |styled) (:href |/new) (:id |link)
                    , |comp-link
                respo.render.diff/find-props-diffs collect! ([]) ([])
                  respo.util.detect/element-attrs $ option:unwrap $ respo.util.detect/component-tree old-component
                  respo.util.detect/element-attrs $ option:unwrap $ respo.util.detect/component-tree new-component
                assert=
                  []
                    schema/DomPatch :add-prop ([]) ([]) :class-name |styled
                    schema/DomPatch :replace-prop ([]) ([]) :href |/new
                    schema/DomPatch :add-prop ([]) ([]) :id |link
                  , @patches
              :tags $ #{} :unit
            %{} 'TestEntry (:name |marker-is-unique-and-sorted)
              :code $ quote $ let
                  component $ schema/Component :name :link :effects ([]) :listeners ([]) :tree $ Option :some
                    respo.util.detect/as-render-node $ div $ {} (:class-name |styled) (:data-comp |old) (:href |/page)
                  decorated $ decorate-defcomp (decorate-defcomp component |first) |final
                  class-only $ decorate-defcomp
                    schema/Component :name :link :effects ([]) :listeners ([]) :tree $ Option :some $ respo.util.detect/as-render-node
                      div $ {} $ :class-name |styled
                    , |comp-link
                assert=
                  [] ([] :class-name |styled) ([] :data-comp |final) ([] :href |/page)
                  respo.util.detect/element-attrs $ option:unwrap $ respo.util.detect/component-tree decorated
                assert=
                  [] ([] :class-name |styled) ([] :data-comp |comp-link)
                  respo.util.detect/element-attrs $ option:unwrap $ respo.util.detect/component-tree class-only
              :tags $ #{} :unit
        'defcomp $ %{} 'CodeEntry
          :doc "|Macro for defining a Respo component.\n\n`defcomp` expands to a function that returns a `respo.schema/Component`, decorates the component name, and extracts component effects declared from the render result. Use it for reusable view functions that accept props or state cursors and return virtual DOM."
          :code $ quote $ defmacro defcomp (comp-name params & body)
            assert "|expected symbol of comp-name" $ symbol? comp-name
            assert "|expected list for params" $ list? params
            assert "|some component retured" $ &> (count body) 0
            quasiquote $ defn ~comp-name (~ params)
              decorate-defcomp
                extract-effects-list
                  ~ $ turn-tag comp-name
                  let
                      component-body-result $ do $ ~@ body
                    , component-body-result
                ~ $ calcit.core/to-string comp-name
          :examples $ []
            quote $ defcomp comp-demo () $ div ({}) (<> |Hello)
            quote $ defcomp comp-button (text)
              button ({}) (<> text)
            quote $ defcomp comp-link (href text)
              a
                {} $ :href href
                <> text
            quote $ defcomp comp-with-effect (value)
              [] (effect-log value)
                div ({}) (<> value)
          :schema $ :: 'Macro $ {} (:rest 'Syntax)
            :capabilities $ #{}
            :expansion $ :: 'Definition 'Fn
            :required $ [] 'SyntaxSymbol 'SyntaxList
        'defeffect $ %{} 'CodeEntry
          :doc "|Macro for defining component effects.\n\nThe generated effect receives lifecycle information such as `action`, the root element, and `at-place?`, and is typically used inside a component effect vector like `[] (effect ...) child-tree`.\n\nSupported actions are `:mount`, `:before-update`, `:update`, and `:unmount`."
          :code $ quote $ defmacro defeffect (effect-name args params & body)
            assert "|args in symbol" $ and (list? args) (every? args symbol?)
            assert "|params like [action el at-place?]" $ and (list? params) (every? params symbol?)
            let
                args-var $ gensym |args
                params-var $ gensym |params
              quasiquote $ defn ~effect-name ~args $ %{} schema/Effect
                :name $ ~ $ turn-tag effect-name
                :coord $ []
                :args $ [] ~@args
                :method $ fn (~args-var ~params-var)
                  hint-fn $ {}
                    :args $ [] (:: 'List 'Dynamic) (:: 'List 'Dynamic)
                    :return 'Unit
                  let[] ~args ~args-var $ let[] ~params ~params-var $ ~
                    if (empty? body)
                      quasiquote $ do $ println (str-spaced |WARNING: ~effect-name "|lack code for handling effects!")
                      quasiquote $ do ~@body
                  , &unit
          :examples $ [] $ quote
            defeffect log-message (message) (action el at-place?)
              if (= action :mount) (js/console.log message)
          :schema $ :: 'Macro $ {} (:rest 'Syntax)
            :capabilities $ #{}
            :expansion $ :: 'Definition 'Fn
            :required $ [] 'SyntaxSymbol 'SyntaxList 'SyntaxList
          :tests $ [] $ %{} 'TestEntry (:name |discards-body-result-after-running-effects)
            :code $ quote $ let
                hits $ atom 0
                factory $ defeffect effect-result-probe (payload) (action target at?) (assert= :payload payload) (assert= :mount action) (assert= :target target) (assert= true at?) (swap! hits inc) |ignored-result
                effect $ respo.util.detect/as-effect $ factory :payload
              assert= &unit $
                :method effect
                :args effect
                [] :mount :target true
              assert= 1 $ deref hits
            :tags $ #{} :regression :unit
        'defplugin $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro defplugin (x params & body)
            assert "|expected symbol" $ symbol? x
            assert "|expected params" $ list? params
            assert "|expected some result" $ > (count body) 0
            quasiquote $ defn ~x ~params ~@body
          :examples $ []
          :schema $ :: 'Macro $ {} (:rest 'Syntax)
            :capabilities $ #{}
            :expansion $ :: 'Definition 'Fn
            :required $ [] 'SyntaxSymbol 'SyntaxList
        'div $ %{} 'CodeEntry
          :doc "|Create a `<div>` virtual element.\n\nThe first argument is an optional props map. Remaining arguments are child nodes. Put DOM props such as `:class-name`, `:style`, and event handlers in the props map."
          :code $ quote $ defn div (props & children) (create-element :div props & children)
          :examples $ []
            quote $ div ({}) (<> |text)
            quote $ div $ {} (:class-name |container)
            quote $ div $ {}
              :style $ {} $ :color |red
            quote $ div $ {}
              :on $ {} $ :click on-click
            quote $ div ({})
              div ({}) (<> |child1)
              div ({}) (<> |child2)
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'effect-on-mount $ %{} 'CodeEntry
          :doc "|Creates a component effect that calls mount! with the real DOM target after mounting."
          :code $ quote $ defn effect-on-mount (mount!)
            let
                mount-fn $ expect-function mount! "|[Respo/effect-on-mount] expected a callback function"
              build-effect :effect-on-mount ([])
                fn (_args params)
                  let[] (action target _at-place?) params $ if (&= action :mount)
                    do (mount-fn target) &unit
                    , &unit
          :examples $ [] $ quote
            effect-on-mount $ fn (_target) nil
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] 'Fn
        'effect-on-unmount $ %{} 'CodeEntry
          :doc "|Creates a component effect that calls unmount! with the current DOM target before removal."
          :code $ quote $ defn effect-on-unmount (unmount!)
            let
                unmount-fn $ expect-function unmount! "|[Respo/effect-on-unmount] expected a callback function"
              build-effect :effect-on-unmount ([])
                fn (_args params)
                  let[] (action target _at-place?) params $ if (&= action :unmount)
                    do (unmount-fn target) &unit
                    , &unit
          :examples $ [] $ quote
            effect-on-unmount $ fn (_target) nil
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] 'Fn
        'effect-on-update $ %{} 'CodeEntry
          :doc "|Creates a component effect that calls update! when the immutable dependency list changes."
          :code $ quote $ defn effect-on-update (deps update!)
            when
              not $ list? deps
              raise "|[Respo/effect-on-update] expected dependencies as a list"
            let
                update-fn $ expect-function update! "|[Respo/effect-on-update] expected a callback function"
              build-effect :effect-on-update deps $ fn (_args params)
                let[] (action target _at-place?) params $ if (&= action :update)
                  do (update-fn target) &unit
                  , &unit
          :examples $ [] $ quote
            effect-on-update ([] 1)
              fn (_target) nil
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] (:: 'List 'Dynamic)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |dispatches-only-matching-lifecycle-phases)
            :code $ quote $ let
                log $ atom $ assert-type ([])
                  :: 'List $ :: 'List 'Dynamic
                update-effect $ effect-on-update ([] :value)
                  fn (target)
                    do
                      swap! log conj $ [] :update target
                      , &unit
                unmount-effect $ effect-on-unmount $ fn (target)
                  do
                    swap! log conj $ [] :unmount target
                    , &unit
                update-method $ :method update-effect
                unmount-method $ :method unmount-effect
              update-method (:args update-effect) ([] :mount :node false)
              update-method (:args update-effect) ([] :update :node false)
              unmount-method (:args unmount-effect) ([] :update :node false)
              unmount-method (:args unmount-effect) ([] :unmount :node false)
              assert |only-matching-phases-run $ &=
                [] ([] :update :node) ([] :unmount :node)
                , @log
            :tags $ #{} :unit
        'effect-watch $ %{} 'CodeEntry
          :doc "|Creates a dependency-aware effect. setup! runs on mount and after dependency changes; cleanup! runs before a changed setup and on unmount. Cleanup uses the old render closure."
          :code $ quote $ defn effect-watch (deps setup! cleanup-option)
            if (list? deps) &unit $ raise |[Respo/effect-watch]-expected-dependencies-as-a-list
            if (fn? setup!) &unit $ raise |[Respo/effect-watch]-expected-setup-callback
            match cleanup-option
              (:none) &unit
              (:some cleanup!)
                if (fn? cleanup!) &unit $ raise |[Respo/effect-watch]-expected-cleanup-callback
            build-effect :effect-watch deps $ fn (_args params)
              let[] (action target _at-place?) params $ match action
                :mount $ do (setup! target) &unit
                :before-update $ match cleanup-option
                  (:none) &unit
                  (:some cleanup!)
                    do (cleanup! target) &unit
                :update $ do (setup! target) &unit
                :unmount $ match cleanup-option
                  (:none) &unit
                  (:some cleanup!)
                    do (cleanup! target) &unit
                _ &unit
          :examples $ [] $ quote
            effect-watch ([] 1)
              fn (_target) nil
              fn (_target) nil
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] (:: 'List 'Dynamic)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Dynamic
              :: 'calcit.core/Option $ :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Dynamic
          :tests $ []
            %{} 'TestEntry (:name |cleans-old-closure-before-new-setup)
              :code $ quote $ let
                  log $ atom $ []
                  ops $ atom $ []
                  collect! $ fn (op) (append-dynamic! ops op)
                  element $ %{} schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref nil
                  old-effect $ effect-watch ([] 1)
                    fn (target)
                      append-dynamic! log $ [] :setup 1 target
                    some-effect-callback $ fn (target)
                      append-dynamic! log $ [] :cleanup 1 target
                  new-effect $ effect-watch ([] 2)
                    fn (target)
                      append-dynamic! log $ [] :setup 2 target
                    some-effect-callback $ fn (target)
                      append-dynamic! log $ [] :cleanup 2 target
                  old-tree $ %{} schema/Component (:name :watch)
                    :effects $ [] old-effect
                    :listeners $ []
                    :tree $ %some $ respo.util.detect/as-render-node element
                  new-tree $ %{} schema/Component (:name :watch)
                    :effects $ [] new-effect
                    :listeners $ []
                    :tree $ %some $ respo.util.detect/as-render-node element
                respo.render.effect/collect-updating collect! :before-update ([]) ([]) old-tree new-tree
                respo.render.effect/collect-updating collect! :update ([]) ([]) old-tree new-tree
                run-effect-ops! @ops :target
                assert |two-lifecycle-actions-run $ &= 2 $ count @log
              :tags $ #{} :unit
            %{} 'TestEntry (:name |keeps-unchanged-effects-idle)
              :code $ quote $ let
                  ops $ atom $ []
                  collect! $ fn (op) (append-dynamic! ops op)
                  element $ %{} schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref nil
                  old-effect $ effect-watch ([] 1)
                    fn (_target) &unit
                    %none
                  new-effect $ effect-watch ([] 1)
                    fn (_target) &unit
                    %none
                  old-tree $ %{} schema/Component (:name :watch)
                    :effects $ [] old-effect
                    :listeners $ []
                    :tree $ %some $ respo.util.detect/as-render-node element
                  new-tree $ %{} schema/Component (:name :watch)
                    :effects $ [] new-effect
                    :listeners $ []
                    :tree $ %some $ respo.util.detect/as-render-node element
                respo.render.effect/collect-updating collect! :before-update ([]) ([]) old-tree new-tree
                respo.render.effect/collect-updating collect! :update ([]) ([]) old-tree new-tree
                assert |unchanged-effects-produce-no-operations $ empty? @ops
              :tags $ #{} :unit
            %{} 'TestEntry (:name |handles-effect-list-addition-and-removal)
              :code $ quote $ let
                  log $ atom $ []
                  ops $ atom $ []
                  collect! $ fn (op) (append-dynamic! ops op)
                  element $ %{} schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref nil
                  watch $ effect-watch ([])
                    fn (target)
                      append-dynamic! log $ [] :setup target
                    some-effect-callback $ fn (target)
                      append-dynamic! log $ [] :cleanup target
                  without-effect $ %{} schema/Component (:name :optional)
                    :effects $ []
                    :listeners $ []
                    :tree $ %some $ respo.util.detect/as-render-node element
                  with-effect $ %{} schema/Component (:name :optional)
                    :effects $ [] watch
                    :listeners $ []
                    :tree $ %some $ respo.util.detect/as-render-node element
                respo.render.effect/collect-updating collect! :before-update ([]) ([]) without-effect with-effect
                respo.render.effect/collect-updating collect! :update ([]) ([]) without-effect with-effect
                run-effect-ops! @ops :target
                reset! ops $ []
                respo.render.effect/collect-updating collect! :before-update ([]) ([]) with-effect without-effect
                respo.render.effect/collect-updating collect! :update ([]) ([]) with-effect without-effect
                run-effect-ops! @ops :target
                assert |mount-and-unmount-both-run $ &= 2 $ count @log
              :tags $ #{} :unit
            %{} 'TestEntry (:name |replaces-effect-kinds-with-unmount-and-mount)
              :code $ quote $ let
                  log $ atom $ []
                  ops $ atom $ []
                  collect! $ fn (op) (append-dynamic! ops op)
                  element $ %{} schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref nil
                  old-effect $ effect-watch ([])
                    fn (_target) &unit
                    some-effect-callback $ fn (target)
                      append-dynamic! log $ [] :cleanup target
                  new-effect $ effect-on-mount $ fn (target)
                    append-dynamic! log $ [] :mount target
                  old-tree $ %{} schema/Component (:name :replace)
                    :effects $ [] old-effect
                    :listeners $ []
                    :tree $ %some $ respo.util.detect/as-render-node element
                  new-tree $ %{} schema/Component (:name :replace)
                    :effects $ [] new-effect
                    :listeners $ []
                    :tree $ %some $ respo.util.detect/as-render-node element
                respo.render.effect/collect-updating collect! :before-update ([]) ([]) old-tree new-tree
                respo.render.effect/collect-updating collect! :update ([]) ([]) old-tree new-tree
                run-effect-ops! @ops :target
                assert |replacement-runs-two-actions $ &= 2 $ count @log
              :tags $ #{} :unit
        'element-type $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def element-type (resolve-element-constructor)
          :examples $ []
          :schema $ :: 'Dynamic
        'empty-effects $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn empty-effects () ([])
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :return $ :: 'List 'respo.schema/Effect
        'empty-listeners $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn empty-listeners () ([])
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :return $ :: 'List 'respo.schema/RespoListener
        'error-boundary $ %{} 'CodeEntry
          :doc "|Catches synchronous errors while evaluating one child expression and calls fallback with the error. It stores no hidden error state, so the next immutable store render retries the child."
          :code $ quote $ defmacro error-boundary (fallback & body)
            when
              not $ = 1 $ count body
              raise "|[Respo/error-boundary] expected exactly one child expression"
            let
                fallback-fn $ gensym
                error $ gensym
                child $ &list:nth body 0
              quasiquote $ let
                  ~fallback-fn $ respo.util.detect/expect-function ~fallback "|[Respo/error-boundary] expected fallback as a function"
                try ~child $ fn (~error) (~fallback-fn ~error)
          :examples $ [] $ quote
            error-boundary
              fn (_error)
                div ({}) (<> |Failed)
              div ({}) (<> |Ready)
          :schema $ :: 'Macro $ {}
            :capabilities $ #{}
            :expansion $ :: 'Expr 'Dynamic
            :required $ [] $ :: 'Expr 'Fn
            :rest $ :: 'Expr 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |catches-render-errors)
            :code $ quote $ let
                caught? $ atom false
                result $ error-boundary
                  fn (_error) (reset! caught? true) |fallback
                  raise |boom
              assert |fallback-result-is-returned $ &= |fallback result
              assert |fallback-receives-the-error @caught?
            :tags $ #{} :unit
        'extract-effects-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn extract-effects-list (component-name markup-tree)
            if (nil? markup-tree)
              schema/Component :effects ([]) :name component-name :listeners ([]) :tree $ Option :some $ respo.util.detect/as-render-node
                span $ {}
              if (list? markup-tree)
                let
                    items markup-tree
                  loop
                      node-option $ none-render-node
                      effects $ empty-effects
                      listeners $ empty-listeners
                      xs items
                    if (empty? xs)
                      match node-option
                        (:none) (raise |expected-render-node)
                        (:some node-tree)
                          schema/Component :effects effects :name component-name :listeners listeners :tree $ Option :some node-tree
                      let
                          item $ &list:first xs
                          next-node $ if
                            and (struct? item)
                              or (component? item) (element? item)
                            Option :some $ respo.util.detect/as-render-node item
                            , node-option
                          next-effects $ if (effect? item)
                            append effects $ respo.util.detect/as-effect item
                            , effects
                          next-listeners $ if (listener? item)
                            append listeners $ respo.util.detect/as-listener item
                            , listeners
                        recur next-node next-effects next-listeners $ &list:rest xs
                if (struct? markup-tree)
                  schema/Component :effects ([]) :name component-name :listeners ([]) :tree $ Option :some $ respo.util.detect/as-render-node markup-tree
                  raise |invalid-component-tree
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'for-keyed $ %{} 'CodeEntry
          :doc "|Maps an ordered immutable list to keyed [key child] pairs for list->. key-fn receives the item; render-item receives item and index. Nil keys raise an indexed error."
          :code $ quote $ defn for-keyed (items key-fn render-item)
            when
              not $ list? items
              raise "|[Respo/for-keyed] expected items as a list"
            let
                get-key $ expect-function key-fn "|[Respo/for-keyed] expected key-fn as a function"
                render-child $ expect-function render-item "|[Respo/for-keyed] expected render-item as a function"
              map-indexed items $ fn (idx item)
                let
                    key $ get-key item
                  when (nil? key)
                    raise $ str "|[Respo/for-keyed] key-fn returned nil at index " idx
                  [] key $ confirm-child $ render-child item idx
          :examples $ [] $ quote
            for-keyed
              []
                {} (:id :a) (:label |A)
                {} (:id :b) (:label |B)
              fn (item) (:id item)
              fn (item _idx)
                div ({})
                  <> $ :label item
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'T)
              :: 'Fn $ {} (:return 'K)
                :args $ [] 'T
              :: 'Fn $ {} (:return 'Dynamic)
                :args $ [] 'T 'Number
            :generics $ [] 'T 'K
            :return $ :: 'List $ :: 'List 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |preserves-order-and-rejects-nil-keys)
            :code $ quote $ do
              let
                  items $ [] :a :b
                  pairs $ for-keyed items
                    fn (item)
                      hint-fn $ {}
                        :args $ [] 'Tag
                        :return 'Tag
                      , item
                    fn (_item _idx)
                      hint-fn $ {}
                        :args $ [] 'Tag 'Number
                        :return 'respo.schema/Element
                      %{} schema/Element (:name :div)
                        :coord $ %none
                        :attrs $ []
                        :style $ []
                        :event $ {}
                        :children $ []
                        :ref nil
                assert |keys-preserve-input-order $ &= ([] :a :b) (map pairs respo.util.list/pair-key)
                assert |all-items-are-rendered $ = 2 $ count pairs
              let
                  caught? $ atom false
                try
                  for-keyed ([] 1)
                    fn (_item)
                      hint-fn $ {}
                        :args $ [] 'Number
                        :return 'Nil
                      , nil
                    fn (_item _idx)
                      hint-fn $ {}
                        :args $ [] 'Number 'Number
                        :return 'respo.schema/Element
                      %{} schema/Element (:name :div)
                        :coord $ %none
                        :attrs $ []
                        :style $ []
                        :event $ {}
                        :children $ []
                        :ref nil
                  fn (_error) (reset! caught? true)
                assert |nil-key-reports-index @caught?
            :tags $ #{} :unit
        'h1 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn h1 (props & children) (create-element :h1 props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'h2 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn h2 (props & children) (create-element :h2 props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'h3 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn h3 (props & children) (create-element :h3 props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'h4 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn h4 (props & children) (create-element :h4 props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'h5 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn h5 (props & children) (create-element :h5 props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'h6 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn h6 (props & children) (create-element :h6 props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'head $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn head (props & children) (create-element :head props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'hr $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn hr (props) (create-element :hr props)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'html $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn html (props & children)
            create-element :html props & $ map children confirm-child
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'img $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn img (props & children) (create-element :img props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'input $ %{} 'CodeEntry
          :doc "|Creates HTML input element (input tag).\n\nParameters:\n  props - Attribute map, can include standard HTML attributes and event handlers like type, value, placeholder, on-input, etc.\n  & children - Variable arguments for child elements, usually empty since input is self-closing\n\nReturns:\n  Created input element component\n\nUsed to create various form input controls, supports text, password, number and other input types."
          :code $ quote $ defn input (props & children) (create-element :input props & children)
          :examples $ [] $ quote
            input $ {} (:type |text) (:placeholder "|Enter your name")
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
          :tests $ [] $ %{} 'TestEntry (:name |accepts-props-from-a-variable-map)
            :code $ quote $ let
                props $ {} (:placeholder |example) (:value |text)
                node $ input props
              assert= :input $ :name node
              assert=
                [] ([] :placeholder |example) ([] :value |text)
                :attrs node
            :tags $ #{} :regression :unit
        'li $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn li (props & children) (create-element :li props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn link (props & children) (create-element :link props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'list-> $ %{} 'CodeEntry
          :doc "|Render keyed children inside a `<div>`.\n\nPass an optional props map and a keyed children collection of `[key child]` pairs so diffing can reconcile inserts, removals, and reordering by key."
          :code $ quote $ defn list-> (props children) (create-list-element :div props children)
          :examples $ [] $ quote
            list-> ({})
              [] $ [] :a $ div ({})
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'PropsInput $ :: 'List (:: 'List 'Dynamic)
            :generics $ [] 'PropsInput
        'make-render-scheduler $ %{} 'CodeEntry
          :doc "|Returns a zero-argument scheduler. Pass Option:none (or omit the trailing Option argument) to coalesce requests via queueMicrotask, or Option:some enqueue! to supply custom timing. The callback reads the latest application state when it runs; only queued metadata is stored. render! and render-with! themselves remain synchronous. Reuse one scheduler per store watch; resetting its queued flag before rendering allows later requests to schedule another callback."
          :code $ quote $ defn make-render-scheduler (render! enqueue-option)
            let
                queue! $ match enqueue-option
                  (:none) shared/queue-microtask!
                  (:some enqueue!) enqueue!
                *queued? $ atom false
              fn ()
                when (not @*queued?) (reset! *queued? true)
                  queue! $ fn () (reset! *queued? false) (render!)
                , &unit
          :examples $ [] $ quote
            make-render-scheduler
              fn () &unit
              %:: Option :some $ fn (task) (task)
          :schema $ :: 'Fn $ {}
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ []
              :: 'calcit.core/Option $ :: 'Fn $ {} (:return 'Unit)
                :args $ [] $ :: 'Fn
                  {} (:return 'Unit)
                    :args $ []
            :features $ #{} :js-ffi
            :return $ :: 'Fn $ {} (:return 'Unit)
              :args $ []
          :tests $ [] $ %{} 'TestEntry (:name |coalesces-custom-queue-requests)
            :code $ quote $ let
                render-count $ atom 0
                tasks $ atom $ []
                schedule! $ make-render-scheduler
                  fn () $ do (swap! render-count inc) &unit
                  some-enqueue $ fn (task) (append-dynamic! tasks task)
              schedule!
              schedule!
              assert |requests-are-coalesced $ = 1 $ count @tasks
              run-first-task! @tasks
              assert |queued-task-renders-once $ = 1 @render-count
              schedule!
              assert |new-request-can-be-enqueued-after-run $ = 2 $ count @tasks
            :tags $ #{} :unit
        'memo-comp-by $ %{} 'CodeEntry
          :doc "|Memoize a component by key and its full argument list. Use it while building a tree inside render-with! so entries whose keys disappear are pruned after the frame. A nil key bypasses caching."
          :code $ quote $ defn memo-comp-by (key f & args) (memo/memo-comp-by key f & args)
          :examples $ [] $ quote
            memo-comp-by :demo
              fn (label)
                %{} schema/Component
                  :effects $ []
                  :name :memo-demo
                  :listeners $ []
                  :tree $ <> label
              , |demo
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Fn
        'memo-value-by $ %{} 'CodeEntry
          :doc "|Memoizes an immutable derived value by function, stable key, and complete argument list. Use inside render-with! so frame pruning follows the rendered tree. A nil key bypasses the cache."
          :code $ quote $ defn memo-value-by (key f & args) (memo/memo-value-by key f & args)
          :examples $ [] $ quote
            memo-value-by :task-count count $ [] :a :b :c
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'Dynamic)
            :args $ [] 'Dynamic 'Fn
        'mount-app! $ %{} 'CodeEntry
          :doc "|Mounts the Respo application to the DOM. Initializes the global element and event listeners."
          :code $ quote $ defn mount-app! (target element *dispatch-fn)
            ; assert "|1st argument should be an element" $ or (nil? target) (instance? element-type target)
            ; assert "|2nd argument should be a component" $ component? element
            let
                deliver-event $ build-deliver-event *global-element *dispatch-fn
                *changes $ new-patch-collector
                collect! $ fn (op)
                  hint-fn $ {} (:return 'Unit)
                    :args $ [] 'respo.schema/DomPatch
                  reset! *changes $ append (deref *changes) op
                  , &unit
              ; println "|mount app"
              activate-instance! element (unsafe-coerce target 'respo.dom/DomElement) deliver-event
              collect-mounting collect! ([]) ([]) element true
              reset! *global-element $ Option :some element
              patch-instance! (deref *changes) (unsafe-coerce target 'respo.dom/DomElement) deliver-event
            , &unit
          :examples $ [] $ quote
            mount-app! mount-target (comp-app) *dispatch-fn
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'respo.schema/Component $ :: 'Ref
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'new-patch-collector $ %{} 'CodeEntry (:doc "|创建收集 DomPatch 的类型化引用，替代未类型化的 buf-list。")
          :code $ quote $ defn new-patch-collector ()
            atom $ []
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :return $ :: 'Ref $ :: 'List 'respo.schema/DomPatch
        'none-render-node $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn none-render-node () (Option :none)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :return $ :: 'calcit.core/Option 'respo.schema/RenderNode
        'none-struct $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn none-struct () (Option :none)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :return $ :: 'calcit.core/Option 'Struct
        'normalize-dom-props $ %{} 'CodeEntry
          :doc "|Normalize nil, map, or DomProps record input into a map. This isolates the intentionally dynamic public props boundary before typed DOM processing."
          :code $ quote $ defn normalize-dom-props (props)
            cond
                nil? props
                {}
              (struct? props)
                let
                    filter-present $ assert-type &map:filter-kv $ :: 'Fn
                      {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Tag 'Dynamic
                            :return 'Bool
                        :return $ :: 'Map 'Tag 'Dynamic
                  filter-present (&struct:to-map props)
                    fn (_k v)
                      and (calcit.core/non-nil? v) (not= v js/undefined)
              (map? props)
                foldl props ({})
                  defn %normalize-dom-prop (acc pair)
                    hint-fn $ {}
                      :args $ []
                        :: (quote Map) (quote Tag) (quote Dynamic)
                        :: (quote List) (quote Dynamic)
                      :return $ :: (quote Map) (quote Tag) (quote Dynamic)
                    &let
                      k $ &list:nth pair 0
                      if (tag? k)
                        &map:assoc acc k $ &list:nth pair 1
                        raise $ str "|Expected DOM prop keys to be tags, got: " k
              true $ raise $ str |Expected_DOM_props_map_or_record,_got: (type-of props)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'PropsInput
            :features $ #{} :js-ffi
            :generics $ [] 'PropsInput
            :return $ :: 'Map 'Tag 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |rejects-invalid-props-input)
            :code $ quote $ each
              [] 0 false $ []
              fn (value)
                let
                    rejected? $ atom false
                  try (normalize-dom-props value)
                    fn (error) (reset! rejected? true)
                  assert |invalid-props-rejected $ deref rejected?
            :tags $ #{} :regression :unit
        'normalize-ref $ %{} 'CodeEntry
          :doc "|在 props 的开放数据边界验证 ref，返回明确的 nullable DOM 回调；nil 保留，非法函数沿用调用方消息。"
          :code $ quote $ defn normalize-ref (value message)
            if (nil? value) nil $ if (fn? value) value $ raise message
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'RefInput 'String
            :generics $ [] 'RefInput
            :return $ :: 'JsNullish 'Fn
          :tags $ #{} :internal
          :tests $ []
            %{} 'TestEntry (:name |preserves-nil-and-callback)
              :code $ quote $ let
                  callback $ fn (_target)
                    hint-fn $ {}
                      :args $ [] $ :: 'JsNullish 'respo.dom/DomElement
                      :return 'Unit
                    , &unit
                assert= nil $ normalize-ref nil |expected-ref
                assert |ref-identity-preserved $ identical? callback $ normalize-ref callback |expected-ref
              :tags $ #{} :unit
            %{} 'TestEntry (:name |rejects-invalid-ref)
              :code $ quote $ let
                  caught? $ atom false
                try (normalize-ref :invalid |expected-ref)
                  fn (error) (assert= |expected-ref error) (reset! caught? true)
                assert |invalid-ref-rejected @caught?
              :tags $ #{} :unit
        'ol $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ol (props & children) (create-element :ol props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'option $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn option (props & children) (create-element :option props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'p $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn p (props & children) (create-element :p props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'pre $ %{} 'CodeEntry
          :doc "|Renders a <pre> element. Wrapper around create-element."
          :code $ quote $ defn pre (props & children) (create-element :pre props & children)
          :examples $ [] $ quote
            pre
              {} $ :style $ {} (:color :red)
              <> "|Code block"
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'props-style-map $ %{} 'CodeEntry (:doc "|在 props 开放数据边界检查 :style，nil 视为空 map。")
          :code $ quote $ defn props-style-map (value)
            if (nil? value) ({})
              if (map? value) value $ raise $ str "|[Respo] expected :style to be a map, got: " (type-of value)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Dynamic 'Dynamic
        'realize-ssr! $ %{} 'CodeEntry
          :doc "|Adopt server-rendered DOM before the first client render. It compares the component tree to the existing HTML, attaches events by diffing a muted tree against the live tree, and mounts effects once. The live tree and shared dispatch reference are recorded before patches run, so events work immediately and later render! calls update handlers and dispatch without remounting."
          :code $ quote $ defn realize-ssr! (target element dispatch!)
            assert (instance? element-type target) "|1st argument should be an element"
            assert (component? element) "|2nd argument should be a component"
            let
                app-element $ .-firstElementChild target
                *changes $ new-patch-collector
                collect! $ fn (patch)
                  hint-fn $ {} (:return 'Unit)
                    :args $ [] 'respo.schema/DomPatch
                  reset! *changes $ append (deref *changes) patch
                  , &unit
                deliver-event $ build-deliver-event *global-element *dispatch-fn
              if (js-nullish? app-element) (raise "|Detected no element from SSR!")
              compare-to-dom!
                respo.util.format/coerce-element $ respo.util.detect/as-element $ purify-element element
                unsafe-coerce app-element 'js-ffi.browser/DomElementHost
              find-element-diffs collect! ([]) ([]) (mute-element element) element
              collect-mounting collect! ([]) ([]) element true
              reset! *dispatch-fn dispatch!
              reset! *global-element $ Option :some element
              patch-instance! (deref *changes) (unsafe-coerce target 'respo.dom/DomElement) deliver-event
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic 'respo.schema/Component $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'render! $ %{} 'CodeEntry
          :doc "|Synchronize a component tree to a mount target.\n\nThe first call mounts the app. Later calls diff against `*global-element` and patch the existing DOM. `dispatch!` is stored internally and used by generated event listeners to deliver action tuples.\n\nThe stored example wraps the call in a function so `check-examples` validates the public call shape without executing browser DOM effects."
          :code $ quote $ defn render! (target markup dispatch!) (reset! *dispatch-fn dispatch!)
            if (js-nullish? target) (raise |[Respo/render!]-expected-mount-target)
              match @*global-element
                (:none) (mount-app! target markup *dispatch-fn)
                (:some _) (rerender-app! target markup *dispatch-fn)
            , &unit
          :examples $ [] $ quote
            fn (mount-target component dispatch!) (render! mount-target component dispatch!)
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'JsNullish 'respo.dom/DomElement) 'respo.schema/Component $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Dynamic
            :features $ #{} :js-ffi
          :tests $ [] $ %{} 'TestEntry (:name |rejects-nil-mount-target)
            :code $ quote $ let
                caught? $ atom false
                component $ respo.schema/Component :name :empty :effects ([]) :listeners ([]) :tree $ Option :none
              try
                render! nil component $ fn (op) &unit
                fn (error) (assert= |[Respo/render!]-expected-mount-target error) (reset! caught? true)
              assert |nil-mount-target-rejected @caught?
            :tags $ #{} :unit
        'render-with! $ %{} 'CodeEntry
          :doc "|在受管理的 memo 帧中构建 Component 树，清理不再活跃的组件 key，然后渲染。传入零参数树构建函数，使 memo 调用位于帧内。向外传播的渲染错误会中止当前帧并重新抛出，保留上次成功提交的缓存。"
          :code $ quote $ defn render-with! (target render-tree dispatch!) (memo/begin-memo-frame!)
            try
              let
                  element $ render-tree
                memo/finish-memo-frame!
                render! target element dispatch!
              fn (error) (memo/abort-memo-frame!) (raise error)
            , &unit
          :examples $ [] $ quote
            render-with! mount-target
              fn () $ comp-container @*store
              , dispatch!
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'JsNullish 'respo.dom/DomElement)
              :: 'Fn $ {} (:return 'respo.schema/Component)
                :args $ []
              , 'Fn
            :features $ #{} :js-ffi
        'rerender-app! $ %{} 'CodeEntry
          :doc "|Diffs the new element against the global element and patches the DOM. Used internally by render!."
          :code $ quote $ defn rerender-app! (target element *dispatch-fn)
            match @*global-element
              (:none) (mount-app! target element *dispatch-fn)
              (:some old-element)
                if (identical? old-element element) &unit $ let
                    deliver-event $ build-deliver-event *global-element *dispatch-fn
                    *changes $ new-patch-collector
                    collect! $ fn (op)
                      hint-fn $ {} (:return 'Unit)
                        :args $ [] 'respo.schema/DomPatch
                      reset! *changes $ append (deref *changes) op
                      , &unit
                  find-element-diffs collect! ([]) ([]) old-element element
                  let
                      changes-list $ deref *changes
                    match @*changes-logger
                      (:none) &unit
                      (:some logger) (logger old-element element changes-list)
                    reset! *global-element $ Option :some element
                    patch-instance! changes-list (unsafe-coerce target 'respo.dom/DomElement) deliver-event
            , &unit
          :examples $ [] $ quote
            rerender-app! mount-target (comp-demo) *dispatch-fn
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'respo.schema/Component $ :: 'Ref
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'resolve-element-constructor $ %{} 'CodeEntry
          :doc "|Resolves the browser Element constructor behind an explicit JavaScript FFI function so element-type remains a value rather than a zero-argument function."
          :code $ quote $ defn resolve-element-constructor ()
            if (exists? js/globalThis.Element) js/globalThis.Element js/Error
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'run-effect-ops! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-effect-ops! (items target)
            &doseq (op items)
              match op
                (:effect-mount _coord _n-coord run!)
                  do
                      assert-type run! Fn
                      , target
                    , &unit
                (:effect-unmount _coord _n-coord run!)
                  do
                      assert-type run! Fn
                      , target
                    , &unit
                (:effect-before-update _coord _n-coord run!)
                  do
                      assert-type run! Fn
                      , target
                    , &unit
                (:effect-update _coord _n-coord run!)
                  do
                      assert-type run! Fn
                      , target
                    , &unit
                _ &unit
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'List 'Dynamic) 'Dynamic
            :features $ #{} :js-ffi
        'run-first-task! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-first-task! (tasks)
            let
                task! $ assert-type (&list:nth tasks 0) Fn
              task!
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'List 'Dynamic
            :features $ #{} :js-ffi
        'script $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn script (props & children) (create-element :script props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'select $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn select (props & children) (create-element :select props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'show $ %{} 'CodeEntry
          :doc "|Conditional rendering macro. Accepts one child and an optional fallback without introducing hidden component state."
          :code $ quote $ defmacro show (condition & branches)
            let
                branch-count $ count branches
              when
                not $ and (>= branch-count 1) (<= branch-count 2)
                raise |[Respo/show]-expected-a-child-and-an-optional-fallback
              let
                  child $ &list:first branches
                  fallback $ if (= branch-count 2) (&list:last branches) nil
                quasiquote $ if ~condition ~child ~fallback
          :examples $ [] $ quote
            show true
              div ({}) (<> |Ready)
              div ({}) (<> |Loading)
          :schema $ :: 'Macro $ {}
            :capabilities $ #{}
            :expansion $ :: 'Expr 'Dynamic
            :required $ [] $ :: 'Expr 'Dynamic
            :rest $ :: 'Expr 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |selects-one-branch)
            :code $ quote $ do
              assert |true-selects-child $ = |child $ show true |child
              assert |false-without-fallback-is-nil $ nil? $ show false |child
              assert |false-selects-fallback $ = |fallback $ show false |child |fallback
            :tags $ #{} :unit
        'some-effect-callback $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn some-effect-callback (callback) (Option :some callback)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Dynamic
            :return $ :: 'calcit.core/Option $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Dynamic
        'some-enqueue $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn some-enqueue (enqueue!) (Option :some enqueue!)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] $ :: 'Fn
                  {} (:return 'Unit)
                    :args $ []
            :return $ :: 'calcit.core/Option $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] $ :: 'Fn
                  {} (:return 'Unit)
                    :args $ []
        'span $ %{} 'CodeEntry
          :doc "|create a span element with properties and children. first argument is a hashmap for properties, rest arguments are children elements."
          :code $ quote $ defn span (props & children) (create-element :span props & children)
          :examples $ []
            quote $ span ({}) (<> |text)
            quote $ span $ {} (:class-name |highlight)
            quote $ span
              {} $ :style $ {} (:color |blue)
              <> |Blue
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'strong $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn strong (props & children) (create-element :strong props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'style $ %{} 'CodeEntry
          :doc "|Creates HTML style element for defining CSS styles.\n\nParameters:\n  props - Attribute map, can include standard HTML attributes for style elements\n  & children - Variable arguments for child elements, typically CSS style content\n\nReturns:\n  Created style element component\n\nUsed to dynamically define CSS styles within components, supports nested and dynamic style generation."
          :code $ quote $ defn style (props & children) (create-element :style props & children)
          :examples $ [] $ quote
            style $ {} $ :innerHTML "|body { margin: 0; padding: 0; }"
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'textarea $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn textarea (props & children)
            create-element :textarea props & $ map children confirm-child
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
          :tests $ []
            %{} 'TestEntry (:name |paste-event-prop)
              :code $ quote $ let
                  handler $ fn (event dispatch!) &unit
                  element $ textarea $ {} (:on-paste handler)
                assert= handler $ option:unwrap $ get (:event element) :paste
                assert= ([]) (:attrs element)
              :tags $ #{} :unit
            %{} 'TestEntry (:name |accepts-props-from-a-variable-map)
              :code $ quote $ let
                  props $ {} (:placeholder |example) (:value |text)
                  node $ textarea props
                assert= :textarea $ :name node
                assert=
                  [] ([] :placeholder |example) ([] :value |text)
                  :attrs node
              :tags $ #{} :regression :unit
        'title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn title (props & children) (create-element :title props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'ul $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ul (props & children) (create-element :ul props & children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Element)
            :args $ [] 'PropsInput
            :generics $ [] 'PropsInput
        'with-attrs $ %{} 'CodeEntry
          :doc "|Merge serialized DOM attributes (Map<Tag, String>) into an Element without changing its children, event handlers, ref or styles. New values replace attributes with the same Tag; the result retains canonical Tag ordering. Use common props with create-element and this helper for SVG/custom attributes. Convert numbers explicitly with to-string; this is not an event/style props entry."
          :code $ quote $ defn with-attrs (element attrs)
            let
                retained $ filter (:attrs element)
                  fn (pair)
                    not $ attrs.contains-key? $ decode-map-as (&list:nth pair 0) 'Tag
                combined $ concat retained $ attrs.to-list
              element.assoc :attrs $ sort combined $ fn (x y)
                &compare (&list:nth x 0) (&list:nth y 0)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'respo.schema/Element $ :: 'Map 'Tag 'String
          :tests $ [] $ %{} 'TestEntry (:name |merge-preserves-element)
            :code $ quote $ let
                original $ create-element :svg $ {} (:class-name |common) (:id |before)
                extended $ with-attrs original $ {} (:width |320) (:id |after)
              assert=
                [] ([] :class-name |common) ([] :id |after) ([] :width |320)
                :attrs extended
              assert=
                [] ([] :class-name |common) ([] :id |before)
                :attrs original
              assert= (:children original) (:children extended)
              assert= (:event original) (:event extended)
              assert= original $ with-attrs original $ {}
      :ns $ %{} 'NsEntry
        :doc "|provide core APIs for Respo, many of them are elements. if expected element is not defined yet, use `create-element :tag-name ...` to use it dynamically.\n"
        :code $ quote $ ns respo.core
          :require
            respo.controller.resolve :refer $ build-deliver-event
            respo.render.diff :refer $ find-element-diffs
            respo.render.effect :refer $ collect-mounting
            respo.util.format :refer $ purify-element mute-element
            respo.controller.client :refer $ activate-instance! patch-instance!
            respo.util.list :refer $ pick-attrs pick-event val-exists?
            respo.schema :as schema
            respo.util.dom :refer $ compare-to-dom!
            respo.util.detect :refer $ component? element? effect? listener? expect-function component-tree
            respo.memo :as memo
            js-ffi.shared :as shared
            respo.render.events :as events
    'respo.css $ %{} 'FileEntry
      :defs $ {}
        '*style-caches $ %{} 'CodeEntry (:doc "|Atom for caching style information.")
          :code $ quote $ defatom *style-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'String 'respo.css/StyleCacheEntry
        '*style-indices-in-nodejs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *style-indices-in-nodejs ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'String 'Number
        '*style-list-in-nodejs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *style-list-in-nodejs ([])
          :examples $ []
          :schema $ :: 'Ref $ :: 'List 'String
        'StyleCacheEntry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StyleCacheEntry (:rules 'Dynamic)
            :el $ :: 'JsNullish 'respo.dom/DomElement
          :examples $ []
          :schema $ :: 'StructDef
        'cache-node-style! $ %{} 'CodeEntry
          :doc "|Store one CSS block per style name in Node, preserving first registration order. Repeated blocks reuse their position; changed blocks replace it. Clearing the public CSS list resets the index cache on the next registration."
          :code $ quote $ defn cache-node-style! (style-name css-block)
            when (empty? @*style-list-in-nodejs)
              reset! *style-indices-in-nodejs $ {}
            match (get @*style-indices-in-nodejs style-name)
              (:some index)
                when-not
                  =
                    option:unwrap $ nth @*style-list-in-nodejs index
                    , css-block
                  swap! *style-list-in-nodejs assoc index css-block
              (:none)
                let
                    index $ count @*style-list-in-nodejs
                  swap! *style-list-in-nodejs append css-block
                  swap! *style-indices-in-nodejs assoc style-name index
            , style-name
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'String
        'create-style! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-style! (style-name rules)
            assert |expected-rules-in-map $ map? rules
            if nodejs?
              cache-node-style! style-name $ render-css-block style-name rules
              match (get @*style-caches style-name)
                (:some cached)
                  let
                      cached-entry $ assert-type cached 'respo.css/StyleCacheEntry
                    if
                      &= rules $ :rules cached-entry
                      , style-name $ let
                          style-el $ present-element $ :el cached-entry
                          css-block $ render-css-block style-name rules
                        respo.dom/set-inner-html! style-el css-block
                        swap! *style-caches assoc style-name $ StyleCacheEntry :rules rules :el style-el
                        , style-name
                (:none)
                  let
                      css-block $ render-css-block style-name rules
                    let
                        style-el $ present-element $ js/document.createElement |style
                      respo.dom/set-inner-html! style-el css-block
                      js-set style-el :id style-name
                      js/document.head.appendChild style-el
                      swap! *style-caches assoc style-name $ StyleCacheEntry :rules rules :el style-el
                    , style-name
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'Dynamic
            :features $ #{} :js-ffi
        'defstyle $ %{} 'CodeEntry
          :doc "|a macro for turning CSS rules into className, and only works for JavaScript.\n\nuse `defstyle` like:\n\n```cirru\ndefstyle style-demo $ {}\n  |& $ {} (:color :red)\n  \"|&:hover\" $ {}\n    :background-color :blue\n```\n\nwhere `&` refers to current element.\n\nIn the rules, it's nested hashmaps. `|&` and `|&:hover` are CSS queries. and in nested hashmaps there are CSS properties defined in calcit data.\n"
          :code $ quote $ defmacro defstyle (style-name rules)
            assert "|expected symbol of style-name" $ symbol? style-name
            warn-style-literals rules
            , &unit &unit
              let
                  style-ns $ &map:get (&extract-code-into-edn style-name) :ns
                  ns-str $ if (string? style-ns) style-ns $ raise "|defstyle expected a namespaced symbol"
                  style-name-str $ str
                    -> (calcit.core/to-string style-name) (&str:replace |! |_EX_) (&str:replace |? |_QU_)
                    , |__ $ -> ns-str (&str:replace |. |_)
                quasiquote $ def ~style-name $ create-style! ~style-name-str ~rules
          :examples $ []
            quote $ defstyle style-button $ {}
              |& $ {} $ :color |blue
              |&:hover $ {} $ :transform "|scale(1.04)"
            quote $ defstyle style-input $ {}
              |& $ {} (:font-size |16px) (:padding "|0px 8px") (:background-color "|hsl(0,0%,94%)")
            quote $ defstyle style-bold $ {}
              |& $ {} $ :font-weight "|bold !important"
            quote $ defstyle style-space $ {}
              |& $ {} (:height 1) (:width 1) (:display :inline-block)
            quote $ defstyle style-global $ {}
              |& $ {} (:font-family |Avenir,Verdana) ('contained "|@media only screen and (max-width: 600px)") (:background-color "|hsl(0,0%,90%)")
            quote $ defstyle style-absolute $ {}
              |& $ {} (:position :absolute) (:top 0) (:left 0)
            quote $ defstyle style-card $ {}
              |& $ {} (:border-radius |8px) (:box-shadow "|0 2px 8px rgba(0,0,0,0.1)") (:padding |16px)
            quote $ defstyle style-flex $ {}
              |& $ {} (:display :flex) (:align-items :center) (:justify-content :space-between)
            quote $ defstyle style-link $ {}
              |& $ {} (:color |blue) (:text-decoration :none)
              |&:hover $ {} $ :text-decoration :underline
            quote $ defstyle style-text $ {}
              |& $ {} (:font-size |14px) (:line-height |1.6) (:color "|hsl(0,0%,20%)")
              |&::before $ {} $ :content "|\"→ \""
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :log
            :expansion $ :: 'Expr 'String
            :required $ [] 'SyntaxSymbol 'SyntaxList
        'detect-nodejs? $ %{} 'CodeEntry
          :doc "|Detects Node.js behind an explicit JavaScript FFI function so nodejs? remains a Boolean value."
          :code $ quote $ defn detect-nodejs? ()
            and (exists? js/process) (exists? js/process.release)
              let
                  release-name js/process.release.name
                and (string? release-name) (= |node release-name)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ []
            :features $ #{} :js-ffi
        'map-entries $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn map-entries (value)
            if (map? value) (&map:to-list value) ([])
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'List 'Dynamic
        'nodejs? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def nodejs? (detect-nodejs?)
          :examples $ []
          :schema $ :: 'Bool
        'present-element $ %{} 'CodeEntry (:doc "|在 DOM 边界确认样式元素存在。")
          :code $ quote $ defn present-element (value)
            if (js-present? value) (js-cast value 'respo.dom/DomElement) (raise |[Respo]-expected-a-DOM-element-for-style-cache)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ [] $ :: 'JsNullish 'Dynamic
            :features $ #{} :js-ffi
        'render-css-block $ %{} 'CodeEntry
          :doc "|Generates a CSS string block from a map of style rules."
          :code $ quote $ defn render-css-block (style-name rules)
            let
                entries $ if (map? rules) (&map:to-list rules)
                  raise $ str "|render-css-block expected a map of rules, got: " $ type-of rules
              loop
                  acc |
                  xs entries
                if (empty? xs) acc $ let
                    pair $ respo.util.list/first-pair xs
                    k $ respo.util.list/pair-key-text pair
                    raw-styles $ respo.util.list/pair-value pair
                    styles-map $ if (map? raw-styles) raw-styles $ raise
                      str "|render-css-block expected a style map, got: " $ type-of raw-styles
                    class-rule $ str |. style-name
                    rule-name $ &str:replace (&str:replace k |$0 class-rule) |& class-rule
                    contained $ &map:get styles-map :contained
                    css-line $ style->string $ &map:to-list styles-map
                    block $ if (calcit.core/non-nil? contained)
                      str contained (char-from-code 32) |{ &newline rule-name (char-from-code 32) |{ &newline css-line &newline |} &newline |}
                      str rule-name (char-from-code 32) |{ &newline css-line &newline |}
                    next-acc $ if (empty? acc) block $ str acc &newline &newline block
                  recur next-acc $ &list:rest xs
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'Dynamic
            :features $ #{} :js-ffi
        'warn-style-literals $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn warn-style-literals (x)
            if (list? x)
              if (empty? x) &unit $ if
                &= '{} $ .unwrap $ .get x 0
                loop
                    idx 1
                  if
                    >= idx $ count x
                    , &unit $ let
                        pair $ .unwrap $ .get x idx
                      if (list? pair)
                        if
                          < (count pair) 2
                          raise "|defstyle expected a property pair with a value"
                          let
                              value $ .unwrap $ .get pair 1
                            when
                              &> (count pair) 2
                              println |defstyle-extra-tokens
                            warn-style-literals value
                            recur $ inc idx
                        raise "|defstyle expected a List property pair"
                , &unit
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
          :tests $ []
            %{} 'TestEntry (:name |returns-unit-for-non-enum)
              :code $ quote $ do (warn-style-literals |plain) (assert |non-enum-style-is-accepted true)
            %{} 'TestEntry (:name |accepts-list-source-and-empty-input)
              :code $ quote $ do
                assert= &unit $ warn-style-literals $ []
                assert= &unit $ warn-style-literals $ quote
                  {} (:color :red)
                    |&:hover $ {} $ :color :blue
              :tags $ #{} :unit
            %{} 'TestEntry (:name |rejects-non-list-property-pair)
              :code $ quote $ assert= "|defstyle expected a List property pair"
                try
                  warn-style-literals $ quote $ {} |bad
                  fn (error) error
              :tags $ #{} :unit
            %{} 'TestEntry (:name |rejects-property-without-value)
              :code $ quote $ assert= "|defstyle expected a property pair with a value"
                try
                  warn-style-literals $ quote $ {} (:color)
                  fn (error) error
              :tags $ #{} :unit
            %{} 'TestEntry (:name |validates-nested-list-source)
              :code $ quote $ assert= "|defstyle expected a List property pair"
                try
                  warn-style-literals $ quote $ {}
                    |&:hover $ {} |bad
                  fn (error) error
              :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.css
          :require $ respo.render.dom :refer $ style->string
    'respo.cursor $ %{} 'FileEntry
      :defs $ {}
        'CursorTestState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct CursorTestState (:draft 'String) (:locked? 'Bool) (:message 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'coerce-cursor-test-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn coerce-cursor-test-state (value) (assert-type value CursorTestState)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'CursorTestState)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'get-state-at $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-state-at (states path)
            loop
                current states
                xs path
              hint-fn $ {}
                :args $ [] 'Dynamic $ :: 'List 'KeyInput
                :return 'Dynamic
                :generics $ [] 'KeyInput
              if (empty? xs) current $ let
                  current-map $ unsafe-coerce current $ :: 'Map 'KeyInput (:: 'JsNullish 'Dynamic)
                  key $ &list:nth xs 0
                  next-option $ get current-map key
                  next-value $ match next-option
                    (:none) nil
                    (:some value) value
                recur next-value $ &list:rest xs
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic $ :: 'List 'KeyInput
            :features $ #{} :js-ffi
            :generics $ [] 'KeyInput
        'update-state-tree $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-state-tree (states cursor new-state)
            assoc-in states
              concat cursor $ [] :data
              , new-state
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic (:: 'List 'Dynamic) 'Dynamic
            :features $ #{} :js-ffi
          :tests $ []
            %{} 'TestEntry (:name |updates-root-state)
              :code $ quote $ let
                  states1 $ update-state-tree ({}) ([]) :ready
                  value $ get-state-at states1 $ [] :data
                assert |root-state-is-updated $ &= :ready value
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |preserves-mixed-tag-string-path)
              :code $ quote $ let
                  states $ update-state-tree ({}) ([] :panel |task-1) :ready
                assert=
                  {} $ :panel $ {}
                    |task-1 $ {} $ :data :ready
                  , states
                assert= :ready $ get-state-at states $ [] :panel |task-1 :data
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |preserves-existing-number-key)
              :code $ quote $ let
                  states $ update-state-tree ({}) ([] 1) :ready
                assert=
                  {} $ 1 $ {} (:data :ready)
                  , states
                assert= :ready $ get-state-at states $ [] 1 :data
              :tags $ #{} :regression :unit
        'update-state-tree-kv $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-state-tree-kv (states cursor k v)
            let
                path $ concat cursor $ [] :data
                state $ get-state-at states path
              if (calcit.core/non-nil? state)
                if (map? state)
                  let
                      state-map state
                    assoc-in states path $ &map:assoc state-map k v
                  if (struct? state)
                    assoc-in states path $ assoc state k v
                    do (eprintln |:states-kv-invalid-state state) states
                do (eprintln |:states-kv-missing-state) states
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic (:: 'List 'Dynamic) 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
          :tests $ []
            %{} 'TestEntry (:name |updates-mixed-key-map-without-rewriting-path)
              :code $ quote $ let
                  states $ update-state-tree ({}) ([] :panel |task-1)
                    {} $ :draft |old
                  updated $ update-state-tree-kv states ([] :panel |task-1) :draft |new
                assert=
                  {} $ :draft |new
                  get-state-at updated $ [] :panel |task-1 :data
                assert=
                  {} $ :draft |old
                  get-state-at states $ [] :panel |task-1 :data
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |updates-existing-numeric-map-key)
              :code $ quote $ let
                  states $ update-state-tree ({}) ([] :panel 7)
                    {} $ 4 |old
                  updated $ update-state-tree-kv states ([] :panel 7) 4 |new
                assert=
                  {} $ 4 |new
                  get-state-at updated $ [] :panel 7 :data
                assert=
                  {} $ 4 |old
                  get-state-at states $ [] :panel 7 :data
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |updates-struct-state-after-shape-guard)
              :code $ quote $ let
                  initial $ CursorTestState :draft |old :locked? false :message |hello
                  states $ update-state-tree ({}) ([] :panel |task-1) initial
                  updated $ update-state-tree-kv states ([] :panel |task-1) :draft |new
                assert= (assoc initial :draft |new)
                  get-state-at updated $ [] :panel |task-1 :data
                assert= initial $ get-state-at states $ [] :panel |task-1 :data
              :tags $ #{} :regression :unit
            %{} 'TestEntry
              :name |invalid-struct-key-keeps-existing-runtime-rejection
              :code $ quote $ let
                  initial $ CursorTestState :draft |old :locked? false :message |hello
                  states $ update-state-tree ({}) ([] :panel) initial
                  rejected $ try
                    do
                      update-state-tree-kv states ([] :panel) 7 |new
                      , false
                    fn (error) true
                assert= true rejected
                assert= initial $ get-state-at states $ [] :panel :data
              :tags $ #{} :regression :unit
        'update-state-tree-merge $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-state-tree-merge (states cursor state0 changes)
            let
                path $ concat cursor $ [] :data
                current-state $ get-state-at states path
                state $ either current-state state0
              if (map? changes)
                let
                    changes-map changes
                    entries $ &map:to-list changes-map
                  loop
                      updated state
                      xs entries
                    if (empty? xs) (assoc-in states path updated)
                      let
                          pair $ respo.util.list/first-pair xs
                          k $ respo.util.list/pair-key pair
                          v $ respo.util.list/pair-value pair
                          next-state $ if (map? updated) (&map:assoc updated k v)
                            if (struct? updated) (assoc updated k v)
                              raise $ str-spaced |unknown-state-to-merge updated
                        recur next-state $ &list:rest xs
                do (eprintln |unknown-changes-to-merge changes) states
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic (:: 'List 'Dynamic) 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
          :tests $ []
            %{} 'TestEntry (:name |preserves-tree-on-invalid-base)
              :code $ quote $ let
                  result $ update-state-tree-merge ({}) ([]) 1 $ {}
                match (get result :data)
                  (:some value)
                    assert |invalid-base-preserves-state $ &= 1 value
                  (:none) (assert |invalid-base-keeps-data false)
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |merges-mixed-key-map-without-rewriting-path)
              :code $ quote $ let
                  states $ update-state-tree ({}) ([] :panel |task-1)
                    {} (:draft |old) (:locked? false)
                  updated $ update-state-tree-merge states ([] :panel |task-1) ({})
                    {} $ :draft |new
                assert=
                  {} (:draft |new) (:locked? false)
                  get-state-at updated $ [] :panel |task-1 :data
                assert=
                  {} (:draft |old) (:locked? false)
                  get-state-at states $ [] :panel |task-1 :data
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |merges-struct-base-without-mutating-original)
              :code $ quote $ let
                  original $ respo.schema/EventConfig :stop-propagation? true :listener-mode $ respo.schema/ListenerMode :property
                  updated $ update-state-tree-merge ({}) ([]) original $ {} (:stop-propagation? false)
                assert=
                  respo.schema/EventConfig :stop-propagation? false :listener-mode $ respo.schema/ListenerMode :property
                  get-state-at updated $ [] :data
                assert= original $ respo.schema/EventConfig :stop-propagation? true :listener-mode $ respo.schema/ListenerMode :property
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |keeps-tree-for-non-map-changes)
              :code $ quote $ let
                  original $ update-state-tree ({}) ([] :panel |task-1)
                    {} $ :draft |old
                assert= original $ update-state-tree-merge original ([] :panel |task-1) ({}) :not-a-map
              :tags $ #{} :regression :unit
            %{} 'TestEntry (:name |rejects-nonempty-merge-into-invalid-base)
              :code $ quote $ assert= true
                try
                  do
                    update-state-tree-merge ({}) ([]) 1 $ {} $ :draft |new
                    , false
                  fn (error)
                    = (str error) "|unknown-state-to-merge 1"
              :tags $ #{} :regression :unit
        'update-states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-states (store cursor new-state)
            assoc store :states $ update-state-tree
              option:unwrap-or (get store :states) ({})
              , cursor new-state
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic (:: 'List 'Dynamic) 'Dynamic
            :features $ #{} :js-ffi
        'update-states-kv $ %{} 'CodeEntry
          :doc "|a quick dirty trick to partially update component state.\n\nnotice: need to handle empty state manually."
          :code $ quote $ defn update-states-kv (store cursor k v)
            assoc store :states $ update-state-tree-kv
              option:unwrap-or (get store :states) ({})
              , cursor k v
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'List 'CursorKeyInput) 'K 'V
            :generics $ [] 'K 'V 'CursorKeyInput
            :return $ :: 'Map 'Tag 'Dynamic
        'update-states-merge $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-states-merge (store cursor state0 changes)
            let
                maybe-states $ &map:get store :states
                states $ if (nil? maybe-states) ({}) maybe-states
              assoc store :states $ update-state-tree-merge states cursor state0 changes
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'List 'Dynamic) 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |merges-struct-state-repeatedly)
            :code $ quote $ let
                state0 $ %{} CursorTestState (:draft |a) (:locked? false) (:message |ready)
                store1 $ update-states-merge ({}) ([]) state0 $ {} (:draft |b)
                store2 $ update-states-merge store1 ([]) state0 $ {} (:draft |c)
                state2 $ coerce-cursor-test-state $ get-state-at store2 ([] :states :data)
              assert |state-remains-a-struct $ struct? state2
              assert |draft-is-updated $ &= |c $ :draft state2
              assert |other-field-is-preserved $ &= |ready $ :message state2
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.cursor
    'respo.dom $ %{} 'FileEntry
      :defs $ {}
        'DomCanvasContext $ %{} 'CodeEntry
          :doc "|Canvas 2D context capability used for text measurement."
          :code $ quote $ deftrait DomCanvasContext (:font 'String)
            .measure-text $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String
              :return 'respo.dom/DomTextMetrics
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} $ :measure-text |measureText
            :writable $ #{} :font
          :schema $ :: 'Trait
        'DomCanvasElement $ %{} 'CodeEntry
          :doc "|Canvas element capability; get-context returns a nullable 2D context in the subset Respo needs."
          :code $ quote $ deftrait DomCanvasElement
            .get-context $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String
              :return $ :: 'JsNullish 'respo.dom/DomCanvasContext
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} $ :get-context |getContext
          :schema $ :: 'Trait
        'DomDocument $ %{} 'CodeEntry
          :doc "|Document APIs used by Respo: querying elements, creating elements, and document roots."
          :code $ quote $ deftrait DomDocument (:head 'respo.dom/DomElement) (:body 'respo.dom/DomElement) (:document-element 'respo.dom/DomElement)
            .create-element $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String
              :return 'respo.dom/DomElement
            .query-selector $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String
              :return $ :: 'JsNullish 'respo.dom/DomElement
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} (:create-element |createElement) (:document-element |documentElement) (:query-selector |querySelector)
          :schema $ :: 'Trait
        'DomElement $ %{} 'CodeEntry
          :doc "|Stable DOM element capability set used by renderer and patches."
          :code $ quote $ deftrait DomElement (:id 'String) (:text-content 'String) (:inner-html 'String) (:inner-text 'String) (:value 'Dynamic) (:checked 'Bool) (:disabled 'Bool) (:selected 'Bool) (:class-name 'String) (:type 'String) (:href 'String) (:dataset 'JsObject) (:style 'JsObject)
            :parent-element $ :: 'JsNullish 'respo.dom/DomElement
            :children 'respo.dom/DomElementCollection
            :first-element-child $ :: 'JsNullish 'respo.dom/DomElement
            :tag-name 'String
            :namespace-uri 'String
            :scroll-top 'Number
            :scroll-left 'Number
            .matches? $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String
              :return 'Bool
            .query-selector $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String
              :return $ :: 'JsNullish 'respo.dom/DomElement
            .append-child! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'T
              :return 'respo.dom/DomElement
            .insert-before! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'T 'T
              :return 'respo.dom/DomElement
            .remove! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T
              :return 'Unit
            .move-before! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'respo.dom/DomElement $ :: 'JsNullish 'respo.dom/DomElement
              :return 'Unit
            .remove-attribute! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String
              :return 'Unit
            .add-event-listener! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String 'Fn
              :return 'Unit
            .remove-event-listener! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String 'Fn
              :return 'Unit
            .dispatch-event! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'Dynamic
              :return 'Bool
            .focus! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T
              :return 'Unit
            .focus-preserving-scroll! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'JsObject
              :return 'Unit
            .blur! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T
              :return 'Unit
            .select! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T
              :return 'Unit
            :owned-event-listeners $ :: 'JsNullish $ :: 'Map 'Tag
              :: 'Fn $ {}
                :args $ [] 'respo.dom/DomEvent
                :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} (:focus-preserving-scroll! |focus) (:inner-html |innerHTML) (:insert-before! |insertBefore) (:move-before! |moveBefore) (:namespace-uri |namespaceURI) (:owned-event-listeners |__respo_calcit_event_listeners) (:parent-element |parentElement) (:remove! |remove) (:scroll-left |scrollLeft) (:scroll-top |scrollTop)
            :writable $ #{} :checked :disabled :id :inner-html :inner-text :owned-event-listeners :scroll-left :scroll-top :selected
          :schema $ :: 'Trait
        'DomElementCollection $ %{} 'CodeEntry
          :doc "|Indexed child element collection returned by the children property."
          :code $ quote $ deftrait DomElementCollection (:length 'Number)
            .item $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'Number
              :return $ :: 'JsNullish 'respo.dom/DomElement
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'DomEvent $ %{} 'CodeEntry
          :doc "|Base native DOM event before Respo converts it into immutable event data."
          :code $ quote $ deftrait DomEvent (:type 'String)
            :target $ :: 'JsNullish 'respo.dom/DomElement
            :default-prevented 'Bool
            .prevent-default! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T
              :return 'Unit
            .stop-propagation! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} (:default-prevented |defaultPrevented) (:prevent-default! |preventDefault) (:stop-propagation! |stopPropagation)
          :schema $ :: 'Trait
        'DomInputEvent $ %{} 'CodeEntry
          :doc "|Input and change event surface used to read form values and checked state."
          :code $ quote $ deftrait DomInputEvent (:type 'String)
            :target $ :: 'JsNullish 'respo.dom/DomElement
            .prevent-default! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T
              :return 'Unit
            .stop-propagation! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} (:prevent-default! |preventDefault) (:stop-propagation! |stopPropagation)
          :schema $ :: 'Trait
        'DomKeyboardEvent $ %{} 'CodeEntry
          :doc "|Keyboard event fields used by Respo key handlers and global keyboard forwarding."
          :code $ quote $ deftrait DomKeyboardEvent (:type 'String) (:key 'String) (:code 'String) (:key-code 'Number) (:ctrl-key 'Bool) (:meta-key 'Bool) (:alt-key 'Bool) (:shift-key 'Bool)
            :target $ :: 'JsNullish 'respo.dom/DomElement
            .prevent-default! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T
              :return 'Unit
            .stop-propagation! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} (:alt-key |altKey) (:ctrl-key |ctrlKey) (:key-code |keyCode) (:meta-key |metaKey) (:prevent-default! |preventDefault) (:shift-key |shiftKey) (:stop-propagation! |stopPropagation)
          :schema $ :: 'Trait
        'DomStorage $ %{} 'CodeEntry
          :doc "|Browser storage capability used by Respo persistence. Nullish reads model absent keys."
          :code $ quote $ deftrait DomStorage
            .get-item $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String
              :return $ :: 'JsNullish 'String
            .set-item! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String 'String
              :return 'Unit
            .remove-item! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String
              :return 'Unit
            .clear! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} (:clear! |clear) (:get-item |getItem) (:remove-item! |removeItem) (:set-item! |setItem)
          :schema $ :: 'Trait
        'DomTextMetrics $ %{} 'CodeEntry
          :doc "|Canvas text measurement result used by Respo; width is the required stable field."
          :code $ quote $ deftrait DomTextMetrics (:width 'Number)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'DomWindow $ %{} 'CodeEntry
          :doc "|Window APIs used by Respo, including storage, timers, unload hooks, and global listeners."
          :code $ quote $ deftrait DomWindow (:document 'respo.dom/DomDocument) (:local-storage 'respo.dom/DomStorage) (:on-before-unload 'Fn) (:devtools-formatters 'Dynamic)
            .add-event-listener! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String 'Fn
              :return 'Unit
            .remove-event-listener! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String 'Fn
              :return 'Unit
            .set-timeout $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'Fn 'Number
              :return 'Dynamic
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} (:add-event-listener! |addEventListener) (:devtools-formatters |devtoolsFormatters) (:local-storage |localStorage) (:on-before-unload |onbeforeunload) (:remove-event-listener! |removeEventListener) (:set-timeout |setTimeout)
          :schema $ :: 'Trait
        'set-inner-html! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn set-inner-html! (style-el content) (set! style-el.:inner-html content) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.dom
    'respo.ffi.browser $ %{} 'FileEntry
      :defs $ {}
        'host-element $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn host-element (element) (unsafe-coerce element 'js-ffi.browser/DomElementHost)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'js-ffi.browser/DomElementHost)
            :args $ [] 'T
            :features $ #{} :js-ffi
            :generics $ [] 'T
            :where $ {} $ 'T 'DomElement
        'narrow-element $ %{} 'CodeEntry
          :doc "|Narrow the generic js-ffi DOM host to Respo's richer renderer DOM trait at the sole cross-library object boundary."
          :code $ quote $ defn narrow-element (host-element) (unsafe-coerce host-element 'respo.dom/DomElement)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ [] 'js-ffi.browser/DomElementHost
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.ffi.browser
    'respo.main $ %{} 'FileEntry
      :defs $ {}
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            match (browser/storage-get |respo.calcit)
              (:none) &unit
              (:some raw)
                let
                    decoded $ parse-cirru-edn raw
                  when
                    not $ list? decoded
                    raise |[Respo/main!]-expected-saved-tasks-as-a-list
                  let
                      tasks $ unsafe-coerce decoded $ :: 'List 'Dynamic
                      restored $ respo.app.task/normalize-tasks tasks
                    reset! *store $ assoc @*store :tasks restored
            render-app! mount-target
            browser/add-event-listener! |keydown $ fn (raw-event)
              let
                  event $ unsafe-coerce raw-event 'respo.dom/DomKeyboardEvent
                  event-tuple $ :: :keydown $ {}
                    :key $ event.:key
                    :ctrl $ event.:ctrl-key
                    :shift $ event.:shift-key
                    :alt $ event.:alt-key
                    :meta $ event.:meta-key
                send-to-component! event-tuple
            watch-render!
              fn () $ render-app! mount-target
              %:: Option :none
            println |Loaded.
            browser/set-before-unload! $ fn (_event) (save-store!)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry
          :doc "|Default DOM element selector (.app) for mounting the application."
          :code $ quote $ def mount-target (query-mount-target)
          :examples $ []
          :schema $ :: 'JsNullish 'respo.dom/DomElement
        'query-mount-target $ %{} 'CodeEntry
          :doc "|Queries the default mount element behind an explicit JavaScript FFI function so mount-target remains an optional value."
          :code $ quote $ defn query-mount-target ()
            match (browser/query-selector |.app)
              (:none) nil
              (:some host-element) (narrow-element host-element)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :features $ #{} :js-ffi
            :return $ :: 'JsNullish 'respo.dom/DomElement
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (calcit.core/remove-watch! *store :rerender) (clear-cache!) (render-app! mount-target)
                watch-render!
                  fn () $ render-app! mount-target
                  %:: Option :none
                hud! |ok~ |Ok
                js/console.log "|code updated."
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'save-store! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn save-store! ()
            let
                store @*store
              browser/storage-set! |respo.calcit $ format-cirru-edn $ :tasks store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.main
          :require
            respo.core :refer $ *changes-logger clear-cache!
            respo.app.core :refer $ render-app! *store
            respo.app.core :refer $ handle-ssr!
            |./calcit.build-errors.mjs :default build-errors
            |bottom-tip :default hud!
            respo.controller.client :refer $ send-to-component!
            respo.app.schema :refer $ Op Task
            respo.app.task :refer $ normalize-task
            js-ffi.browser :as browser
            respo.ffi.browser :refer $ narrow-element
            respo.app.scheduler :refer $ watch-render!
    'respo.memo $ %{} 'FileEntry
      :defs $ {}
        '*component-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *component-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'respo.memo/MemoCacheKey 'respo.memo/MemoEntry
        '*frame-component-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *frame-component-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'respo.memo/MemoCacheKey 'respo.memo/MemoEntry
        '*memo-dependency-stack $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *memo-dependency-stack ([])
          :examples $ []
          :schema $ :: 'Ref $ :: 'List (:: 'Set 'respo.memo/MemoCacheKey)
        '*memo-frame-active? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *memo-frame-active? false
          :examples $ []
          :schema $ :: 'Ref 'Bool
        'MemoCacheKey $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct MemoCacheKey (:callback 'Fn) (:key 'Dynamic)
          :examples $ []
          :schema $ :: 'StructDef
        'MemoEntry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct MemoEntry
            :args $ :: 'List 'Dynamic
            :value 'Dynamic
            :children $ :: 'Set 'respo.memo/MemoCacheKey
          :examples $ []
          :schema $ :: 'StructDef
        'abort-memo-frame! $ %{} 'CodeEntry (:doc "|丢弃失败渲染帧的临时条目和依赖栈，保留上一次成功提交的缓存。")
          :code $ quote $ defn abort-memo-frame! () (reset! *memo-frame-active? false)
            reset! *frame-component-caches $ {}
            reset! *memo-dependency-stack $ []
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
          :tags $ #{} :internal
          :tests $ [] $ %{} 'TestEntry (:name |discards-only-failed-frame)
            :code $ quote $ let
                calls $ atom 0
                derive $ fn (value) (swap! calls inc) value
              reset-component-caches!
              begin-memo-frame!
              memo-value-by :committed derive 1
              finish-memo-frame!
              begin-memo-frame!
              memo-value-by :partial derive 2
              abort-memo-frame!
              assert= false @*memo-frame-active?
              assert= ({}) @*frame-component-caches
              assert= ([]) @*memo-dependency-stack
              assert= 1 $ component-cache-size
              memo-value-by :committed derive 1
              memo-value-by :partial derive 2
              assert= 4 @calls
              begin-memo-frame!
              memo-value-by :committed derive 1
              assert= 4 @calls
              memo-value-by :partial derive 2
              assert= 5 @calls
              finish-memo-frame!
              assert= 2 $ component-cache-size
              reset-component-caches!
            :tags $ #{} :unit
        'begin-memo-frame! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn begin-memo-frame! ()
            reset! *frame-component-caches $ {}
            reset! *memo-frame-active? true
            reset! *memo-dependency-stack $ []
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'call-component $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-component (f args)
            let
                value $ call-value f args
              when
                not $ component? value
                raise "|[Respo/memo-comp-by] component function must return respo.schema/Component"
              , value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Fn $ :: 'List 'Dynamic
        'call-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-value (f args)
            when
              not $ fn? f
              raise "|[Respo/memo] expected a memo callback function"
            f & args
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic $ :: 'List 'Dynamic
          :tags $ #{} :internal
        'component-cache-size $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn component-cache-size () (count @*component-caches)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ []
        'compute-memo-entry $ %{} 'CodeEntry
          :doc "|内部 memo 未命中计算器。记录直接嵌套的 memo key，并在回调成功或抛错后恢复依赖栈。"
          :code $ quote $ defn compute-memo-entry (f args)
            let
                previous-stack @*memo-dependency-stack
              swap! *memo-dependency-stack conj $ assert-type (#{}) (:: Set MemoCacheKey)
              let
                  value $ try (call-value f args)
                    fn (error) (reset! *memo-dependency-stack previous-stack) (raise error)
                  children $ assert-type (&list:last @*memo-dependency-stack) (:: Set MemoCacheKey)
                reset! *memo-dependency-stack previous-stack
                %{} MemoEntry (:args args) (:value value) (:children children)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.memo/MemoEntry)
            :args $ [] 'Fn $ :: 'List 'A
            :generics $ [] 'A
          :tags $ #{} :internal
        'finish-memo-frame! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn finish-memo-frame! ()
            when @*memo-frame-active? $ reset! *component-caches @*frame-component-caches
            reset! *memo-frame-active? false
            reset! *frame-component-caches $ {}
            reset! *memo-dependency-stack $ []
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'memo-comp-by $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn memo-comp-by (key f & args)
            let
                value $ memo-value-by key f & args
              when
                not $ component? value
                raise "|[Respo/memo-comp-by] component function must return respo.schema/Component"
              , value
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Fn
          :tests $ [] $ %{} 'TestEntry (:name |caches-only-valid-components)
            :code $ quote $ let
                calls $ atom 0
                build $ fn (value) (swap! calls inc)
                  %{} respo.schema/Component
                    :name $ turn-tag $ str |counted- value
                    :effects $ []
                    :listeners $ []
                    :tree $ %none
              reset-component-caches!
              begin-memo-frame!
              let
                  first-comp $ memo-comp-by :same build 1
                  second-comp $ memo-comp-by :same build 1
                  changed-comp $ memo-comp-by :same build 2
                assert |same-component-is-reused $ identical? first-comp second-comp
                assert |changed-args-produce-new-component $ not $ identical? second-comp changed-comp
                assert |component-builder-runs-only-on-miss $ = 2 @calls
              finish-memo-frame!
              assert |one-key-remains-cached $ = 1 $ component-cache-size
              reset-component-caches!
            :tags $ #{} :unit
        'memo-entry-args $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn memo-entry-args (entry)
            :args $ assert-type entry respo.memo/MemoEntry
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.memo/MemoEntry
            :return $ :: 'List 'Dynamic
        'memo-entry-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn memo-entry-value (entry)
            :value $ assert-type entry respo.memo/MemoEntry
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'respo.memo/MemoEntry
        'memo-value-by $ %{} 'CodeEntry
          :doc "|在受管理的渲染帧中，按回调、key 和完整参数列表的深度相等关系缓存不可变值。外层命中时递归保留已记录的嵌套依赖，未命中时替换依赖集合。nil key 或非活跃帧直接计算，不读取或增加缓存。"
          :code $ quote $ defn memo-value-by (key f & args)
            if
              or (nil? key) (not @*memo-frame-active?)
              call-value f args
              let
                  cache-key $ %{} MemoCacheKey (:callback f) (:key key)
                record-memo-child! cache-key
                let
                    frame-entry-option $ get @*frame-component-caches cache-key
                    entry-option $ match frame-entry-option
                      (:none) (get @*component-caches cache-key)
                      (:some entry) (Option :some entry)
                    hit? $ match entry-option
                      (:none) false
                      (:some entry)
                        &= args $ memo-entry-args entry
                    resolved-entry $ if hit?
                      match entry-option
                        (:none) (raise |missing-memo-entry)
                        (:some entry) entry
                      compute-memo-entry f args
                  swap! *frame-component-caches assoc cache-key resolved-entry
                  when hit? $ retain-memo-children! resolved-entry
                  memo-entry-value resolved-entry
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'Dynamic)
            :args $ [] 'Dynamic 'Fn
          :tests $ []
            %{} 'TestEntry (:name |caches-values-and-prunes-frames)
              :code $ quote $ let
                  calls $ atom 0
                  derive $ fn (value) (swap! calls inc)
                    {} $ :value value
                reset-component-caches!
                begin-memo-frame!
                let
                    first-value $ memo-value-by :same derive 1
                    second-value $ memo-value-by :same derive 1
                    changed-value $ memo-value-by :same derive 2
                  assert |same-key-and-args-reuse-identity $ identical? first-value second-value
                  assert |changed-args-recompute $ not $ identical? second-value changed-value
                  assert |changed-value-is-returned $ &=
                    {} $ :value 2
                    , changed-value
                  assert |only-misses-call-the-function $ = 2 @calls
                finish-memo-frame!
                reset-component-caches!
                reset! calls 0
                begin-memo-frame!
                memo-value-by nil derive 1
                memo-value-by nil derive 1
                finish-memo-frame!
                assert |nil-key-bypasses-cache $ = 2 @calls
                assert |nil-key-is-not-retained $ = 0 $ component-cache-size
                reset-component-caches!
                begin-memo-frame!
                memo-value-by :a derive 1
                memo-value-by :b derive 2
                finish-memo-frame!
                assert |first-frame-retains-two-keys $ = 2 $ component-cache-size
                begin-memo-frame!
                memo-value-by :b derive 2
                finish-memo-frame!
                assert |inactive-key-is-pruned $ = 1 $ component-cache-size
                reset-component-caches!
              :tags $ #{} :unit
            %{} 'TestEntry (:name |nested-hits-retain-transitive-children)
              :code $ quote $ let
                  inner-calls $ atom 0
                  outer-calls $ atom 0
                  inner $ fn (value) (swap! inner-calls inc)
                    {} $ :value value
                  middle $ fn (value) (memo-value-by :inner inner value)
                  outer $ fn (version) (swap! outer-calls inc) (memo-value-by :middle middle 7)
                reset-component-caches!
                begin-memo-frame!
                memo-value-by :outer outer 0
                finish-memo-frame!
                &doseq
                  frame $ range 4
                  begin-memo-frame!
                  memo-value-by :outer outer 0
                  finish-memo-frame!
                  assert= 3 $ component-cache-size
                begin-memo-frame!
                memo-value-by :outer outer 1
                finish-memo-frame!
                assert= 2 @outer-calls
                assert= 1 @inner-calls
                begin-memo-frame!
                finish-memo-frame!
                assert= 0 $ component-cache-size
                reset-component-caches!
              :tags $ #{} :unit
            %{} 'TestEntry (:name |outside-frames-do-not-grow-cache)
              :code $ quote $ let
                  calls $ atom 0
                  derive $ fn (value) (swap! calls inc)
                    {} $ :value value
                reset-component-caches!
                &doseq
                  key $ range 40
                  memo-value-by key derive key
                assert= 40 @calls
                assert= 0 $ component-cache-size
                begin-memo-frame!
                memo-value-by :existing derive 1
                finish-memo-frame!
                memo-value-by :existing derive 1
                assert= 42 @calls
                assert= 1 $ component-cache-size
                begin-memo-frame!
                memo-value-by :existing derive 1
                finish-memo-frame!
                assert= 42 @calls
                reset-component-caches!
              :tags $ #{} :unit
            %{} 'TestEntry (:name |changed-parent-prunes-removed-dependencies)
              :code $ quote $ let
                  inner $ fn (value) value
                  outer $ fn (visible?)
                    if visible? (memo-value-by :inner inner 1) 0
                reset-component-caches!
                begin-memo-frame!
                memo-value-by :outer outer true
                finish-memo-frame!
                assert= 2 $ component-cache-size
                begin-memo-frame!
                memo-value-by :outer outer false
                finish-memo-frame!
                assert= 1 $ component-cache-size
                begin-memo-frame!
                memo-value-by :outer outer false
                finish-memo-frame!
                assert= 1 $ component-cache-size
                reset-component-caches!
              :tags $ #{} :unit
            %{} 'TestEntry (:name |failed-callback-restores-dependency-stack)
              :code $ quote $ let
                  bad $ fn () $ raise |memo-failure
                  good $ fn (value) value
                reset-component-caches!
                begin-memo-frame!
                try (memo-value-by :bad bad)
                  fn (error) (assert= |memo-failure error)
                assert= ([]) @*memo-dependency-stack
                memo-value-by :good good 1
                finish-memo-frame!
                assert= 1 $ component-cache-size
                begin-memo-frame!
                memo-value-by :good good 1
                finish-memo-frame!
                assert= 1 $ component-cache-size
                reset-component-caches!
              :tags $ #{} :unit
            %{} 'TestEntry (:name |parent-hit-keeps-current-frame-child)
              :code $ quote $ let
                  calls $ atom 0
                  child $ fn (value) (swap! calls inc) value
                  outer $ fn () $ memo-value-by :child child 1
                reset-component-caches!
                begin-memo-frame!
                memo-value-by :outer outer
                finish-memo-frame!
                begin-memo-frame!
                memo-value-by :child child 2
                memo-value-by :outer outer
                finish-memo-frame!
                assert= 2 @calls
                begin-memo-frame!
                assert= 2 $ memo-value-by :child child 2
                finish-memo-frame!
                assert= 2 @calls
                reset-component-caches!
              :tags $ #{} :unit
        'record-memo-child! $ %{} 'CodeEntry (:doc "|内部依赖记录器，将带 key 的 memo 调用加入当前最内层正在计算的回调依赖中。")
          :code $ quote $ defn record-memo-child! (cache-key)
            when
              not $ empty? @*memo-dependency-stack
              let
                  index $ dec $ count @*memo-dependency-stack
                  children $ assert-type (&list:nth @*memo-dependency-stack index) (:: Set MemoCacheKey)
                reset! *memo-dependency-stack $ assoc @*memo-dependency-stack index $ include children cache-key
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.memo/MemoCacheKey
          :tags $ #{} :internal
        'reset-component-caches! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reset-component-caches! ()
            reset! *component-caches $ {}
            reset! *frame-component-caches $ {}
            reset! *memo-frame-active? false
            reset! *memo-dependency-stack $ []
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
          :tests $ [] $ %{} 'TestEntry (:name |unit-memo-lifecycle)
            :code $ quote $ let
                callback $ fn () 1
                key $ MemoCacheKey :callback callback :key :unit-contract
              assert= &unit $ reset-component-caches!
              assert= 0 $ component-cache-size
              assert= false @*memo-frame-active?
              assert= ([]) @*memo-dependency-stack
              assert= &unit $ record-memo-child! key
              assert= ([]) @*memo-dependency-stack
              assert= &unit $ begin-memo-frame!
              reset! *memo-dependency-stack $ [] $ #{}
              assert= &unit $ record-memo-child! key
              assert=
                [] $ #{} key
                , @*memo-dependency-stack
              assert= &unit $ abort-memo-frame!
              assert= false @*memo-frame-active?
              assert= ([]) @*memo-dependency-stack
              assert= &unit $ begin-memo-frame!
              assert= &unit $ finish-memo-frame!
              assert= false @*memo-frame-active?
              assert= ([]) @*memo-dependency-stack
              assert= &unit $ reset-component-caches!
            :tags $ #{} :ref-write :unit
        'retain-memo-children! $ %{} 'CodeEntry
          :doc "|内部缓存命中依赖遍历。递归提升旧缓存中的子条目，优先保留当前帧已计算的条目；已访问 key 阻止共享路径和依赖环的重复处理。"
          :code $ quote $ defn retain-memo-children! (entry)
            &doseq
              key $ :children entry
              let
                  child-key $ assert-type key MemoCacheKey
                when
                  not $ contains? @*frame-component-caches child-key
                  match (get @*component-caches child-key)
                    (:none) &unit
                    (:some child)
                      do (swap! *frame-component-caches assoc child-key child) (retain-memo-children! child)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.memo/MemoEntry
          :tags $ #{} :internal
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.memo
          :require $ respo.util.detect :refer $ component?
    'respo.render.diff $ %{} 'FileEntry
      :defs $ {}
        'append-key-bucket! $ %{} 'CodeEntry
          :doc "|Append a typed Number index to a native Array bucket in the private JS Map, preserving representative order. The host operation explicitly returns undefined/Calcit Unit."
          :code $ quote $ defn append-key-bucket! (buckets key-hash index) (raise |JS-only-key-bucket-write)
          :examples $ []
          :ffi $ {} (:target :browser)
            :js $ {} $ :inline "|(buckets, keyHash, index) => { const positions = buckets.get(keyHash); if (positions === undefined) buckets.set(keyHash, [index]); else positions.push(index); }"
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'JsObject 'Number 'Number
            :features $ #{} :js-ffi
          :tags $ #{} :internal
        'collect-event-refreshing $ %{} 'CodeEntry
          :doc "|Reattach live events with the current virtual and DOM coordinates after a component/element switch. Traverses shared descendants even when the normal diff skips identical subtrees. Ordinary diffing still handles removed events and lifecycle changes."
          :code $ quote $ defn collect-event-refreshing (collect! coord n-coord tree)
            if
              or (component? tree) (element? tree)
              collect-event-refreshing-node collect! coord n-coord $ respo.util.detect/as-render-node tree
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              :: 'List 'K
              :: 'List 'Number
              , 'Struct
            :generics $ [] 'K
          :tests $ [] $ %{} 'TestEntry (:name |skips-nil-children-and-handlers)
            :code $ quote $ let
                ops $ atom $ []
                collect! $ fn (op) (respo.core/append-dynamic! ops op)
                leaf $ %{} respo.schema/Element (:name :span)
                  :coord $ Option :none
                  :attrs $ []
                  :style $ []
                  :ref nil
                  :children $ []
                  :event $ {}
                    :click $ fn (_event _d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Dynamic
                            :return 'Unit
                        :return 'Unit
                      , &unit
                    :focus nil
                wrapped $ respo.schema/Component :name :inner :effects ([]) :listeners ([]) :tree $ Option :some (respo.util.detect/as-render-node leaf)
                root $ %{} respo.schema/Element (:name :div)
                  :coord $ Option :none
                  :attrs $ []
                  :style $ []
                  :ref nil
                  :event $ {}
                  :children $ [] (respo.util.detect/make-child-pair :empty nil) (respo.util.detect/make-child-pair :live wrapped)
              collect-event-refreshing collect! ([] :app) ([]) root
              assert=
                [] $ DomPatch :set-event ([] :app :live :inner) ([] 0) :click
                , @ops
            :tags $ #{} :unit
        'collect-event-refreshing-node $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn collect-event-refreshing-node (collect! coord n-coord tree)
            match tree
              (:component tree)
                match (:tree tree)
                  (:none) &unit
                  (:some child-tree)
                    collect-event-refreshing-node collect!
                      append coord $ :name tree
                      , n-coord child-tree
              (:element tree)
                do
                  &doseq
                    event-name $ keys-non-nil $ :event tree
                    collect! $ DomPatch :set-event coord n-coord event-name
                  loop
                      children $ :children tree
                      idx 0
                    hint-fn $ {}
                      :args $ [] (:: 'List 'respo.schema/ChildPair) 'Number
                      :return 'Unit
                    if (empty? children) &unit $ let
                        pair $ &list:nth children 0
                        k $ :key pair
                        child $ :node pair
                      when (option:some? child)
                        collect-event-refreshing-node collect! (append coord k) (append n-coord idx) (option:unwrap child)
                      recur (&list:rest children)
                        if (option:some? child) (inc idx) idx
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              :: 'List 'K
              :: 'List 'Number
              , 'respo.schema/RenderNode
            :generics $ [] 'K
        'detect-keys-dup $ %{} 'CodeEntry
          :doc "|Checks for duplicate keys in a list of children. Useful for development mode warnings."
          :code $ quote $ defn detect-keys-dup (child-keys)
            match (first-duplicate-key child-keys)
              (:none) false
              (:some key)
                do (eprintln "|duplicated key" key) true
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] $ :: 'List 'Dynamic
        'find-children-diffs $ %{} 'CodeEntry
          :doc "|Reconcile whole keyed lists with common prefix/suffix trimming and an LIS over retained source positions. Update retained children before structural edits; remove missing nodes in descending order, append new nodes, and then move from right to left using stable node snapshots. Moves preserve DOM identity and component mount/unmount lifecycle."
          :code $ quote $ defn find-children-diffs (collect! coord n-coord index old-pairs-input new-pairs-input)
            let
                old-children $ filter old-pairs-input $ fn (pair)
                  hint-fn $ {}
                    :args $ [] 'respo.schema/ChildPair
                    :return 'Bool
                  option:some? $ :node pair
                new-children $ filter new-pairs-input $ fn (pair)
                  hint-fn $ {}
                    :args $ [] 'respo.schema/ChildPair
                    :return 'Bool
                  option:some? $ :node pair
              if
                =
                  map old-children $ fn (pair)
                    hint-fn $ {}
                      :args $ [] 'respo.schema/ChildPair
                      :return 'Dynamic
                    :key pair
                  map new-children $ fn (pair)
                    hint-fn $ {}
                      :args $ [] 'respo.schema/ChildPair
                      :return 'Dynamic
                    :key pair
                loop
                    old-pairs old-children
                    new-pairs new-children
                    position index
                  hint-fn $ {}
                    :args $ [] (:: 'List 'respo.schema/ChildPair) (:: 'List 'respo.schema/ChildPair) 'Number
                    :return 'Unit
                  list-match old-pairs
                    () &unit
                    (old-pair rest-old)
                      let
                          new-pair $ &list:nth new-pairs 0
                          key $ :key old-pair
                        find-render-node-diffs collect! (append coord key) (append n-coord position) (:node old-pair) (:node new-pair)
                        recur rest-old (&list:rest new-pairs) (inc position)
                match
                  keyed-rotation
                    map old-children $ fn (pair)
                      hint-fn $ {}
                        :args $ [] 'respo.schema/ChildPair
                        :return 'Dynamic
                      :key pair
                    map new-children $ fn (pair)
                      hint-fn $ {}
                        :args $ [] 'respo.schema/ChildPair
                        :return 'Dynamic
                      :key pair
                  (:none)
                    let
                        full-old-keys $ map old-children $ fn (pair)
                          hint-fn $ {}
                            :args $ [] 'respo.schema/ChildPair
                            :return 'Dynamic
                          :key pair
                        full-new-keys $ map new-children $ fn (pair)
                          hint-fn $ {}
                            :args $ [] 'respo.schema/ChildPair
                            :return 'Dynamic
                          :key pair
                        boundaries $ keyed-boundaries full-old-keys full-new-keys
                        prefix $ &list:nth boundaries 0
                        suffix $ &list:nth boundaries 1
                        middle-old-children $ slice old-children prefix $ - (count old-children) suffix
                        middle-new-children $ slice new-children prefix $ - (count new-children) suffix
                        suffix-keys $ slice full-old-keys $ - (count full-old-keys) suffix
                        index-offset $ + index prefix
                      &doseq
                        position $ range prefix
                        find-render-node-diffs collect!
                          append coord $ &list:nth full-old-keys position
                          append n-coord $ + index position
                          :node $ &list:nth old-children position
                          :node $ &list:nth new-children position
                      &doseq
                        position $ range suffix
                        let
                            old-position $ +
                              - (count old-children) suffix
                              , position
                            new-position $ +
                              - (count new-children) suffix
                              , position
                          find-render-node-diffs collect!
                            append coord $ &list:nth full-old-keys old-position
                            append n-coord $ + index old-position
                            :node $ &list:nth old-children old-position
                            :node $ &list:nth new-children new-position
                      let
                          old-keys $ map middle-old-children $ fn (pair)
                            hint-fn $ {}
                              :args $ [] 'respo.schema/ChildPair
                              :return 'Dynamic
                            :key pair
                          new-keys $ map middle-new-children $ fn (pair)
                            hint-fn $ {}
                              :args $ [] 'respo.schema/ChildPair
                              :return 'Dynamic
                            :key pair
                          old-index $ keyed-index old-keys
                          new-index $ keyed-index new-keys
                          retained-keys $ filter old-keys $ fn (key) (contains? new-index key)
                          added-keys $ filter new-keys $ fn (key)
                            not $ contains? old-index key
                          source-index $ keyed-index $ concat (concat retained-keys suffix-keys) added-keys
                          source-order $ map new-keys $ fn (key)
                            assert-type (&map:get source-index key) 'Number
                          kept $ lis-values $ if (> suffix 0)
                            filter source-order $ fn (value)
                              < value $ count retained-keys
                            , source-order
                        &doseq (key retained-keys)
                          let
                              old-position $ assert-type (&map:get old-index key) 'Number
                              new-position $ assert-type (&map:get new-index key) 'Number
                            find-render-node-diffs collect! (append coord key)
                              append n-coord $ + index-offset old-position
                              :node $ &list:nth middle-old-children old-position
                              :node $ &list:nth middle-new-children new-position
                        &doseq
                          key $ reverse old-keys
                          when-not (contains? new-index key)
                            let
                                old-position $ assert-type (&map:get old-index key) 'Number
                                child $ option:unwrap $ :node (&list:nth middle-old-children old-position)
                                child-n-coord $ append n-coord $ + index-offset old-position
                              respo.render.effect/collect-unmounting-node collect! (append coord key) child-n-coord child true
                              collect! $ DomPatch :rm-element (append coord key) child-n-coord
                        &doseq (key added-keys)
                          let
                              new-position $ assert-type (&map:get new-index key) 'Number
                              child $ option:unwrap $ :node (&list:nth middle-new-children new-position)
                              child-coord $ append coord key
                            collect! $ DomPatch :append-element child-coord n-coord $ respo.util.detect/render-node-value child
                        loop
                            remaining $ reverse source-order
                            anchor $ if (> suffix 0)
                              %:: Option :some $ count retained-keys
                              %:: Option :none
                          hint-fn $ {} (:return 'Unit)
                            :args $ [] (:: 'List 'Number) (:: 'calcit.core/Option 'Number)
                          list-match remaining
                            () &unit
                            (source rest-sources)
                              when-not (contains? kept source)
                                collect! $ DomPatch :move-element n-coord (+ index-offset source)
                                  option:map anchor $ fn (position) (+ index-offset position)
                              recur rest-sources $ %:: Option :some source
                        &doseq (key added-keys)
                          let
                              new-position $ assert-type (&map:get new-index key) 'Number
                              child $ option:unwrap $ :node (&list:nth middle-new-children new-position)
                              child-coord $ append coord key
                            respo.render.effect/collect-mounting-node collect! child-coord
                              append n-coord $ + index-offset new-position
                              , child true
                  (:some offset)
                    let
                        size $ count old-children
                        sources $ concat (range offset size) (range offset)
                        kept $ .to-set $ if
                          > (- size offset) offset
                          range offset size
                          range offset
                      &doseq
                        position $ range size
                        let
                            old-pair $ &list:nth old-children position
                            new-position $ if (< position offset)
                              + position $ - size offset
                              - position offset
                            new-pair $ &list:nth new-children new-position
                          find-render-node-diffs collect!
                            append coord $ :key old-pair
                            append n-coord $ + index position
                            :node old-pair
                            :node new-pair
                      loop
                          remaining $ reverse sources
                          anchor $ assert-type (%:: Option :none) (:: 'Option 'Number)
                        hint-fn $ {} (:return 'Unit)
                          :args $ [] (:: 'List 'Number) (:: 'calcit.core/Option 'Number)
                        list-match remaining
                          () &unit
                          (source rest-sources)
                            when-not (contains? kept source)
                              collect! $ DomPatch :move-element n-coord (+ index source)
                                option:map anchor $ fn (position) (+ index position)
                            recur rest-sources $ %:: Option :some source
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              :: 'List 'Dynamic
              :: 'List 'Number
              , 'Number (:: 'List 'respo.schema/ChildPair) (:: 'List 'respo.schema/ChildPair)
            :features $ #{} :js-ffi
          :tests $ []
            %{} 'TestEntry (:name |accepts-list-map-representation-transitions)
              :code $ quote $ let
                  child $ %{} respo.schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref nil
                  effects $ atom $ []
                  collect! $ fn (effect) (respo.core/append-dynamic! effects effect)
                  child-list $ [] $ respo.util.detect/make-child-pair :a child
                  same-child-list $ [] $ respo.util.detect/make-child-pair :a child
                find-children-diffs collect! ([]) ([]) 0 child-list same-child-list
                assert |equivalent-keyed-lists-have-no-diff $ empty? @effects
              :tags $ #{} :unit
            %{} 'TestEntry (:name |keeps-dom-coordinates-dense-through-none)
              :code $ quote $ let
                  ops $ atom $ []
                  leaf $ respo.core/span $ {}
                  old-children $ [] (respo.util.detect/make-child-pair :empty nil) (respo.util.detect/make-child-pair :live leaf)
                  new-children $ [] (respo.util.detect/make-child-pair :empty leaf) (respo.util.detect/make-child-pair :live nil)
                find-children-diffs
                  fn (op) (swap! ops append op) &unit
                  [] :parent
                  []
                  , 0 old-children new-children
                assert=
                  []
                    DomPatch :rm-element ([] :parent :live) ([] 0)
                    DomPatch :append-element ([] :parent :empty) ([]) leaf
                  deref ops
              :tags $ #{} :unit
        'find-element-diffs $ %{} 'CodeEntry
          :doc "|Internal diff algorithm for comparing old and new virtual DOM trees.\n\nIt collects patch operations via `collect!`, handling components, plain elements, styles, events, keyed children, and effect lifecycle transitions."
          :code $ quote $ defn find-element-diffs (collect! coord n-coord old-tree new-tree)
            cond
                identical? old-tree new-tree
                , &unit
              (and (or (nil? old-tree) (component? old-tree) (element? old-tree)) (or (nil? new-tree) (component? new-tree) (element? new-tree)))
                find-render-node-diffs collect! coord n-coord
                  if (nil? old-tree) (Option :none)
                    Option :some $ respo.util.detect/as-render-node old-tree
                  if (nil? new-tree) (Option :none)
                    Option :some $ respo.util.detect/as-render-node new-tree
              true $ js/console.warn "|Diffing unknown params" old-tree new-tree
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              :: 'List 'Dynamic
              :: 'List 'Number
              , 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
          :tests $ []
            %{} 'TestEntry (:name |clears-old-ref-before-setting-new-ref)
              :code $ quote $ let
                  log $ atom $ []
                  ops $ atom $ []
                  old-ref! $ fn (target)
                    hint-fn $ {}
                      :args $ [] $ :: 'JsNullish 'respo.dom/DomElement
                      :return 'Unit
                    respo.core/append-dynamic! log $ [] :old target
                  new-ref! $ fn (target)
                    hint-fn $ {}
                      :args $ [] $ :: 'JsNullish 'respo.dom/DomElement
                      :return 'Unit
                    respo.core/append-dynamic! log $ [] :new target
                  old-element $ %{} respo.schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref old-ref!
                  new-element $ %{} respo.schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref new-ref!
                  collect! $ fn (op) (respo.core/append-dynamic! ops op)
                find-element-diffs collect! ([]) ([]) old-element new-element
                respo.core/run-effect-ops! @ops :dom-node
                assert |both-ref-actions-run $ &= 2 $ count @log
                assert |old-ref-runs-first $ &= ([] :old nil) (&list:nth @log 0)
              :tags $ #{} :unit
            %{} 'TestEntry (:name |handles-component-element-boundaries-once)
              :code $ quote $ let
                  log $ atom $ []
                  ops $ atom $ []
                  collect! $ fn (op) (respo.core/append-dynamic! ops op)
                  plain $ %{} respo.schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref nil
                  inner $ assoc plain :ref $ fn (target)
                    respo.core/append-dynamic! log $ [] :ref target
                  watch $ %{} respo.schema/Effect (:name :effect-watch)
                    :coord $ []
                    :args $ []
                    :method $ fn (_args params)
                      let[] (action target _at-place?) params $ if (&= action :mount)
                        respo.core/append-dynamic! log $ [] :setup target
                        if (&= action :unmount)
                          respo.core/append-dynamic! log $ [] :cleanup target
                          , &unit
                  wrapped $ %{} respo.schema/Component (:name :boundary)
                    :effects $ [] watch
                    :listeners $ []
                    :tree $ %some $ respo.util.detect/as-render-node inner
                find-element-diffs collect! ([]) ([]) plain wrapped
                respo.core/run-effect-ops! @ops :target
                assert |entering-wrapper-runs-two-actions $ &= 2 $ count @log
                reset! log $ []
                reset! ops $ []
                find-element-diffs collect! ([]) ([]) wrapped plain
                respo.core/run-effect-ops! @ops :target
                assert |leaving-wrapper-runs-two-actions $ &= 2 $ count @log
              :tags $ #{} :unit
            %{} 'TestEntry (:name |handles-none-component-tree-transitions)
              :code $ quote $ let
                  ops $ atom $ []
                  collect! $ fn (op) (respo.core/append-dynamic! ops op)
                  inner $ %{} respo.schema/Element (:name :span)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref nil
                  plain $ assoc inner :name :div
                  empty-old $ %{} respo.schema/Component (:name :same)
                    :effects $ []
                    :listeners $ []
                    :tree $ %none
                  empty-new $ %{} respo.schema/Component (:name :same)
                    :effects $ []
                    :listeners $ []
                    :tree $ %none
                  rendered $ %{} respo.schema/Component (:name :same)
                    :effects $ []
                    :listeners $ []
                    :tree $ %some $ respo.util.detect/as-render-node inner
                find-element-diffs collect! ([]) ([]) empty-old empty-new
                assert |none-to-none-does-not-touch-dom $ empty? @ops
                find-element-diffs collect! ([]) ([]) empty-old rendered
                find-element-diffs collect! ([]) ([]) rendered empty-new
                find-element-diffs collect! ([]) ([]) empty-old plain
                find-element-diffs collect! ([]) ([]) plain empty-new
                assert |all-four-transitions-produce-patches $ = 4 $ count @ops
              :tags $ #{} :unit
            %{} 'TestEntry (:name |identical-tree-produces-no-patches)
              :code $ quote $ let
                  ops $ atom $ []
                  collect! $ fn (op) (respo.core/append-dynamic! ops op)
                  tree $ %{} respo.schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ [] $ [] :inner-text |same
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref nil
                find-element-diffs collect! ([]) ([]) tree tree
                assert |identical-tree-emits-no-dom-mutation $ empty? @ops
              :tags $ #{} :unit
        'find-props-diffs $ %{} 'CodeEntry
          :doc "|Compares old and new sorted property lists to identify additions, removals, and updates."
          :code $ quote $ defn find-props-diffs (collect! coord n-coord old-props new-props)
            let
                was-empty? $ empty? old-props
                now-empty? $ empty? new-props
              cond
                  and was-empty? now-empty?
                  , &unit
                (and was-empty? (not now-empty?))
                  let
                      new-pair $ respo.util.list/first-pair new-props
                      new-k $ respo.util.list/pair-tag-key new-pair
                      new-v $ respo.util.list/pair-value new-pair
                    collect! $ DomPatch :add-prop coord n-coord new-k new-v
                    recur collect! coord n-coord old-props $ &list:rest new-props
                (and (not was-empty?) now-empty?)
                  let
                      old-pair $ respo.util.list/first-pair old-props
                      old-k $ respo.util.list/pair-tag-key old-pair
                    collect! $ DomPatch :rm-prop coord n-coord old-k
                    recur collect! coord n-coord (&list:rest old-props) new-props
                true $ let
                    old-pair $ respo.util.list/first-pair old-props
                    new-pair $ respo.util.list/first-pair new-props
                    old-k $ respo.util.list/pair-tag-key old-pair
                    old-v $ respo.util.list/pair-value old-pair
                    new-k $ respo.util.list/pair-tag-key new-pair
                    new-v $ respo.util.list/pair-value new-pair
                    old-follows $ &list:rest old-props
                    new-follows $ &list:rest new-props
                  match (&compare old-k new-k)
                    -1 $ do
                      collect! $ DomPatch :rm-prop coord n-coord old-k
                      recur collect! coord n-coord old-follows new-props
                    1 $ do
                      collect! $ DomPatch :add-prop coord n-coord new-k new-v
                      recur collect! coord n-coord old-props new-follows
                    0 $ do
                      if
                        not $ &= old-v new-v
                        collect! $ DomPatch :replace-prop coord n-coord new-k new-v
                      recur collect! coord n-coord old-follows new-follows
                    _ $ &let
                      _logged $ eprintln |[Respo]-unknown-compare-result-for-props-keys
                      , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              :: 'List 'Dynamic
              :: 'List 'Number
              :: 'List $ :: 'List 'Dynamic
              :: 'List $ :: 'List 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |reports-property-changes)
            :code $ quote $ let
                effects $ atom $ []
                collect! $ fn (effect) (respo.core/append-dynamic! effects effect)
              find-props-diffs collect! ([]) ([])
                [] $ [] :class-name |old
                [] $ [] :class-name |new
              assert |one-replacement-is-produced $ = 1 $ count @effects
            :tags $ #{} :unit
        'find-render-node-diffs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn find-render-node-diffs (collect! coord n-coord old-option new-option)
            match old-option
              (:none)
                match new-option
                  (:none) &unit
                  (:some new-node)
                    do
                      collect! $ DomPatch :add-element coord n-coord $ respo.util.detect/render-node-value new-node
                      respo.render.effect/collect-mounting-node collect! coord n-coord new-node true
              (:some old-node)
                match new-option
                  (:none)
                    do (respo.render.effect/collect-unmounting-node collect! coord n-coord old-node true)
                      collect! $ DomPatch :rm-element coord n-coord
                  (:some new-node)
                    match old-node
                      (:component old-tree)
                        match new-node
                          (:component new-tree)
                            if (identical? old-tree new-tree) &unit $ let
                                next-coord $ append coord $ :name new-tree
                              if
                                = (:name old-tree) (:name new-tree)
                                do (collect-updating collect! :before-update coord n-coord old-tree new-tree)
                                  find-render-node-diffs collect! next-coord n-coord (:tree old-tree) (:tree new-tree)
                                  collect-updating collect! :update coord n-coord old-tree new-tree
                                do (respo.render.effect/collect-unmounting-node collect! coord n-coord old-node true)
                                  collect! $ DomPatch :replace-element coord n-coord new-tree
                                  respo.render.effect/collect-mounting-node collect! coord n-coord new-node true
                          (:element new-tree)
                            do (collect-own-unmounting collect! coord n-coord old-tree true)
                              match (:tree old-tree)
                                (:none)
                                  find-render-node-diffs collect! coord n-coord (Option :none) (Option :some new-node)
                                (:some old-child-tree)
                                  do
                                    find-render-node-diffs collect! coord n-coord (Option :some old-child-tree) (Option :some new-node)
                                    collect-event-refreshing-node collect! coord n-coord new-node
                      (:element old-tree)
                        match new-node
                          (:component new-tree)
                            let
                                new-coord $ append coord $ :name new-tree
                              match (:tree new-tree)
                                (:none)
                                  find-render-node-diffs collect! new-coord n-coord (Option :some old-node) (Option :none)
                                (:some new-child-tree)
                                  do
                                    find-render-node-diffs collect! new-coord n-coord (Option :some old-node) (Option :some new-child-tree)
                                    collect-event-refreshing-node collect! new-coord n-coord new-child-tree
                              collect-own-mounting collect! coord n-coord new-tree true
                          (:element new-tree)
                            if (identical? old-tree new-tree) &unit $ let
                                legacy-nil nil
                              if
                                not= (:name old-tree) (:name new-tree)
                                do (respo.render.effect/collect-unmounting-node collect! coord n-coord old-node true)
                                  collect! $ DomPatch :replace-element coord n-coord new-tree
                                  respo.render.effect/collect-mounting-node collect! coord n-coord new-node true
                                do
                                  find-props-diffs collect! coord n-coord (:attrs old-tree) (:attrs new-tree)
                                  let
                                      old-ref-option $ :ref old-tree
                                      new-ref-option $ :ref new-tree
                                    when (not= old-ref-option new-ref-option)
                                      when (js-present? old-ref-option)
                                        collect! $ DomPatch :effect-before-update coord n-coord $ fn (_target) (old-ref-option legacy-nil)
                                      when (js-present? new-ref-option)
                                        collect! $ DomPatch :effect-update coord n-coord $ fn (target) (new-ref-option target)
                                  let
                                      old-style $ :style old-tree
                                      new-style $ :style new-tree
                                    if (not= old-style new-style) (find-style-diffs collect! coord n-coord old-style new-style)
                                  let
                                      old-events $ keys-non-nil $ :event old-tree
                                      new-events $ keys-non-nil $ :event new-tree
                                    when (not= old-events new-events)
                                      let
                                          added-events $ difference new-events old-events
                                          removed-events $ difference old-events new-events
                                        &doseq (event-name added-events)
                                          collect! $ DomPatch :set-event coord n-coord event-name
                                        &doseq (event-name removed-events)
                                          collect! $ DomPatch :rm-event coord n-coord event-name
                                  let
                                      old-children $ :children old-tree
                                      new-children $ :children new-tree
                                    if
                                      and dev? $ detect-keys-dup $ map new-children
                                        fn (entry)
                                          hint-fn $ {}
                                            :args $ [] 'respo.schema/ChildPair
                                            :return 'Dynamic
                                          :key entry
                                      js/console.error "|Parent that has dups" new-tree
                                    find-children-diffs collect! coord n-coord 0 old-children new-children
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              :: 'List 'CoordKey
              :: 'List 'Number
              :: 'Option 'respo.schema/RenderNode
              :: 'Option 'respo.schema/RenderNode
            :features $ #{} :js-ffi
            :generics $ [] 'CoordKey
        'find-style-diffs $ %{} 'CodeEntry
          :doc "|Compares two style maps and collects effects for additions, removals, or updates."
          :code $ quote $ defn find-style-diffs (collect! c-coord coord old-style new-style)
            let
                was-empty? $ empty? old-style
                now-empty? $ empty? new-style
              if (identical? old-style new-style) &unit $ cond
                  and was-empty? now-empty?
                  , &unit
                (and was-empty? (not now-empty?))
                  let
                      entry $ respo.util.list/first-pair new-style
                      k $ respo.util.list/pair-tag-key entry
                      v $ respo.util.list/pair-value entry
                      follows $ &list:rest new-style
                    collect! $ DomPatch :add-style c-coord coord k v
                    recur collect! c-coord coord old-style follows
                (and (not was-empty?) now-empty?)
                  let
                      entry $ respo.util.list/first-pair old-style
                      k $ respo.util.list/pair-tag-key entry
                      follows $ &list:rest old-style
                    collect! $ DomPatch :rm-style c-coord coord k
                    recur collect! c-coord coord follows new-style
                true $ let
                    old-entry $ respo.util.list/first-pair old-style
                    new-entry $ respo.util.list/first-pair new-style
                    old-k $ respo.util.list/pair-tag-key old-entry
                    old-v $ respo.util.list/pair-value old-entry
                    new-k $ respo.util.list/pair-tag-key new-entry
                    new-v $ respo.util.list/pair-value new-entry
                    old-follows $ &list:rest old-style
                    new-follows $ &list:rest new-style
                  match (&compare old-k new-k)
                    -1 $ do
                      collect! $ DomPatch :rm-style c-coord coord old-k
                      recur collect! c-coord coord old-follows new-style
                    1 $ do
                      collect! $ DomPatch :add-style c-coord coord new-k new-v
                      recur collect! c-coord coord old-style new-follows
                    0 $ do
                      if
                        not $ identical? old-v new-v
                        collect! $ DomPatch :replace-style c-coord coord new-k new-v
                      recur collect! c-coord coord old-follows new-follows
                    _ $ &let
                      _logged $ eprintln |[Respo]-unknown-compare-result-for-style-keys
                      , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              :: 'List 'Dynamic
              :: 'List 'Number
              :: 'List $ :: 'List 'Dynamic
              :: 'List $ :: 'List 'Dynamic
        'first-duplicate-key $ %{} 'CodeEntry
          :doc "|Find the first original key which occurs more than once, retaining deep Calcit equality and warning selection. Native evaluation uses hash sets; JavaScript uses hash-indexed buckets backed by native Map, with equality checks for collisions. Expected linear work in the number of keys, excluding key hashing/comparison costs and adversarial collisions."
          :code $ quote $ defn first-duplicate-key (child-keys)
            if
              = :js $ &get-calcit-backend
              first-duplicate-key-js child-keys
              first-duplicate-key-native child-keys
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'K
            :features $ #{} :js-ffi
            :generics $ [] 'K
            :return $ :: 'Option 'K
          :tags $ #{} :internal
          :tests $ [] $ %{} 'TestEntry (:name |preserves-warning-order-and-deep-equality)
            :code $ quote $ do
              assert= (%:: Option :none)
                first-duplicate-key $ []
              assert= (%:: Option :none)
                first-duplicate-key $ [] :a
              assert= (%:: Option :none)
                first-duplicate-key $ [] :a :b :c
              assert= (%:: Option :some :a)
                first-duplicate-key $ [] :a :b :b :a
              assert=
                %:: Option :some $ [] 1 2
                first-duplicate-key $ [] ([] 1 2) ([] 3) ([] 1 2)
              assert=
                %:: Option :some $ {} $ :id 1
                first-duplicate-key $ []
                  {} $ :id 1
                  {} $ :id 2
                  {} $ :id 1
            :tags $ #{} :unit
        'first-duplicate-key-js $ %{} 'CodeEntry
          :doc "|JavaScript hash-set adapter backed by native Map. Store representative input indices per Calcit hash, confirm equality inside collision buckets, and remember the earliest original duplicate index."
          :code $ quote $ defn first-duplicate-key-js (child-keys)
            let
                buckets $ new js/Map
                size $ count child-keys
              loop
                  cursor 0
                  duplicate-position $ assert-type (%:: Option :none) (:: 'Option 'Number)
                let
                    index $ assert-type cursor Number
                    first-position $ assert-type duplicate-position $ :: 'Option 'Number
                  if (= index size)
                    match first-position
                      (:none) (%:: Option :none)
                      (:some position)
                        %:: Option :some $ &list:nth child-keys position
                    let
                        key $ &list:nth child-keys index
                        key-hash $ &hash key
                        previous $ let
                            value $ key-bucket-positions buckets key-hash
                          if (js-nullish? value) (Option :none)
                            Option :some $ decode-map-as (to-calcit-data value) (:: 'List 'Number)
                        matched $ match previous
                          (:none) (%:: Option :none)
                          (:some positions) (index-of-equal-key child-keys positions key)
                        next-position $ match matched
                          (:none) first-position
                          (:some position)
                            match first-position
                              (:none) (%:: Option :some position)
                              (:some first-index)
                                %:: Option :some $ &min first-index position
                      match matched
                        (:some _) &unit
                        (:none) (append-key-bucket! buckets key-hash index)
                      recur (inc index) next-position
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'K
            :features $ #{} :js-ffi
            :generics $ [] 'K
            :return $ :: 'Option 'K
          :tags $ #{} :internal
        'first-duplicate-key-native $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn first-duplicate-key-native (child-keys)
            let
                repeated $ loop
                    remaining child-keys
                    seen $ assert-type (#{}) (:: 'Set 'K)
                    duplicates $ assert-type (#{}) (:: 'Set 'K)
                  hint-fn $ {}
                    :args $ [] (:: 'List 'K) (:: 'Set 'K) (:: 'Set 'K)
                    :return $ :: 'Set 'K
                  if (empty? remaining) duplicates $ let
                      key $ &list:nth remaining 0
                    recur (&list:rest remaining) (include seen key)
                      if (contains? seen key) (include duplicates key) duplicates
              if (empty? repeated) (%:: Option :none)
                loop
                    remaining child-keys
                  hint-fn $ {}
                    :args $ [] $ :: 'List 'K
                    :return $ :: 'Option 'K
                  let
                      key $ &list:nth remaining 0
                    if (contains? repeated key) (%:: Option :some key)
                      recur $ &list:rest remaining
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'K
            :generics $ [] 'K
            :return $ :: 'Option 'K
          :tags $ #{} :internal
          :tests $ []
            %{} 'TestEntry (:name |empty-and-distinct-keys)
              :code $ quote $ do
                assert= (Option :none)
                  first-duplicate-key-native $ []
                assert= (Option :none)
                  first-duplicate-key-native $ [] :a |a :b |b
              :tags $ #{} :unit
            %{} 'TestEntry (:name |earliest-repeated-original-key)
              :code $ quote $ assert= (Option :some :a)
                first-duplicate-key-native $ [] :a |a |b |b :a
              :tags $ #{} :unit
        'index-of-equal-key $ %{} 'CodeEntry
          :doc "|Compare the candidate against representative input keys inside one hash bucket. Hash collisions never imply equality."
          :code $ quote $ defn index-of-equal-key (child-keys positions key)
            loop
                remaining positions
              hint-fn $ {}
                :args $ [] $ :: 'List 'Number
                :return $ :: 'Option 'Number
              if (empty? remaining) (%:: Option :none)
                let
                    index $ &list:nth remaining 0
                  if
                    &= key $ &list:nth child-keys index
                    %:: Option :some index
                    recur $ &list:rest remaining
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'K) (:: 'List 'Number) 'K
            :generics $ [] 'K
            :return $ :: 'Option 'Number
          :tags $ #{} :internal
          :tests $ [] $ %{} 'TestEntry (:name |equal-key-index-keeps-bucket-order)
            :code $ quote $ do
              assert= (Option :some 2)
                index-of-equal-key ([] :a |a :a) ([] 1 2 0) :a
              assert= (Option :none)
                index-of-equal-key ([] :a |a) ([] 0) |a
            :tags $ #{} :unit
        'key-bucket-positions $ %{} 'CodeEntry
          :doc "|Read a native Array of representative indices from the private, locally constructed JS Map. Absence remains JsNullish; the caller converts and validates the number list."
          :code $ quote $ defn key-bucket-positions (buckets key-hash) (raise |JS-only-key-bucket-read)
          :examples $ []
          :ffi $ {} (:target :browser)
            :js $ {} $ :inline "|(buckets, keyHash) => buckets.get(keyHash)"
          :schema $ :: 'Fn $ {}
            :args $ [] 'JsObject 'Number
            :features $ #{} :js-ffi
            :return $ :: 'JsNullish 'JsObject
          :tags $ #{} :internal
        'keyed-boundaries $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn keyed-boundaries (old-keys new-keys)
            let
                old-size $ count old-keys
                new-size $ count new-keys
                shared-size $ &min old-size new-size
              loop
                  prefix 0
                if
                  and (< prefix shared-size)
                    =
                      &list:nth old-keys $ assert-type prefix 'Number
                      &list:nth new-keys $ assert-type prefix 'Number
                  recur $ inc prefix
                  loop
                      suffix 0
                    if
                      and
                        < suffix $ - shared-size prefix
                        =
                          &list:nth old-keys $ - (dec old-size) suffix
                          &list:nth new-keys $ - (dec new-size) suffix
                      recur $ inc suffix
                      [] prefix suffix
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'K) (:: 'List 'K)
            :generics $ [] 'K
            :return $ :: 'List 'Number
        'keyed-index $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn keyed-index (input-keys)
            loop
                remaining input-keys
                index 0
                result $ {}
              hint-fn $ {}
                :args $ [] (:: 'List 'K) 'Number $ :: 'Map 'K 'Number
                :return $ :: 'Map 'K 'Number
              list-match remaining
                () result
                (key rest-keys)
                  recur rest-keys (inc index) (&map:assoc result key index)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'K
            :generics $ [] 'K
            :return $ :: 'Map 'K 'Number
        'keyed-rotation $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn keyed-rotation (old-keys new-keys)
            if
              or (empty? new-keys)
                not= (count old-keys) (count new-keys)
              %:: Option :none
              match
                find-index old-keys $ fn (key)
                  = key $ &list:nth new-keys 0
                (:none) (%:: Option :none)
                (:some offset)
                  if
                    = new-keys $ concat (slice old-keys offset) (take old-keys offset)
                    %:: Option :some offset
                    %:: Option :none
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'K) (:: 'List 'K)
            :generics $ [] 'K
            :return $ :: 'Option 'Number
        'lis-lower-bound $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn lis-lower-bound (tails value)
            loop
                lo 0
                hi $ count tails
              if (< lo hi)
                let
                    mid $ floor $ / (+ lo hi) 2
                  if
                    <
                      option:unwrap $ nth tails mid
                      , value
                    recur (inc mid) hi
                    recur lo mid
                , lo
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] (:: 'List 'Number) 'Number
        'lis-reconstruct $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn lis-reconstruct (values previous cursor)
            loop
                position cursor
                kept $ assert-type (#{}) (:: 'Set 'Number)
              hint-fn $ {}
                :return $ :: 'Set 'Number
                :args $ [] 'Number $ :: 'Set 'Number
              if (< position 0) kept $ recur
                option:unwrap $ nth previous position
                include kept $ option:unwrap $ nth values position
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'Number) (:: 'List 'Number) 'Number
            :return $ :: 'Set 'Number
        'lis-values $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn lis-values (values)
            loop
                remaining values
                index 0
                tails $ assert-type ([]) (:: 'List 'Number)
                positions $ assert-type ([]) (:: 'List 'Number)
                previous $ assert-type ([]) (:: 'List 'Number)
              hint-fn $ {}
                :return $ :: 'Set 'Number
                :args $ [] (:: 'List 'Number) 'Number (:: 'List 'Number) (:: 'List 'Number) (:: 'List 'Number)
              list-match remaining
                () $ lis-reconstruct values previous $ if (empty? positions) -1
                  option:unwrap $ last positions
                (value rest-values)
                  let
                      slot $ lis-lower-bound tails value
                      predecessor $ if (= slot 0) -1 $ option:unwrap
                        nth positions $ dec slot
                      new-tails $ if
                        = slot $ count tails
                        append tails value
                        assoc tails slot value
                      new-positions $ if
                        = slot $ count positions
                        append positions index
                        assoc positions slot index
                    recur rest-values (inc index) new-tails new-positions $ append previous predecessor
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'Number
            :return $ :: 'Set 'Number
          :tests $ [] $ %{} 'TestEntry (:name |increasing-and-reversed)
            :code $ quote $ do
              assert= (#{} 0 1 2)
                lis-values $ [] 0 1 2
              assert= (#{} 0)
                lis-values $ [] 2 1 0
              assert= (#{} 0 1 2)
                lis-values $ [] 3 0 1 2
              assert= (#{})
                lis-values $ []
            :tags $ #{} :unit
        'props-as-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn props-as-list (props)
            if (list? props)
              unsafe-coerce props $ :: 'List $ :: 'List 'Dynamic
              if (map? props) (&map:to-list props) ([])
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'List $ :: 'List 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.render.diff
          :require
            respo.util.format :refer $ purify-element
            respo.util.detect :refer $ component? element? component-name component-tree element-name element-attrs element-ref element-style element-event element-children
            respo.render.effect :refer $ collect-mounting collect-updating collect-unmounting collect-own-mounting collect-own-unmounting
            respo.util.list :refer $ val-of-first
            respo.schema :refer $ dev? DomPatch
    'respo.render.dom $ %{} 'FileEntry
      :defs $ {}
        'make-element $ %{} 'CodeEntry
          :doc "|internal function to create a DOM element from a virtual element. handles properties, styles, events, and recursively creates child elements."
          :code $ quote $ defn make-element (virtual-element listener-builder coord & svg-context)
            assert |coord-is-required $ calcit.core/non-nil? coord
            make-render-node-element (respo.util.detect/as-render-node virtual-element) listener-builder coord $ if (empty? svg-context) false $ &list:nth svg-context 0
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Bool) (:return 'respo.dom/DomElement)
            :args $ [] 'Struct
              :: 'Fn $ {}
                :args $ [] 'Tag
                :return $ :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'respo.dom/DomEvent $ :: 'List 'Dynamic
              :: 'List 'Dynamic
            :features $ #{} :js-ffi
        'make-render-node-element $ %{} 'CodeEntry
          :doc "|根据 RenderNode 变体递归创建 DOM，保留组件坐标、SVG 上下文、事件和子节点创建顺序。"
          :code $ quote $ defn make-render-node-element (node listener-builder coord svg-context)
            match node
              (:component component)
                make-render-node-element
                  option:unwrap $ :tree component
                  , listener-builder
                    append coord $ :name component
                    , svg-context
              (:element virtual-element)
                let
                    tag-name $ calcit.core/to-string $ :name virtual-element
                    svg? $ or (= tag-name |svg) svg-context
                    child-svg? $ and svg? $ not= tag-name |foreignObject
                    attrs $ :attrs virtual-element
                    style $ :style virtual-element
                    events $ :event virtual-element
                    children $ :children virtual-element
                    element $ narrow-element $ if svg? (browser/create-element-ns |http://www.w3.org/2000/svg tag-name) (browser/create-element tag-name)
                    child-elements $ map
                      filter children $ fn (pair)
                        hint-fn $ {}
                          :args $ [] 'respo.schema/ChildPair
                          :return 'Bool
                        option:some? $ :node pair
                      fn (pair)
                        hint-fn $ {}
                          :args $ [] 'respo.schema/ChildPair
                          :return 'respo.dom/DomElement
                        let
                            k $ :key pair
                            child $ option:unwrap $ :node pair
                          when (nil? k) (js/console.warn |nil-key-is-bad-for-Respo)
                          make-render-node-element child listener-builder (append coord k) child-svg?
                  each attrs $ fn (entry)
                    hint-fn $ {}
                      :args $ [] $ :: 'List 'Dynamic
                      :return 'Dynamic
                    let
                        prop-str $ respo.util.list/pair-key-text entry
                        v $ respo.util.list/pair-value entry
                      if (.!startsWith prop-str |data-)
                        if (calcit.core/non-nil? v)
                          js-set
                            browser/element-dataset $ host-element element
                            .!slice prop-str 5
                            , v
                          js-delete
                            browser/element-dataset $ host-element element
                            .!slice prop-str 5
                        if svg?
                          when (calcit.core/non-nil? v)
                            browser/element-set-attribute! (host-element element) (svg-attr-name prop-str) (respo.util.format/scalar-attribute-text v)
                          let
                              k $ dashed->camel prop-str
                            if (calcit.core/non-nil? v) (aset element k v)
                  each style $ fn (entry)
                    hint-fn $ {}
                      :args $ [] $ :: 'List 'Dynamic
                      :return 'Dynamic
                    let
                        style-name $ respo.util.list/pair-key-text entry
                        k $ dashed->camel style-name
                        v $ respo.util.list/pair-value entry
                      aset
                        browser/element-style $ host-element element
                        , k $ get-style-value v k
                  &doseq (entry events)
                    let
                        event-handler $ respo.util.list/pair-value entry
                      when (calcit.core/non-nil? event-handler)
                        install-listener! element (respo.util.list/pair-tag-key entry) listener-builder coord
                  each child-elements $ fn (child-element)
                    if (calcit.core/non-nil? child-element)
                      browser/append-child! (host-element element) (host-element child-element)
                  , element
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ [] 'respo.schema/RenderNode
              :: 'Fn $ {}
                :args $ [] 'Tag
                :return $ :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'respo.dom/DomEvent $ :: 'List 'Dynamic
              :: 'List 'Dynamic
              , 'Bool
            :features $ #{} :js-ffi
        'style->string $ %{} 'CodeEntry
          :doc "|this functions is used inside DOM operations, inserting styles into a `<style>` element. to render to HTML, use `style->html` instead"
          :code $ quote $ defn style->string (styles)
            loop
                acc |
                xs styles
              if (empty? xs) acc $ let
                  entry $ respo.util.list/first-pair xs
                  k $ respo.util.list/pair-first entry
                if (symbol? k)
                  recur acc $ &list:rest xs
                  let
                      style-name $ cond
                          tag? k
                          calcit.core/to-string k
                        (string? k) k
                        true $ raise "|style->string expected a tag or string key"
                      v $ get-style-value (respo.util.list/pair-value entry) style-name
                    recur (str acc style-name |: v |;) (&list:rest xs)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'List (:: 'List 'Dynamic)
          :tests $ [] $ %{} 'TestEntry (:name |formats-typed-keys-and-rejects-invalid-key)
            :code $ quote $ do
              assert= |color:red; $ style->string $ [] ([] :color :red)
              assert= |display:block; $ style->string $ [] ([] |display :block)
              assert= "|style->string expected a tag or string key" $ try
                style->string $ [] $ [] 1 :red
                fn (error) error
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.render.dom
          :require
            respo.util.format :refer $ dashed->camel event->prop get-style-value svg-attr-name
            respo.util.detect :refer $ component? component-tree component-name element-name element-attrs element-style element-event element-children
            js-ffi.browser :as browser
            respo.ffi.browser :refer $ narrow-element host-element
            respo.render.events :refer $ install-listener!
    'respo.render.effect $ %{} 'FileEntry
      :defs $ {}
        'collect-mounting $ %{} 'CodeEntry
          :doc "|internal function to collect mounting effects from component tree. recursively traverses the virtual DOM and collects effect:mount callbacks."
          :code $ quote $ defn collect-mounting (collect! coord n-coord tree at-place?)
            if
              or (component? tree) (element? tree)
              collect-mounting-node collect! coord n-coord (respo.util.detect/as-render-node tree) at-place?
              &let
                _warned $ js/console.warn |Unknown-entry-for-mounting: tree
                , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              :: 'List 'Dynamic
              :: 'List 'Number
              , 'Struct 'Bool
            :features $ #{} :js-ffi
          :tests $ []
            %{} 'TestEntry (:name |runs-ref-mount-and-unmount-lifecycle)
              :code $ quote $ let
                  log $ atom $ []
                  ops $ atom $ []
                  ref! $ fn (target)
                    hint-fn $ {}
                      :args $ [] $ :: 'JsNullish 'respo.dom/DomElement
                      :return 'Unit
                    respo.core/append-dynamic! log target
                  element $ %{} respo.schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref ref!
                  collect! $ fn (op) (respo.core/append-dynamic! ops op)
                collect-mounting collect! ([]) ([]) element false
                collect-unmounting collect! ([]) ([]) element false
                respo.core/run-effect-ops! @ops :dom-node
                assert |ref-receives-two-lifecycle-calls $ = 2 $ count @log
                assert |ref-receives-target-first $ &= :dom-node $ &list:nth @log 0
              :tags $ #{} :unit
            %{} 'TestEntry (:name |keeps-own-effects-for-none-component-tree)
              :code $ quote $ let
                  actions $ atom $ []
                  ops $ atom $ []
                  effect $ %{} respo.schema/Effect (:name :watch)
                    :coord $ []
                    :args $ []
                    :method $ fn (_args params)
                      respo.core/append-dynamic! actions $ &list:nth params 0
                  component $ %{} respo.schema/Component (:name :empty)
                    :effects $ [] effect
                    :listeners $ []
                    :tree $ %none
                  collect! $ fn (op) (respo.core/append-dynamic! ops op)
                collect-mounting collect! ([]) ([]) component true
                collect-unmounting collect! ([]) ([]) component true
                respo.core/run-effect-ops! @ops :dom-node
                assert |own-effects-survive-none-tree $ &= ([] :mount :unmount) @actions
              :tags $ #{} :unit
            %{} 'TestEntry (:name |keeps-dom-indices-dense-through-empty-children)
              :code $ quote $ let
                  ops $ atom $ []
                  ref! $ fn (_target)
                    hint-fn $ {}
                      :args $ [] $ :: 'JsNullish 'respo.dom/DomElement
                      :return 'Unit
                    , &unit
                  leaf $ &struct:assoc
                    respo.core/span $ {}
                    , :ref ref!
                  parent $ &struct:assoc
                    respo.core/div $ {}
                    , :children $ [] (respo.util.detect/make-child-pair :empty nil) (respo.util.detect/make-child-pair |leaf leaf)
                  collect! $ fn (op) (respo.core/append-dynamic! ops op)
                collect-mounting collect! ([]) ([]) parent false
                collect-unmounting collect! ([]) ([]) parent false
                assert= 2 $ count @ops
                match (&list:nth @ops 0)
                  (:effect-mount coord n-coord _run!)
                    do
                      assert= ([] |leaf) coord
                      assert= ([] 0) n-coord
                  _ $ raise |expected-mount
                match (&list:nth @ops 1)
                  (:effect-unmount coord n-coord _run!)
                    do
                      assert= ([] |leaf) coord
                      assert= ([] 0) n-coord
                  _ $ raise |expected-unmount
            %{} 'TestEntry (:name |keeps-root-at-place-flag-after-descending)
              :code $ quote $ let
                  flags $ atom $ []
                  ops $ atom $ []
                  effect $ respo.schema/Effect :name :watch :coord ([]) :args ([]) :method $ fn (_args params)
                    respo.core/append-dynamic! flags $ &list:nth params 2
                  component $ respo.schema/Component :name :root :effects ([] effect) :listeners ([]) :tree $ %some
                    respo.util.detect/as-render-node $ respo.core/div $ {}
                  collect! $ fn (op) (respo.core/append-dynamic! ops op)
                collect-mounting collect! ([]) ([]) component true
                respo.core/run-effect-ops! @ops :dom-node
                assert= ([] true) @flags
        'collect-mounting-node $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn collect-mounting-node (collect! coord n-coord node at-place?)
            match node
              (:component component-value)
                let
                    effects $ :effects component-value
                    next-coord $ append coord $ :name component-value
                  when
                    not $ empty? effects
                    &doseq (effect effects)
                      let
                          typed-effect effect
                          method $ :method typed-effect
                        collect! $ DomPatch :effect-mount next-coord n-coord $ fn (target)
                          method (:args typed-effect) ([] :mount target at-place?)
                  match (:tree component-value)
                    (:none) &unit
                    (:some child-tree) (collect-mounting-node collect! next-coord n-coord child-tree false)
              (:element tree)
                do
                  match
                    js-nullish->option $ :ref tree
                    (:none) &unit
                    (:some ref!)
                      collect! $ DomPatch :effect-mount coord n-coord $ fn (target) (ref! target)
                  loop
                      children $ :children tree
                      idx 0
                    hint-fn $ {}
                      :args $ [] (:: 'List 'respo.schema/ChildPair) 'Number
                      :return 'Unit
                    if (empty? children) &unit $ let
                        pair $ &list:nth children 0
                        k $ :key pair
                        child $ :node pair
                      when (option:some? child)
                        collect-mounting-node collect! (append coord k) (append n-coord idx) (option:unwrap child) false
                      recur (&list:rest children)
                        if (option:some? child) (inc idx) idx
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              :: 'List 'CoordKey
              :: 'List 'Number
              , 'respo.schema/RenderNode 'Bool
            :features $ #{} :js-ffi
            :generics $ [] 'CoordKey
        'collect-own-mounting $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn collect-own-mounting (collect! coord n-coord tree at-place?)
            when
              not $ component? tree
              raise |[Respo/collect-own-mounting]-expected-a-component
            let
                effects $ component-effects tree
                next-coord $ append coord $ component-name tree
              &doseq (effect effects)
                let
                    method $ :method effect
                  collect! $ DomPatch :effect-mount next-coord n-coord $ fn (target)
                    method (effect-args effect) ([] :mount target at-place?)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              :: 'List 'Dynamic
              :: 'List 'Number
              , 'respo.schema/Component 'Bool
          :tags $ #{} :internal
        'collect-own-unmounting $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn collect-own-unmounting (collect! coord n-coord tree at-place?)
            when
              not $ component? tree
              raise |[Respo/collect-own-unmounting]-expected-a-component
            let
                effects $ component-effects tree
                next-coord $ append coord $ component-name tree
              &doseq (effect effects)
                let
                    method $ :method effect
                  collect! $ DomPatch :effect-unmount next-coord n-coord $ fn (target)
                    method (effect-args effect) ([] :unmount target at-place?)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              :: 'List 'Dynamic
              :: 'List 'Number
              , 'respo.schema/Component 'Bool
          :tags $ #{} :internal
        'collect-unmounting $ %{} 'CodeEntry
          :doc "|internal function to collect unmounting effects from component tree. recursively traverses the virtual DOM and collects effect:unmount callbacks."
          :code $ quote $ defn collect-unmounting (collect! coord n-coord tree at-place?)
            if
              or (component? tree) (element? tree)
              collect-unmounting-node collect! coord n-coord (respo.util.detect/as-render-node tree) at-place?
              js/console.warn |Unknown-entry-for-unmounting: tree
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              :: 'List 'Dynamic
              :: 'List 'Number
              , 'Struct 'Bool
            :features $ #{} :js-ffi
        'collect-unmounting-node $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn collect-unmounting-node (collect! coord n-coord node at-place?)
            match node
              (:component component-value)
                let
                    effects $ :effects component-value
                    new-coord $ append coord $ :name component-value
                  match (:tree component-value)
                    (:none) &unit
                    (:some child-tree) (collect-unmounting-node collect! new-coord n-coord child-tree false)
                  when
                    not $ empty? effects
                    &doseq (effect effects)
                      let
                          typed-effect effect
                          method $ :method typed-effect
                        collect! $ DomPatch :effect-unmount new-coord n-coord $ fn (target)
                          method (:args typed-effect) ([] :unmount target at-place?)
              (:element tree)
                do
                  loop
                      children $ :children tree
                      idx 0
                    hint-fn $ {}
                      :args $ [] (:: 'List 'respo.schema/ChildPair) 'Number
                      :return 'Unit
                    if (empty? children) &unit $ let
                        pair $ &list:nth children 0
                        k $ :key pair
                        child $ :node pair
                      when (option:some? child)
                        collect-unmounting-node collect! (append coord k) (append n-coord idx) (option:unwrap child) false
                      recur (&list:rest children)
                        if (option:some? child) (inc idx) idx
                  match
                    js-nullish->option $ :ref tree
                    (:none) &unit
                    (:some ref!)
                      collect! $ DomPatch :effect-unmount coord n-coord $ fn (_target) (ref! nil)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              :: 'List 'CoordKey
              :: 'List 'Number
              , 'respo.schema/RenderNode 'Bool
            :features $ #{} :js-ffi
            :generics $ [] 'CoordKey
        'collect-updating $ %{} 'CodeEntry
          :doc "|Compares effects between component updates and collects effect actions if arguments change."
          :code $ quote $ defn collect-updating (collect! action coord n-coord old-tree new-tree)
            when
              not $ component? new-tree
              raise |[Respo/collect-updating]-expected-the-new-tree-to-be-a-component
            let
                old-effects $ component-effects old-tree
                new-effects $ component-effects new-tree
                next-coord $ append coord $ component-name new-tree
                effect-count $ option:unwrap $ max
                  [] (count old-effects) (count new-effects)
              &doseq
                idx $ range effect-count
                let
                    old-effect-option $ nth old-effects idx
                    new-effect-option $ nth new-effects idx
                  if-let (old-effect old-effect-option)
                    do
                      if-let (new-effect new-effect-option)
                        do
                          if
                            = (effect-name old-effect) (effect-name new-effect)
                            when-not
                              =seq (effect-args new-effect) (effect-args old-effect)
                              let
                                  effect $ if (= action :before-update) old-effect new-effect
                                  method $ :method effect
                                collect! $ if (= :update action)
                                  DomPatch :effect-update next-coord n-coord $ fn (target)
                                    method (effect-args effect) ([] action target false)
                                  DomPatch :effect-before-update next-coord n-coord $ fn (target)
                                    method (effect-args effect) ([] action target false)
                            let
                                effect $ if (= action :before-update) old-effect new-effect
                                method $ :method effect
                                lifecycle-action $ if (= action :before-update) :unmount :mount
                              collect! $ if (= :update action)
                                DomPatch :effect-update next-coord n-coord $ fn (target)
                                  method (effect-args effect) ([] lifecycle-action target false)
                                DomPatch :effect-before-update next-coord n-coord $ fn (target)
                                  method (effect-args effect) ([] lifecycle-action target false)
                          , &unit
                        do
                          when (= action :before-update)
                            let
                                method $ :method old-effect
                              collect! $ DomPatch :effect-before-update next-coord n-coord $ fn (target)
                                method (effect-args old-effect) ([] :unmount target false)
                          , &unit
                      , &unit
                    do
                      when-let (new-effect new-effect-option)
                        when (= action :update)
                          let
                              method $ :method new-effect
                            collect! $ DomPatch :effect-update next-coord n-coord $ fn (target)
                              method (effect-args new-effect) ([] :mount target false)
                      , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.schema/DomPatch
              , 'Tag (:: 'List 'Dynamic) (:: 'List 'Number) 'respo.schema/Component 'respo.schema/Component
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.render.effect
          :require (respo.schema.op :as op)
            respo.util.detect :refer $ component? element? =seq as-component as-element as-effect component-name component-effects component-tree effect-name effect-method effect-args element-children element-ref
            respo.util.list :refer $ val-of-first
            respo.schema :refer $ DomPatch
    'respo.render.events $ %{} 'FileEntry
      :defs $ {}
        '*event-config $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *event-config default-config
          :examples $ []
          :schema $ :: 'Ref 'respo.schema/EventConfig
          :tags $ #{} :internal
        'default-config $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def default-config
            %{} EventConfig (:stop-propagation? true)
              :listener-mode $ ListenerMode :property
          :examples $ []
          :schema $ :: 'respo.schema/EventConfig
        'install-listener! $ %{} 'CodeEntry
          :doc "|Internal event installer shared by initial DOM creation and event patches. Captures the immutable mount configuration; independent mode replaces only the callback recorded on the node."
          :code $ quote $ defn install-listener! (target event-name listener-builder coord)
            let
                config @*event-config
                handler $ fn (event)
                  hint-fn $ {}
                    :args $ [] 'respo.dom/DomEvent
                    :return 'Unit
                  (listener-builder event-name) event coord
                  when (:stop-propagation? config) (.stop-propagation! event)
                  , &unit
              match (:listener-mode config)
                (:property)
                  aset target (event->prop event-name) handler
                (:add-event-listener)
                  do (remove-listener! target event-name)
                    let
                        listeners $ match (js-nullish->option target.:owned-event-listeners)
                          (:none) ({})
                          (:some listeners) listeners
                      set! target.:owned-event-listeners $ assoc listeners event-name handler
                      .add-event-listener! target (calcit.core/to-string event-name) handler
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'Tag
              :: 'Fn $ {}
                :args $ [] 'Tag
                :return $ :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'respo.dom/DomEvent $ :: 'List 'K
              :: 'List 'K
            :features $ #{} :js-ffi
            :generics $ [] 'K
          :tags $ #{} :internal
        'remove-listener! $ %{} 'CodeEntry
          :doc "|Remove only the recorded independent Respo callback. Release the internal node field after its last callback is removed; user on* properties and other native listeners are untouched."
          :code $ quote $ defn remove-listener! (target event-name)
            match (js-nullish->option target.:owned-event-listeners)
              (:none) &unit
              (:some listeners)
                match (get listeners event-name)
                  (:none) &unit
                  (:some listener)
                    do
                      .remove-event-listener! target (calcit.core/to-string event-name) listener
                      let
                          remaining $ dissoc listeners event-name
                        if (empty? remaining) (js-delete target |__respo_calcit_event_listeners) (set! target.:owned-event-listeners remaining)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'Tag
            :features $ #{} :js-ffi
          :tags $ #{} :internal
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.render.events
          :require
            respo.dom :refer $ DomElement DomEvent
            respo.util.format :refer $ event->prop
            respo.schema :refer $ ListenerMode EventConfig
    'respo.render.html $ %{} 'FileEntry
      :defs $ {}
        'coerce-pairs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn coerce-pairs (value)
            assert-type value $ :: 'List $ :: 'List 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'List $ :: 'List 'Dynamic
        'element->string $ %{} 'CodeEntry (:doc "|which is actually `element->html`")
          :code $ quote $ defn element->string (element)
            let
                tag-name $ calcit.core/to-string $ element :name
                attrs $ pairs-map $ element :attrs
                styles $ element :style
                children $ map (element :children)
                  fn (entry)
                    hint-fn $ {}
                      :args $ [] 'respo.schema/ChildPair
                      :return 'String
                    match (:node entry)
                      (:none) |
                      (:some node)
                        match node
                          (:element child) (element->string child)
                          (:component _) (raise |expected-purified-element)
                text-inside $ element-content (element :name) attrs children
                tailored-props $ &let
                  props $ dissoc (dissoc attrs :innerHTML) :inner-text
                  if (empty? styles) props $ assoc props :style styles
                props-in-string $ props->html tailored-props
                opening-props $ if (blank? props-in-string) | $ str (char-from-code 32) props-in-string
              if (&set:includes? self-closing tag-name)
                str |< tag-name opening-props (char-from-code 32) |>
                str |< tag-name opening-props |> text-inside |</ tag-name |>
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'respo.schema/Element
          :tests $ []
            %{} 'TestEntry (:name |serializes-elements-and-escapes-values)
              :code $ quote $ do
                assert |plain-element $ = "|<div class=\"test\"></div>" $ element->string
                  %{} respo.schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ [] $ [] :class-name |test
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref nil
                assert |textarea-content-is-escaped $ = "|<textarea value=\"a&#13;&#10;&quot;b&quot;\">a&#13;&#10;&quot;b&quot;</textarea>" $ element->string
                  %{} respo.schema/Element (:name :textarea)
                    :coord $ %none
                    :attrs $ [] $ [] :value "|a\n\"b\""
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref nil
              :tags $ #{} :unit
            %{} 'TestEntry (:name |serializes-nested-html-document)
              :code $ quote $ let
                  child $ %{} respo.schema/Element (:name :span)
                    :coord $ %none
                    :attrs $ [] $ [] :inner-text |Demo
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref nil
                  parent $ %{} respo.schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ [] $ respo.util.detect/make-child-pair :child child
                    :ref nil
                assert |nested-document-is-serialized-in-child-order $ = |<div><span>Demo</span></div> $ element->string parent
              :tags $ #{} :unit
        'element-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn element-content (tag-name attrs children)
            if (= tag-name :textarea)
              let
                  value $ &map:get attrs :value
                if (calcit.core/non-nil? value)
                  escape-html $ respo.util.format/scalar-attribute-text value
                  calcit.core/join-string children |
              let
                  html $ &map:get attrs :innerHTML
                if (calcit.core/non-nil? html) (respo.util.format/scalar-attribute-text html)
                  let
                      text $ &map:get attrs :inner-text
                    if (calcit.core/non-nil? text) (text->html text) (calcit.core/join-string children |)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Tag (:: 'Map 'Tag 'Dynamic) (:: 'List 'String)
        'entry->html $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn entry->html (entry)
            let
                k $ respo.util.list/pair-key entry
                v $ respo.util.list/pair-value entry
                value-text $ cond
                    = k :style
                    style->html $ coerce-pairs v
                  (string? v) (escape-html v)
                  true $ respo.util.format/scalar-attribute-text v
              str
                prop->attr $ if (tag? k) (to-string k) (str k)
                , |= $ &str:escape value-text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'List 'Dynamic
        'escape-html $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn escape-html (text)
            &str:replace
              &str:replace
                &str:replace
                  &str:replace (&str:replace text |& |&amp;) "|\"" |&quot;
                  , |< |&lt;
                , |> |&gt;
              , &newline |&#13;&#10;
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
          :tests $ [] $ %{} 'TestEntry (:name |preserves-literal-entities)
            :code $ quote $ assert= |&amp;&amp;amp;&lt;&gt;&quot; (escape-html "|&&amp;<>\"")
            :tags $ #{} :unit
        'make-string $ %{} 'CodeEntry
          :doc "|Render a component tree to an HTML string for SSR.\n\nIt strips live event handlers and serializes a purified tree so the output stays stable across environments. This is the current HTML output API that replaces older `make-html` references."
          :code $ quote $ defn make-string (element)
            element->string $ respo.util.format/coerce-element $ respo.util.detect/as-element (purify-element element)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic
          :tests $ []
            %{} 'TestEntry
              :name |serializes-component-root-after-muting-option-tree
              :code $ quote $ let
                  element $ %{} respo.schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {} $ :click
                      fn (_event _dispatch!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Dynamic
                              :return 'Unit
                          :return 'Unit
                        , &unit
                    :children $ []
                    :ref nil
                  component $ %{} respo.schema/Component (:name :root)
                    :effects $ []
                    :listeners $ []
                    :tree $ %some $ respo.util.detect/as-render-node element
                assert |component-root-is-serialized $ &= |<div></div> $ make-string component
              :tags $ #{} :unit
            %{} 'TestEntry (:name |skips-empty-child-pairs)
              :code $ quote $ let
                  leaf $ respo.core/span $ {} (:inner-text |leaf)
                  parent $ &struct:assoc
                    respo.core/div $ {}
                    , :children $ [] (respo.util.detect/make-child-pair :before nil) (respo.util.detect/make-child-pair :leaf leaf) (respo.util.detect/make-child-pair :after nil)
                assert= |<div><span>leaf</span></div> $ make-string parent
        'props->html $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn props->html (props)
            let
                pairs $ assert-type (&map:to-list props)
                  :: 'List $ :: 'List 'Dynamic
                visible $ filter pairs $ fn (pair)
                  hint-fn $ {}
                    :args $ [] $ :: 'List 'Dynamic
                    :return 'Bool
                  let
                      k $ respo.util.list/pair-key pair
                      v $ respo.util.list/pair-value pair
                    and (calcit.core/non-nil? v)
                      not $ starts-with?
                        if (tag? k) (to-string k) (str k)
                        , |on-
                sorted $ &list:sort-by visible respo.util.list/pair-key
              calcit.core/join-string (map sorted entry->html) "| "
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'self-closing $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def self-closing
            #{} |area |base |br |col |embed |hr |img |input |link |meta |param |source |track |wbr
          :examples $ []
          :schema $ :: 'Dynamic
        'style->html $ %{} 'CodeEntry
          :doc "|this function is intended for HTML rendering since it escaped characters."
          :code $ quote $ defn style->html (styles)
            calcit.core/join-string
              map styles $ fn (entry)
                hint-fn $ {}
                  :args $ [] $ :: 'List 'Dynamic
                  :return 'String
                let
                    style-name $ respo.util.list/pair-key-text entry
                    v $ get-style-value (respo.util.list/pair-value entry) (dashed->camel style-name)
                  str style-name |: (escape-html v) |;
              , |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'List (:: 'List 'Dynamic)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.render.html
          :require
            respo.util.format :refer $ prop->attr purify-element mute-element text->html get-style-value dashed->camel
            respo.util.detect :refer $ component? element?
    'respo.render.patch $ %{} 'FileEntry
      :defs $ {}
        'MoveScrollState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct MoveScrollState (:node 'respo.dom/DomElement) (:top 'Number) (:left 'Number)
          :examples $ []
          :schema $ :: 'StructDef
        'add-element $ %{} 'CodeEntry
          :doc "|Inserts a new DOM element before a target element."
          :code $ quote $ defn add-element (target op listener-builder coord)
            let
                new-element $ make-element op listener-builder coord $ svg-parent? target
              insert-before-target! target new-element
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'Struct
              :: 'Fn $ {}
                :args $ [] 'Tag
                :return $ :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'respo.dom/DomEvent $ :: 'List 'Dynamic
              :: 'List 'Dynamic
            :features $ #{} :js-ffi
        'add-event $ %{} 'CodeEntry (:doc "|Attaches an event listener to a DOM element.")
          :code $ quote $ defn add-event (target event-name listener-builder coord) (install-listener! target event-name listener-builder coord)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'Tag
              :: 'Fn $ {}
                :args $ [] 'Tag
                :return $ :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'respo.dom/DomEvent $ :: 'List 'Dynamic
              :: 'List 'Dynamic
            :features $ #{} :js-ffi
        'add-prop $ %{} 'CodeEntry
          :doc "|Adds or updates a property on a DOM element. Handles data attributes and style strings."
          :code $ quote $ defn add-prop (target p prop-value)
            let
                prop-str $ calcit.core/to-string p
              if (.!startsWith prop-str |data-)
                if (calcit.core/non-nil? prop-value)
                  -> target .-dataset $ js-set (.!slice prop-str 5) prop-value
                  -> target .-dataset $ js-delete $ .!slice prop-str 5
                if (svg-target? target)
                  set-svg-prop! target p $ if (calcit.core/non-nil? prop-value)
                    Option :some $ respo.util.format/scalar-attribute-text prop-value
                    Option :none
                  let
                      prop-name $ dashed->camel prop-str
                    match prop-name
                      |style $ js-set target prop-name $ style->string (respo.util.list/checked-pairs prop-value)
                      _ $ js-set target prop-name prop-value
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'add-style $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-style (target p v)
            let
                style-name $ dashed->camel $ calcit.core/to-string p
                style-value $ get-style-value v style-name
              aset (.-style target) style-name style-value
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'append-element $ %{} 'CodeEntry
          :doc "|Appends a new DOM element to the target container."
          :code $ quote $ defn append-element (target op listener-builder coord)
            &let
              new-element $ make-element op listener-builder coord $ svg-children? target
              .append-child! target new-element
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'Struct
              :: 'Fn $ {}
                :args $ [] 'Tag
                :return $ :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'respo.dom/DomEvent $ :: 'List 'Dynamic
              :: 'List 'Dynamic
            :features $ #{} :js-ffi
        'apply-dom-changes $ %{} 'CodeEntry
          :doc "|Internal DOM patch executor.\n\nIt walks collected diff operations, finds the target node by DOM coordinate, and applies prop, style, event, element, and effect changes in order."
          :code $ quote $ defn apply-dom-changes (changes mount-point listener-builder)
            let
                target-cache $ atom $ assert-type ({})
                  :: 'Map (:: 'List 'Number) 'respo.dom/DomElement
                find-target-at $ fn (n-coord)
                  hint-fn $ {}
                    :return $ :: 'Option 'respo.dom/DomElement
                    :args $ [] $ :: 'List 'Number
                  match
                    js-nullish->option $ mount-point.:first-element-child
                    (:none) (%:: Option :none)
                    (:some root) (find-target-cached root n-coord target-cache)
                child-snapshots $ atom $ assert-type ({})
                  :: 'Map (:: 'List 'Number) (:: 'List 'respo.dom/DomElement)
                scroll-snapshot $ atom $ assert-type ({})
                  :: 'Map (:: 'List 'Number) (:: 'List 'respo.render.patch/MoveScrollState)
                flush-scroll! $ fn ()
                  hint-fn $ {} (:return 'Unit)
                    :args $ []
                    :features $ #{} :js-ffi
                  &doseq
                    pair $ &map:to-list @scroll-snapshot
                    &doseq
                      state $ respo.util.list/pair-value pair
                      let
                          entry $ as-move-scroll-state state
                        aset (:node entry) |scrollTop $ :top entry
                        aset (:node entry) |scrollLeft $ :left entry
                  reset! scroll-snapshot $ {}
                  reset! child-snapshots $ {}
                  , &unit
                invalidate-at! $ fn (n-coord)
                  hint-fn $ {} (:return 'Unit)
                    :args $ [] $ :: 'List 'Number
                  if (empty? n-coord)
                    reset! target-cache $ {}
                    invalidate-target-children! target-cache $ slice n-coord 0 $ dec (count n-coord)
                  , &unit
              &doseq (op changes)
                match op
                  (:replace-prop _coord n-coord key value)
                    do (flush-scroll!)
                      replace-prop
                        option:unwrap $ find-target-at n-coord
                        , key value
                      if
                        contains? (#{} :outerHTML :outer-html) key
                        invalidate-at! n-coord
                        when
                          contains? (#{} :inner-text :innerHTML :inner-html :innerText :textContent :text-content) key
                          invalidate-target-children! target-cache n-coord
                  (:add-prop _coord n-coord key value)
                    do (flush-scroll!)
                      add-prop
                        option:unwrap $ find-target-at n-coord
                        , key value
                      if
                        contains? (#{} :outerHTML :outer-html) key
                        invalidate-at! n-coord
                        when
                          contains? (#{} :inner-text :innerHTML :inner-html :innerText :textContent :text-content) key
                          invalidate-target-children! target-cache n-coord
                  (:rm-prop _coord n-coord key)
                    do (flush-scroll!)
                      rm-prop
                        option:unwrap $ find-target-at n-coord
                        , key
                      if
                        contains? (#{} :outerHTML :outer-html) key
                        invalidate-at! n-coord
                        when
                          contains? (#{} :inner-text :innerHTML :inner-html :innerText :textContent :text-content) key
                          invalidate-target-children! target-cache n-coord
                  (:add-style _coord n-coord key value)
                    do (flush-scroll!)
                      add-style
                        option:unwrap $ find-target-at n-coord
                        , key value
                  (:replace-style _coord n-coord key value)
                    do (flush-scroll!)
                      replace-style
                        option:unwrap $ find-target-at n-coord
                        , key value
                  (:rm-style _coord n-coord key)
                    do (flush-scroll!)
                      rm-style
                        option:unwrap $ find-target-at n-coord
                        , key
                  (:set-event coord n-coord event-name)
                    do (flush-scroll!)
                      add-event
                        option:unwrap $ find-target-at n-coord
                        , event-name listener-builder coord
                  (:rm-event _coord n-coord event-name)
                    do (flush-scroll!)
                      rm-event
                        option:unwrap $ find-target-at n-coord
                        , event-name
                  (:add-element coord n-coord element)
                    do (flush-scroll!)
                      add-element
                        option:unwrap $ find-target-at n-coord
                        , element listener-builder coord
                      invalidate-at! n-coord
                  (:rm-element _coord n-coord)
                    do (flush-scroll!)
                      rm-element $ find-target-at n-coord
                      invalidate-at! n-coord
                  (:replace-element coord n-coord element)
                    do (flush-scroll!)
                      replace-element
                        option:unwrap $ find-target-at n-coord
                        , element listener-builder coord
                      invalidate-at! n-coord
                  (:append-element coord n-coord element)
                    do (flush-scroll!)
                      append-element
                        option:unwrap $ find-target-at n-coord
                        , element listener-builder coord
                      invalidate-target-children! target-cache n-coord
                  (:move-element n-coord source anchor)
                    let
                        parent $ option:unwrap $ find-target-at n-coord
                        nodes $ assert-type
                          match (get @child-snapshots n-coord)
                            (:none) (snapshot-children parent)
                            (:some cached) cached
                          :: 'List 'respo.dom/DomElement
                      swap! child-snapshots assoc n-coord $ assert-type nodes $ :: 'List 'respo.dom/DomElement
                      when
                        not $ contains? @scroll-snapshot n-coord
                        swap! scroll-snapshot assoc n-coord $ collect-scroll-states parent
                      move-element! parent nodes source anchor
                      invalidate-target-children! target-cache n-coord
                  (:effect-mount _coord n-coord run!)
                    do (flush-scroll!)
                      run-effect
                        option:unwrap $ find-target-at n-coord
                        , run! n-coord
                      reset! target-cache $ {}
                  (:effect-unmount _coord n-coord run!)
                    do (flush-scroll!)
                      run-effect
                        option:unwrap $ find-target-at n-coord
                        , run! n-coord
                      reset! target-cache $ {}
                  (:effect-update _coord n-coord run!)
                    do (flush-scroll!)
                      run-effect
                        option:unwrap $ find-target-at n-coord
                        , run! n-coord
                      reset! target-cache $ {}
                  (:effect-before-update _coord n-coord run!)
                    do (flush-scroll!)
                      run-effect
                        option:unwrap $ find-target-at n-coord
                        , run! n-coord
                      reset! target-cache $ {}
              flush-scroll!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'List 'respo.schema/DomPatch) 'respo.dom/DomElement $ :: 'Fn
              {}
                :args $ [] 'Tag
                :return $ :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'respo.dom/DomEvent $ :: 'List 'Dynamic
            :features $ #{} :js-ffi
        'as-move-scroll-state $ %{} 'CodeEntry (:doc "|按 Struct 来源校验滚动快照。")
          :code $ quote $ defn as-move-scroll-state (value)
            if (struct? value)
              if (&struct:matches? value MoveScrollState) value $ raise "|[Respo] expected a MoveScrollState snapshot"
              raise "|[Respo] expected a MoveScrollState snapshot"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.render.patch/MoveScrollState)
            :args $ [] 'Dynamic
        'collect-scroll-states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn collect-scroll-states (node)
            let
                own $ if
                  and (= node.:scroll-top 0) (= node.:scroll-left 0)
                  assert-type ([]) (:: 'List 'respo.render.patch/MoveScrollState)
                  [] $ MoveScrollState :node node :top node.:scroll-top :left node.:scroll-left
                children $ snapshot-children node
              concat own $ mapcat children collect-scroll-states
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.dom/DomElement
            :features $ #{} :js-ffi
            :return $ :: 'List 'respo.render.patch/MoveScrollState
        'find-target $ %{} 'CodeEntry
          :doc "|Locates a DOM node by traversing children using a coordinate path."
          :code $ quote $ defn find-target (root coord)
            list-match coord
              () root
              (index xss)
                let
                    children $ root.:children
                  match
                    js-nullish->option $ children .item index
                    (:none) nil
                    (:some child) (find-target child xss)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.dom/DomElement $ :: 'List 'Number
            :features $ #{} :js-ffi
            :return $ :: 'JsNullish 'respo.dom/DomElement
        'find-target-cached $ %{} 'CodeEntry
          :doc "|Locate a DOM target with prefix reuse inside one patch application. Cache only successful lookups. Structural patches retain unchanged ancestors; content properties discard descendants, and lifecycle callbacks clear all targets."
          :code $ quote $ defn find-target-cached (root coord cache)
            match (get @cache coord)
              (:some node) (%:: Option :some node)
              (:none)
                if (empty? coord)
                  do (swap! cache assoc coord root) (%:: Option :some root)
                  let
                      parent-coord $ slice coord 0 $ dec (count coord)
                      index $ &list:nth coord $ dec (count coord)
                    match (find-target-cached root parent-coord cache)
                      (:none) (%:: Option :none)
                      (:some parent)
                        match
                          js-nullish->option $ .item (parent.:children) index
                          (:none) (%:: Option :none)
                          (:some child)
                            do (swap! cache assoc coord child) (%:: Option :some child)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.dom/DomElement (:: 'List 'Number)
              :: 'Ref $ :: 'Map (:: 'List 'Number) 'respo.dom/DomElement
            :features $ #{} :js-ffi
            :return $ :: 'Option 'respo.dom/DomElement
          :tags $ #{} :internal
        'insert-before-target! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn insert-before-target! (target new-element)
            match
              js-nullish->option $ target :parent-element
              (:none)
                raise |[Respo/insert-before-target!]-target-has-no-parent-element
              (:some parent)
                let
                    parent-element parent
                  .insert-before! parent-element new-element target
                  , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'respo.dom/DomElement
            :features $ #{} :js-ffi
        'invalidate-target-children! $ %{} 'CodeEntry
          :doc "|Conservatively discard cached targets after child structure changes, retaining only the unchanged parent and its ancestors. Work depends on coordinate depth rather than total cached targets, avoiding scans of unrelated cached branches on each move."
          :code $ quote $ defn invalidate-target-children! (cache parent-coord)
            loop
                remaining parent-coord
                retained $ {}
              hint-fn $ {} (:return 'Unit)
                :args $ [] (:: 'List 'Number)
                  :: 'Map (:: 'List 'Number) 'respo.dom/DomElement
              let
                  path remaining
                  entries retained
                  next $ match (get @cache path)
                    (:none) entries
                    (:some node) (assoc entries path node)
                if (empty? path)
                  do (reset! cache next) &unit
                  recur
                    slice path 0 $ dec $ count path
                    , next
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
              :: 'Ref $ :: 'Map (:: 'List 'Number) 'respo.dom/DomElement
              :: 'List 'Number
          :tags $ #{} :internal
          :tests $ [] $ %{} 'TestEntry (:name |unit-empty-target-cache)
            :code $ quote $ let
                cache $ atom $ assert-type ({})
                  :: 'Map (:: 'List 'Number) 'respo.dom/DomElement
              assert= &unit $ invalidate-target-children! cache $ [] 1 2
              assert= ({}) @cache
              assert= &unit $ invalidate-target-children! cache $ []
              assert= ({}) @cache
            :tags $ #{} :ref-write :unit
        'move-element! $ %{} 'CodeEntry
          :doc "|Move a source node before its snapshot anchor, or to the end. Prefer state-preserving moveBefore for connected nodes; fall back to insertion with focus and subtree scroll restoration."
          :code $ quote $ defn move-element! (parent nodes source anchor)
            let
                node $ option:unwrap $ nth nodes source
                focused $ if (.matches? node |:focus) (%:: Option :some node)
                  js-nullish->option $ .query-selector node |:focus
              if
                and
                  fn? $ aget parent |moveBefore
                  aget parent |isConnected
                  aget node |isConnected
                match anchor
                  (:none)
                    do (.!moveBefore parent node js/null) &unit
                  (:some index)
                    .move-before! parent node $ option:unwrap $ nth nodes index
                match anchor
                  (:none) (.append-child! parent node)
                  (:some index)
                    .insert-before! parent node $ option:unwrap $ nth nodes index
              match focused
                (:none) &unit
                (:some active)
                  when-not (.matches? active |:focus)
                    .focus-preserving-scroll! active $ js-object $ :preventScroll true
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement (:: 'List 'respo.dom/DomElement) 'Number $ :: 'Option 'Number
            :features $ #{} :js-ffi
        'remove-target! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-target! (target) (.remove! target) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement
            :features $ #{} :js-ffi
        'replace-element $ %{} 'CodeEntry
          :doc "|Replaces a DOM element with a new one created from an operation."
          :code $ quote $ defn replace-element (target op listener-builder coord)
            let
                new-element $ make-element op listener-builder coord $ svg-parent? target
              insert-before-target! target new-element
              remove-target! target
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'Struct
              :: 'Fn $ {}
                :args $ [] 'Tag
                :return $ :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'respo.dom/DomEvent $ :: 'List 'Dynamic
              :: 'List 'Dynamic
            :features $ #{} :js-ffi
        'replace-prop $ %{} 'CodeEntry
          :doc "|Updates a property on a DOM element. Handles data attributes and special cases like 'value'."
          :code $ quote $ defn replace-prop (target p prop-value)
            let
                prop-str $ calcit.core/to-string p
              if (.!startsWith prop-str |data-)
                let
                    name $ .!slice prop-str 5
                    dataset target.:dataset
                  if (calcit.core/non-nil? prop-value)
                    if
                      not $ &= prop-value $ aget dataset name
                      js-set dataset name prop-value
                    js-delete dataset name
                if (svg-target? target)
                  set-svg-prop! target p $ if (calcit.core/non-nil? prop-value)
                    Option :some $ respo.util.format/scalar-attribute-text prop-value
                    Option :none
                  let
                      prop-name $ dashed->camel prop-str
                    if (identical? prop-name |value)
                      if
                        not $ &= prop-value $ .-value target
                        js-set target prop-name prop-value
                      js-set target prop-name prop-value
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'replace-style $ %{} 'CodeEntry
          :doc "|Updates a single style property on a DOM element."
          :code $ quote $ defn replace-style (target p v)
            let
                style-name $ dashed->camel $ calcit.core/to-string p
              aset (.-style target) style-name $ get-style-value v style-name
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'rm-element $ %{} 'CodeEntry (:doc "|Removes the DOM element from the document.")
          :code $ quote $ defn rm-element (target)
            match target
              (:some element) (.remove! element)
              (:none)
                js/console.warn |Respo:-Element-already-removed!-Probably-by-:inner-text.
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'calcit.core/Option 'respo.dom/DomElement
            :features $ #{} :js-ffi
        'rm-event $ %{} 'CodeEntry
          :doc "|Remove an event according to the mount policy. Property mode clears its on* property as before; independent mode removes only the callback owned by Respo."
          :code $ quote $ defn rm-event (target event-name)
            match (:listener-mode @respo.render.events/*event-config)
              (:property)
                js-set target (event->prop event-name) nil
              (:add-event-listener) (remove-listener! target event-name)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'Tag
            :features $ #{} :js-ffi
        'rm-prop $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn rm-prop (target op)
            if (svg-target? target)
              set-svg-prop! target op $ Option :none
              match op
                :class-name $ target .remove-attribute! |class
                :href $ target .remove-attribute! |href
                :inner-text $ set! target.:inner-text |
                :innerHTML $ set! target.:inner-html |
                :checked $ set! target.:checked false
                :disabled $ set! target.:disabled false
                :selected $ set! target.:selected false
                _ $ let
                    prop-str $ calcit.core/to-string op
                  if (.!startsWith prop-str |data-)
                    js-delete (target.:dataset) (.!slice prop-str 5)
                    let
                        k $ dashed->camel prop-str
                      aset target k nil
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'Tag
            :features $ #{} :js-ffi
        'rm-style $ %{} 'CodeEntry (:doc "|Removes a style property from a DOM element.")
          :code $ quote $ defn rm-style (target op)
            &let
              style-name $ dashed->camel $ calcit.core/to-string op
              do
                -> (.-style target) (js-set style-name nil)
                , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic 'Tag
            :features $ #{} :js-ffi
        'run-effect $ %{} 'CodeEntry
          :doc "|Runs side effect functions.\n\nParameters:\n  target - Target DOM element or component instance, nil if target not found\n  method - Method function to execute on the target\n  coord - Coordinate information for identifying location in console warnings\n\nFunctionality:\n  If target exists, calls method function on target; if target is nil, outputs warning to console.\n  Mainly used to execute various side effects during rendering patch process, such as event listening, DOM operations, etc."
          :code $ quote $ defn run-effect (target method coord)
            if (js-present? target) (method target) (js/console.warn "|Unknown effects target:" coord)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'JsNullish 'respo.dom/DomElement)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.dom/DomElement
              :: 'List 'Number
            :features $ #{} :js-ffi
        'set-svg-prop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn set-svg-prop! (target p value)
            let
                attr $ svg-attr-name $ calcit.core/to-string p
              match value
                (:some text)
                  browser/element-set-attribute! (host-element target) attr text
                (:none)
                  browser/element-remove-attribute! (host-element target) attr
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'Tag $ :: 'Option 'String
        'snapshot-children $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn snapshot-children (parent)
            let
                children $ parent.:children
              loop
                  index 0
                  nodes $ []
                hint-fn $ {}
                  :args $ [] 'Number $ :: 'List 'respo.dom/DomElement
                  :return $ :: 'List 'respo.dom/DomElement
                match
                  js-nullish->option $ .item children index
                  (:none) nodes
                  (:some node)
                    recur (inc index)
                      append nodes $ unsafe-coerce node 'respo.dom/DomElement
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.dom/DomElement
            :features $ #{} :js-ffi
            :return $ :: 'List 'respo.dom/DomElement
        'svg-children? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn svg-children? (target)
            and (svg-target? target) (not= target.:tag-name |foreignObject)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'respo.dom/DomElement
            :features $ #{} :js-ffi
        'svg-parent? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn svg-parent? (target)
            match (js-nullish->option target.:parent-element)
              (:some parent) (svg-children? parent)
              (:none) false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'respo.dom/DomElement
            :features $ #{} :js-ffi
        'svg-target? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn svg-target? (target) (= target.:namespace-uri |http://www.w3.org/2000/svg)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'respo.dom/DomElement
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.render.patch
          :require
            respo.util.format :refer $ dashed->camel event->prop get-style-value prop->attr svg-attr-name
            respo.render.dom :refer $ make-element style->string
            respo.schema.op :as op
            respo.dom :refer $ DomElement
            respo.schema :refer $ DomPatch
            js-ffi.browser :as browser
            respo.ffi.browser :refer $ host-element
            respo.render.events :refer $ install-listener! remove-listener!
    'respo.resource $ %{} 'FileEntry
      :defs $ {}
        '*resource-id $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *resource-id 0
          :examples $ []
          :schema $ :: 'Ref 'Number
        'ResourceAction $ %{} 'CodeEntry
          :doc "|Immutable request lifecycle enum: :started carries request-id; :ready carries request-id and data; :failed carries request-id and error."
          :code $ quote $ defenum ResourceAction (:started 'Number) (:ready 'Number 'Dynamic) (:failed 'Number 'Dynamic)
          :examples $ []
          :schema $ :: 'EnumDef
          :tags $ #{} :data
        'ResourceState $ %{} 'CodeEntry
          :doc "|Immutable resource state record. :data and :error are application payload boundaries; :status and :request-id drive deterministic reducer transitions."
          :code $ quote $ defstruct ResourceState (:status 'Tag)
            :request-id $ :: 'Option 'Number
            :data 'Dynamic
            :error 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
          :tags $ #{} :data
        'load-resource! $ %{} 'CodeEntry
          :doc "|Invokes a zero-argument fetcher once, normalizes its value or Promise, and emits immutable :started then :ready or :failed ResourceAction values. Synchronous fetch errors and Promise-chain errors become :failed. Returns the numeric request id; it does not mutate application state."
          :code $ quote $ defn load-resource! (fetcher emit!)
            let
                fetch-resource $ expect-function fetcher |[Respo/load-resource!]-expected-fetcher
                emit-action! $ expect-function emit! |[Respo/load-resource!]-expected-emitter
                request-id $ next-resource-id!
              emit-action! $ resource-started request-id
              try
                let
                    value $ fetch-resource
                  shared/promise-observe! value
                    fn (ready-value)
                      hint-fn $ {}
                        :args $ [] 'Dynamic
                        :return 'Unit
                      emit-action! $ resource-ready request-id ready-value
                    fn (error)
                      hint-fn $ {}
                        :args $ [] 'Dynamic
                        :return 'Unit
                      emit-action! $ resource-failed request-id error
                fn (error)
                  emit-action! $ resource-failed request-id error
              , request-id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ []
              :: 'Fn $ {} (:return 'T)
                :args $ []
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.resource/ResourceAction
            :features $ #{} :js-ffi
            :generics $ [] 'T
        'next-resource-id! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn next-resource-id! ()
            let
                request-id $ .add @*resource-id 1
              reset! *resource-id request-id
              , request-id
          :examples $ []
          :tags $ #{} :internal
          :tests $ [] $ %{} 'TestEntry (:name |consecutive-ids)
            :code $ quote $ let
                before @*resource-id
                first-id $ next-resource-id!
                second-id $ next-resource-id!
              assert= (.add before 1) first-id
              assert= (.add first-id 1) second-id
              assert= second-id @*resource-id
              reset! *resource-id before
            :tags $ #{} :resource :unit
        'resource-action? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn resource-action? (x)
            and (enum? x)
              = (&enum:definition x) ResourceAction
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Dynamic
          :tags $ #{} :internal
        'resource-failed $ %{} 'CodeEntry
          :doc "|Creates a :failed ResourceAction carrying the failure value."
          :code $ quote $ defn resource-failed (request-id error)
            when
              not $ number? request-id
              raise "|[Respo/resource-failed] expected a numeric request id"
            ResourceAction :failed request-id error
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.resource/ResourceAction)
            :args $ [] 'Number 'Dynamic
        'resource-idle $ %{} 'CodeEntry
          :doc "|Creates an immutable idle ResourceState with optional initial data."
          :code $ quote $ defn resource-idle (initial-data-option)
            ResourceState :status :idle :request-id (Option :none) :data (option:unwrap-or initial-data-option nil) :error nil
          :examples $ [] $ quote
            resource-idle $ {} $ :items ([])
          :schema $ :: 'Fn $ {} (:return 'respo.resource/ResourceState)
            :args $ [] $ :: 'calcit.core/Option 'Dynamic
        'resource-loading? $ %{} 'CodeEntry
          :doc "|Returns true for :pending and :refreshing ResourceState values."
          :code $ quote $ defn resource-loading? (state)
            when
              not $ resource-state? state
              raise "|[Respo/resource-loading?] expected ResourceState"
            let
                status $ :status state
              or (= status :pending) (= status :refreshing)
          :examples $ [] $ quote
            resource-loading? $ resource-reducer (resource-idle) (resource-started 1)
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'respo.resource/ResourceState
        'resource-ready $ %{} 'CodeEntry
          :doc "|Creates a :ready ResourceAction carrying resolved immutable data."
          :code $ quote $ defn resource-ready (request-id data)
            when
              not $ number? request-id
              raise "|[Respo/resource-ready] expected a numeric request id"
            ResourceAction :ready request-id data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.resource/ResourceAction)
            :args $ [] 'Number 'Dynamic
        'resource-reducer $ %{} 'CodeEntry
          :doc "|Purely applies a ResourceAction to ResourceState. Ready and failed actions with stale request ids return the identical current state; refreshes retain previous data."
          :code $ quote $ defn resource-reducer (state action)
            when
              not $ resource-state? state
              raise "|[Respo/resource-reducer] expected ResourceState as the first argument"
            when
              not $ resource-action? action
              raise "|[Respo/resource-reducer] expected ResourceAction as the second argument"
            match action
              (:started request-id)
                ResourceState :status
                  let
                      status $ :status state
                    if
                      or (= :ready status) (= :refreshing status)
                      , :refreshing :pending
                  , :request-id (Option :some request-id) :data (:data state) :error nil
              (:ready request-id data)
                if
                  match (:request-id state)
                    (:some current-id) (= current-id request-id)
                    (:none) false
                  ResourceState :status :ready :request-id (Option :some request-id) :data data :error nil
                  , state
              (:failed request-id error)
                if
                  match (:request-id state)
                    (:some current-id) (= current-id request-id)
                    (:none) false
                  ResourceState :status :error :request-id (Option :some request-id) :data (:data state) :error error
                  , state
          :examples $ [] $ quote
            let
                idle $ resource-idle
                pending $ resource-reducer idle $ resource-started 1
              resource-reducer pending $ resource-ready 1 $ {}
                :items $ [] :a :b
          :schema $ :: 'Fn $ {} (:return 'respo.resource/ResourceState)
            :args $ [] 'respo.resource/ResourceState 'respo.resource/ResourceAction
          :tests $ []
            %{} 'TestEntry (:name |handles-refresh-stale-and-error-results)
              :code $ quote $ let
                  idle $ resource-idle $ %none
                  pending $ resource-reducer idle $ resource-started 1
                  ready $ resource-reducer pending $ resource-ready 1
                    {} $ :value |first
                  refreshing $ resource-reducer ready $ resource-started 2
                  stale $ resource-reducer refreshing $ resource-ready 1
                    {} $ :value |stale
                  failed $ resource-reducer refreshing $ resource-failed 2 |offline
                assert |started-resource-is-pending $ &= :pending $ &struct:nth pending 3 :status
                assert |pending-resource-is-loading $ resource-loading? pending
                assert |matching-result-is-ready $ &= :ready $ &struct:nth ready 3 :status
                assert |refresh-keeps-existing-data $ &=
                  {} $ :value |first
                  &struct:nth refreshing 0 :data
                assert |ready-resource-enters-refreshing $ &= :refreshing $ &struct:nth refreshing 3 :status
                assert |stale-result-is-ignored $ identical? refreshing stale
                assert |matching-failure-is-recorded $ &= :error $ &struct:nth failed 3 :status
                assert |failure-message-is-kept $ &= |offline $ &struct:nth failed 1 :error
              :tags $ #{} :unit
            %{} 'TestEntry (:name |stores-request-id-as-option)
              :code $ quote $ let
                  idle $ resource-idle $ %none
                  pending $ resource-reducer idle $ resource-started 7
                  ready $ resource-reducer pending $ resource-ready 7 |ok
                  stale $ resource-reducer pending $ resource-ready 8 |stale
                assert |idle-has-no-request $ option:none? $ &struct:nth idle 2 :request-id
                match (&struct:nth pending 2 :request-id)
                  (:some id)
                    assert |pending-keeps-request-id $ = 7 id
                  (:none) (assert |pending-request-id-is-missing false)
                match (&struct:nth ready 2 :request-id)
                  (:some id)
                    assert |ready-keeps-request-id $ = 7 id
                  (:none) (assert |ready-request-id-is-missing false)
                assert |stale-result-keeps-option-state $ identical? pending stale
              :tags $ #{} :unit
        'resource-started $ %{} 'CodeEntry
          :doc "|Creates a :started ResourceAction for a numeric request id."
          :code $ quote $ defn resource-started (request-id)
            when
              not $ number? request-id
              raise "|[Respo/resource-started] expected a numeric request id"
            ResourceAction :started request-id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.resource/ResourceAction)
            :args $ [] 'Number
        'resource-state? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn resource-state? (x)
            and (struct? x)
              = (&struct:definition x) ResourceState
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Dynamic
          :tags $ #{} :internal
      :ns $ %{} 'NsEntry
        :doc "|Immutable async resource helpers. Network completion emits ResourceAction values; applications keep ResourceState in their own store and apply resource-reducer from the updater."
        :code $ quote $ ns respo.resource
          :require
            respo.util.detect :refer $ expect-function
            js-ffi.shared :as shared
    'respo.schema $ %{} 'FileEntry
      :defs $ {}
        '*dispatch-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftype-slot :dispatch-op
          :examples $ []
          :schema $ :: 'Dynamic
        'ChildPair $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ChildPair (:key 'Dynamic)
            :node $ :: 'Option 'respo.schema/RenderNode
          :examples $ []
          :schema $ :: 'StructDef
        'Component $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Component (:name 'Tag)
            :effects $ :: 'List 'respo.schema/Effect
            :listeners $ :: 'List 'respo.schema/RespoListener
            :tree $ :: 'Option 'respo.schema/RenderNode
          :examples $ []
          :schema $ :: 'StructDef
        'DomPatch $ %{} 'CodeEntry
          :doc "|Nominal internal command protocol shared by Respo's virtual-tree diff producers and sole DOM patch consumer."
          :code $ quote $ defenum DomPatch
            :replace-prop (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag 'Dynamic
            :add-prop (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag 'Dynamic
            :rm-prop (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag
            :add-style (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag 'Dynamic
            :replace-style (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag 'Dynamic
            :rm-style (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag
            :set-event (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag
            :rm-event (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag
            :add-element (:: 'List 'Dynamic) (:: 'List 'Number) 'Struct
            :rm-element (:: 'List 'Dynamic) (:: 'List 'Number)
            :replace-element (:: 'List 'Dynamic) (:: 'List 'Number) 'Struct
            :append-element (:: 'List 'Dynamic) (:: 'List 'Number) 'Struct
            :move-element (:: 'List 'Number) 'Number $ :: 'Option 'Number
            :effect-mount (:: 'List 'Dynamic) (:: 'List 'Number)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.dom/DomElement
            :effect-unmount (:: 'List 'Dynamic) (:: 'List 'Number)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.dom/DomElement
            :effect-update (:: 'List 'Dynamic) (:: 'List 'Number)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.dom/DomElement
            :effect-before-update (:: 'List 'Dynamic) (:: 'List 'Number)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'respo.dom/DomElement
          :examples $ []
          :schema $ :: 'EnumDef
          :tests $ []
            %{} 'TestEntry
              :name |constructs-and-exhaustively-matches-all-variants
              :code $ quote $ let
                  coord $ [] :root
                  n-coord $ [] 0
                  element $ %{} Element (:name :div)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref nil
                  run! $ fn (_target) &unit
                  patches $ [] (DomPatch :replace-prop coord n-coord :title |next) (DomPatch :add-prop coord n-coord :title |new) (DomPatch :rm-prop coord n-coord :title) (DomPatch :add-style coord n-coord :color |red) (DomPatch :replace-style coord n-coord :color |blue) (DomPatch :rm-style coord n-coord :color) (DomPatch :set-event coord n-coord :click) (DomPatch :rm-event coord n-coord :click) (DomPatch :add-element coord n-coord element) (DomPatch :rm-element coord n-coord) (DomPatch :replace-element coord n-coord element) (DomPatch :append-element coord n-coord element)
                    DomPatch :move-element n-coord 0 $ %:: Option :none
                    DomPatch :effect-mount coord n-coord run!
                    DomPatch :effect-unmount coord n-coord run!
                    DomPatch :effect-update coord n-coord run!
                    DomPatch :effect-before-update coord n-coord run!
                assert |all-variants-construct $ = 17 $ count patches
                match (&list:nth patches 16)
                  (:effect-before-update _coord _n-coord _run!) (assert |last-variant-matches true)
                  _ $ assert |last-variant-is-wrong false
              :tags $ #{} :unit
            %{} 'TestEntry (:name |move-roundtrip)
              :code $ quote $ let
                  op $ DomPatch :move-element ([] 2) 3 $ %:: Option :some 1
                assert= op $ parse-cirru-edn $ format-cirru-edn op
              :tags $ #{} :unit
        'DomProps $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct DomProps
            :class-name $ :: 'JsNullish 'String
            :style $ :: 'JsNullish 'Map
            :value $ :: 'JsNullish 'Dynamic
            :inner-text $ :: 'JsNullish 'Dynamic
            :id $ :: 'JsNullish 'String
            :type $ :: 'JsNullish 'String
            :href $ :: 'JsNullish 'String
            :src $ :: 'JsNullish 'String
            :placeholder $ :: 'JsNullish 'String
            :name $ :: 'JsNullish 'String
            :title $ :: 'JsNullish 'String
            :disabled $ :: 'JsNullish 'Bool
            :checked $ :: 'JsNullish 'Bool
            :spell-check $ :: 'JsNullish 'Bool
            :spellcheck $ :: 'JsNullish 'Bool
            :autofocus $ :: 'JsNullish 'Bool
            :tab-index $ :: 'JsNullish 'Number
            :read-only $ :: 'JsNullish 'Bool
            :data-name $ :: 'JsNullish 'String
            :data-comp $ :: 'JsNullish 'String
            :role $ :: 'JsNullish 'String
            :aria-label $ :: 'JsNullish 'String
            :aria-labelledby $ :: 'JsNullish 'String
            :aria-describedby $ :: 'JsNullish 'String
            :aria-hidden $ :: 'JsNullish 'Bool
            :selected $ :: 'JsNullish 'Bool
            :target $ :: 'JsNullish 'String
            :on-click $ :: 'JsNullish 'respo.schema/EventHandler
            :on-input $ :: 'JsNullish 'respo.schema/EventHandler
            :on-focus $ :: 'JsNullish 'respo.schema/EventHandler
            :on-blur $ :: 'JsNullish 'respo.schema/EventHandler
            :on-keydown $ :: 'JsNullish 'respo.schema/EventHandler
            :on-keyup $ :: 'JsNullish 'respo.schema/EventHandler
            :on-change $ :: 'JsNullish 'respo.schema/EventHandler
            :on-mousedown $ :: 'JsNullish 'respo.schema/EventHandler
            :on-paste $ :: 'JsNullish 'respo.schema/EventHandler
            :on-mouseup $ :: 'JsNullish 'respo.schema/EventHandler
            :innerHTML $ :: 'JsNullish 'String
            :rel $ :: 'JsNullish 'String
            :defer $ :: 'JsNullish 'Bool
            :on $ :: 'JsNullish 'Map
            :alt $ :: 'JsNullish 'String
            :draggable $ :: 'JsNullish 'Bool
            :content $ :: 'JsNullish 'String
            :charset $ :: 'JsNullish 'String
            :multiple $ :: 'JsNullish 'Bool
            :accept $ :: 'JsNullish 'String
            :ref $ :: 'JsNullish 'Fn
          :examples $ []
          :schema $ :: 'StructDef
        'Effect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Effect (:name 'Tag)
            :coord $ :: 'List 'Dynamic
            :args $ :: 'List 'Dynamic
            :method $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] (:: 'List 'Dynamic) (:: 'List 'Dynamic)
          :examples $ []
          :schema $ :: 'StructDef
        'Element $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Element (:name 'Tag)
            :coord $ :: 'Option $ :: 'List 'Dynamic
            :attrs $ :: 'List $ :: 'List 'Dynamic
            :style $ :: 'List $ :: 'List 'Dynamic
            :event $ :: 'Map 'Tag $ :: 'JsNullish 'Fn
            :children $ :: 'List 'respo.schema/ChildPair
            :ref $ :: 'JsNullish 'Fn
          :examples $ []
          :schema $ :: 'StructDef
        'EventConfig $ %{} 'CodeEntry
          :doc "|Mount-time event policy: whether Respo stops propagation, and whether handlers use on* properties or independent native listeners."
          :code $ quote $ defstruct EventConfig (:stop-propagation? 'Bool) (:listener-mode 'respo.schema/ListenerMode)
          :examples $ []
          :schema $ :: 'StructDef
        'EventHandler $ %{} 'CodeEntry
          :doc "|Event callback signature. Respo delivers an immutable map produced by event->edn together with the application dispatch function. The exported value is a no-op callback, matching the declared callable type rather than a Unit placeholder."
          :code $ quote $ def EventHandler
            fn (_event _dispatch!) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'Map 'Tag 'Dynamic)
              :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                :args $ [] 'Dynamic
        'ListenerMode $ %{} 'CodeEntry
          :doc "|Event installation policy. :property preserves the existing on* property behavior; :add-event-listener preserves external property handlers and registers independent Respo callbacks."
          :code $ quote $ defenum ListenerMode (:property) (:add-event-listener)
          :examples $ []
          :schema $ :: 'EnumDef
        'RenderNode $ %{} 'CodeEntry (:doc "|渲染节点的具名并集；每个变体保留具体 Element 或 Component payload。")
          :code $ quote $ defenum RenderNode (:element 'respo.schema/Element) (:component 'respo.schema/Component)
          :examples $ []
          :schema $ :: 'EnumDef
        'RespoEvent $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct RespoEvent (:type 'Tag)
            :value $ :: 'JsNullish 'Dynamic
            :checked $ :: 'JsNullish 'Bool
            :original-event 'Dynamic
            :event 'Dynamic
            :key $ :: 'JsNullish 'String
            :code $ :: 'JsNullish 'String
            :key-code $ :: 'JsNullish 'Number
            :keycode $ :: 'JsNullish 'Number
            :ctrl? $ :: 'JsNullish 'Bool
            :meta? $ :: 'JsNullish 'Bool
            :alt? $ :: 'JsNullish 'Bool
            :shift? $ :: 'JsNullish 'Bool
            :msg $ :: 'JsNullish 'String
          :examples $ []
          :schema $ :: 'StructDef
        'RespoListener $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct RespoListener (:name 'Tag) (:handler 'Fn)
          :examples $ []
          :schema $ :: 'StructDef
        'cache-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cache-info
            {} (:value nil) (:initial-loop nil) (:last-hit nil) (:hit-times 0)
          :examples $ []
          :schema $ :: 'Map
        'dev? $ %{} 'CodeEntry
          :doc "|Boolean flag indicating if the application is running in development mode."
          :code $ quote $ def dev?
            &= |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'effect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def effect
            {} (:name nil) (:respo-node :effect)
              :coord $ []
              :args $ []
              :method $ fn (props args)
                ; args $ [] action parent at-place?
          :examples $ []
          :schema $ :: 'Map
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.schema
    'respo.schema.listener $ %{} 'FileEntry
      :defs $ {}
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.schema.listener
    'respo.test.dom $ %{} 'FileEntry
      :defs $ {}
        'accept-dom-patches $ %{} 'CodeEntry
          :doc "|Typed test boundary used by compile-negative checks to prove application operations cannot be passed as DOM patches."
          :code $ quote $ defn accept-dom-patches (patches) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'List 'respo.schema/DomPatch
        'comp-event-shell $ %{} 'CodeEntry (:doc |)
          :code $ quote $ respo.core/defcomp comp-event-shell (tree) tree
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'respo.schema/Element
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! (root-host html-host)
            assert |typed-DOM-host-traverses-nested-child $ = &unit $ compare-to-dom!
              div ({})
                span $ {}
              , root-host
            assert |typed-DOM-host-reads-innerHTML $ = &unit $ compare-to-dom!
              div $ {} $ :innerHTML |<b>x</b>
              , html-host
            assert= |backgroundColor $ dashed->camel |background-color
            assert= |fontSize $ dashed->camel |font-size
            assert= |spellcheck $ dashed->camel |spell-check
            println |typed-DOM-host-contract-ok
            svg-host-smoke!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'js-ffi.browser/DomElementHost 'js-ffi.browser/DomElementHost
            :features $ #{} :js-ffi
        'svg-host-smoke! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn svg-host-smoke! ()
            let
                child $ with-attrs
                  create-element :rect $ {}
                  {} (:fill |red)
                    :strokeWidth $ to-string 2
                root $ with-attrs
                  create-element :svg ({}) child $ create-element :foreignObject ({})
                    create-element :div $ {}
                  {} $ :width $ to-string 320
              let
                  host $ make-element root
                    fn (_name)
                      fn (_event _coord)
                        hint-fn $ {}
                          :args $ [] (quote respo.dom/DomEvent)
                            :: (quote List) (quote Dynamic)
                          :return $ quote Unit
                        , &unit
                    []
                append-element host
                  with-attrs
                    create-element :circle $ {}
                    {} $ :r $ to-string 5
                  fn (_name)
                    fn (_event _coord)
                      hint-fn $ {}
                        :args $ [] (quote respo.dom/DomEvent)
                          :: (quote List) (quote Dynamic)
                        :return $ quote Unit
                      , &unit
                  []
                , host
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ []
            :features $ #{} :js-ffi
        'verify-component-event-coords! $ %{} 'CodeEntry
          :doc "|DOM regression for component to element and element to component switches, including an identical nested defcomp child. Root and descendant clicks must resolve the current handlers; removed focus handlers must stay removed."
          :code $ quote $ defn verify-component-event-coords! (mount root child click!)
            let
                dispatched $ atom $ []
                dispatch! $ fn (op) (respo.core/append-dynamic! dispatched op)
                child-tree $ comp-event-shell $ span
                  {} $ :on-click $ fn (_event d!) (d! :child)
                wrapped $ comp-event-shell $ div
                  {}
                    :on-click $ fn (_event d!) (d! :wrapped-root)
                    :on-focus $ fn (_event _d!) &unit
                  , child-tree
                plain $ div
                  {} $ :on-click $ fn (_event d!) (d! :plain-root)
                  , child-tree
                rewrapped $ comp-event-shell $ div
                  {} $ :on-click $ fn (_event d!) (d! :rewrapped-root)
                  , child-tree
                make-app $ fn (tree)
                  hint-fn $ {}
                    :args $ [] 'Struct
                    :return 'respo.schema/Component
                  respo.schema/Component :name :coord-fixture :effects ([]) :listeners ([]) :tree $ Option :some $ respo.util.detect/as-render-node tree
              respo.core/realize-ssr! mount (make-app wrapped) dispatch!
              click! root
              click! child
              assert |wrapped-events-before-switch $ &=
                [] (:: :wrapped-root) (:: :child)
                , @dispatched
              respo.core/render! mount (make-app plain) dispatch!
              click! root
              click! child
              assert |component-to-element-refreshes-descendant-coords $ &=
                [] (:: :wrapped-root) (:: :child) (:: :plain-root) (:: :child)
                , @dispatched
              respo.core/render! mount (make-app rewrapped) dispatch!
              click! root
              click! child
              assert |element-to-component-refreshes-descendant-coords $ &=
                [] (:: :wrapped-root) (:: :child) (:: :plain-root) (:: :child) (:: :rewrapped-root) (:: :child)
                , @dispatched
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'respo.dom/DomElement 'respo.dom/DomElement $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'respo.dom/DomElement
            :features $ #{} :js-ffi
        'verify-dom-regressions! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn verify-dom-regressions! (mount root child click!) (verify-realize-ssr-ref! mount root child click!) (verify-component-event-coords! mount root child click!)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'respo.dom/DomElement 'respo.dom/DomElement $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'respo.dom/DomElement
            :features $ #{} :js-ffi
        'verify-realize-ssr-ref! $ %{} 'CodeEntry
          :doc "|SSR adoption regression: preserve root and descendant DOM nodes, attach click handlers immediately, update shared dispatch and handlers on later renders, and run the ref and mount effect exactly once."
          :code $ quote $ defn verify-realize-ssr-ref! (mount root child click!)
            let
                refs $ atom $ []
                mounts $ atom $ []
                dispatched $ atom $ []
                later-dispatched $ atom $ []
                dispatch! $ fn (op) (respo.core/append-dynamic! dispatched op)
                later-dispatch! $ fn (op) (respo.core/append-dynamic! later-dispatched op)
                ref! $ fn (target) (respo.core/append-dynamic! refs target)
                mount-effect $ respo.core/effect-on-mount $ fn (target) (respo.core/append-dynamic! mounts target)
                make-component $ fn (op)
                  hint-fn $ {}
                    :args $ [] 'Tag
                    :return 'respo.schema/Component
                  let
                      handler $ fn (_event d!) (d! op)
                      child-element $ span $ {} (:on-click handler)
                      element $ div
                        {} (:on-click handler) (:ref ref!)
                        , child-element
                    respo.schema/Component :name :ssr-fixture :effects ([] mount-effect) :listeners ([]) :tree $ Option :some $ respo.util.detect/as-render-node element
                component $ make-component :adopted
              assert= |<div><span></span></div> $ respo.render.html/make-string component
              respo.core/realize-ssr! mount component dispatch!
              assert |SSR-ref-receives-adopted-root $ &= ([] root) @refs
              assert |SSR-mount-effect-runs-once $ &= ([] root) @mounts
              click! root
              click! child
              assert |SSR-events-work-during-adoption $ &=
                [] (:: :adopted) (:: :adopted)
                , @dispatched
              respo.core/render! mount component later-dispatch!
              click! root
              click! child
              assert |SSR-first-render-updates-dispatch $ &=
                [] (:: :adopted) (:: :adopted)
                , @later-dispatched
              respo.core/render! mount (make-component :updated) later-dispatch!
              click! root
              click! child
              assert |SSR-later-render-updates-handlers $ &=
                [] (:: :adopted) (:: :adopted) (:: :updated) (:: :updated)
                , @later-dispatched
              assert |SSR-old-dispatch-is-no-longer-used $ &=
                [] (:: :adopted) (:: :adopted)
                , @dispatched
              assert |SSR-ref-is-not-remounted $ &= ([] root) @refs
              assert |SSR-effect-is-not-remounted $ &= ([] root) @mounts
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.dom/DomElement 'respo.dom/DomElement 'respo.dom/DomElement $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'respo.dom/DomElement
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.test.dom
          :require
            respo.core :refer $ div span create-element with-attrs
            respo.util.dom :refer $ compare-to-dom!
            js-ffi.browser :as browser
            respo.util.format :refer $ dashed->camel
            respo.render.dom :refer $ make-element
            respo.render.patch :refer $ append-element
    'respo.test.main $ %{} 'FileEntry
      :defs $ {}
        '*async-checks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *async-checks 0
          :examples $ []
          :schema $ :: 'Ref 'Number
        'effect-list-body-component $ %{} 'CodeEntry (:doc |)
          :code $ quote $ respo.core/defcomp effect-list-body-component ()
            []
              respo.core/effect-on-mount $ fn (_target) &unit
              respo.core/span $ {} $ :inner-text |ready
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
          :tests $ [] $ %{} 'TestEntry (:name |extracts-effects-and-keeps-struct-tree)
            :code $ quote $ let
                component $ effect-list-body-component
                tree-option $ respo.util.detect/component-tree component
              match tree-option
                (:none) (assert |effect-list-body-has-tree false)
                (:some tree)
                  assert |effect-list-body-keeps-a-struct-tree $ and (struct? tree)
                    &= :span $ respo.util.detect/element-name tree
              assert |one-effect-is-extracted $ = 1 $ count (respo.util.detect/component-effects component)
            :tags $ #{} :unit
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (reset! *async-checks 0)
            let
                tree $ div $ {} (:value "|a\"b\"c") (:data-name |y)
                  :style $ {} $ :content "|d\"e\"f"
              assert |JS-HTML-keeps-escaped-attributes-and-styles $ = "|<div data-name=\"y\" style=\"content:d&quot;e&quot;f;\" value=\"a&quot;b&quot;c\"></div>" $ make-string tree
            assert |JS-SSR-omits-ref-callbacks $ = |<div></div> $ make-string
              div $ {} $ :ref
                fn (_target) nil
            assert |Node-without-Canvas-uses-zero-width $ = 0 $ text-width |demo 16 |sans-serif
            let
                render-count $ atom 0
                schedule! $ make-render-scheduler
                  fn () $ swap! render-count inc
                  Option :none
              schedule!
              schedule!
              shared/queue-microtask! $ fn () (swap! *async-checks inc)
                assert |default-JS-scheduler-coalesces-microtasks $ = 1 @render-count
            let
                calls $ atom 0
                actions $ atom $ assert-type ([]) (:: 'List 'respo.resource/ResourceAction)
                request-id $ load-resource!
                  fn () (swap! calls inc) |ready
                  fn (action) (swap! actions conj action)
              assert |resource-fetcher-runs-once $ = 1 @calls
              assert |resource-load-starts-synchronously $ = (resource-started request-id)
                assert-type
                  option:unwrap $ first @actions
                  , 'respo.resource/ResourceAction
              shared/queue-microtask! $ fn () (swap! *async-checks inc)
                assert |resolved-resource-emits-ready $ = (resource-ready request-id |ready)
                  assert-type
                    option:unwrap $ get @actions 1
                    , 'respo.resource/ResourceAction
            let
                actions $ atom $ assert-type ([]) (:: 'List 'respo.resource/ResourceAction)
                request-id $ load-resource!
                  fn () $ raise |offline
                  fn (action) (swap! actions conj action)
              assert |sync-fetch-failure-emits-two-actions $ = 2 $ count @actions
              match
                option:unwrap $ last @actions
                (:failed failed-id error)
                  do
                    assert |failed-action-keeps-request-id $ = request-id failed-id
                    assert |sync-failure-keeps-error-message $ = |offline $ :message (shared/normalize-error error)
                _ $ assert |expected-failed-resource-action false
            let
                actions $ atom $ assert-type ([]) (:: 'List 'respo.resource/ResourceAction)
                request-id $ load-resource!
                  fn () |ready
                  fn (action) (swap! actions conj action)
                    match action
                      (:ready _id _value) (raise |emit-ready-failed)
                      _ &unit
              shared/queue-microtask! $ fn () $ shared/queue-microtask!
                fn () (swap! *async-checks inc)
                  match
                    option:unwrap $ last @actions
                    (:failed failed-id error)
                      do
                        assert |emitter-failure-keeps-request-id $ = request-id failed-id
                        assert |emitter-failure-is-dispatched $ = |emit-ready-failed $ :message (shared/normalize-error error)
                    _ $ assert |expected-emitter-failure-action false
            browser/set-timeout!
              fn () $ assert |all-async-checks-ran $ = 3 @*async-checks
              , 0
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'nil-body-component $ %{} 'CodeEntry (:doc |)
          :code $ quote $ respo.core/defcomp nil-body-component ()
            &map:get ({}) :missing
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
          :tests $ [] $ %{} 'TestEntry (:name |normalizes-nil-body-to-renderable-span)
            :code $ quote $ let
                component $ nil-body-component
                tree-option $ respo.util.detect/component-tree component
              match tree-option
                (:none) (assert |nil-body-should-produce-a-tree false)
                (:some tree)
                  assert |nil-body-becomes-renderable-span $ &= :span $ respo.util.detect/element-name tree
            :tags $ #{} :unit
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println |reload.)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.test.main
          :require
            respo.core :refer $ div make-render-scheduler
            respo.render.html :refer $ make-string
            respo.util.dom :refer $ text-width
            respo.resource :refer $ load-resource! resource-started resource-ready
            js-ffi.shared :as shared
            js-ffi.browser :as browser
    'respo.util.detect $ %{} 'FileEntry
      :defs $ {}
        '=seq $ %{} 'CodeEntry (:doc "|Recursively checks if two sequences are equal.")
          :code $ quote $ defn =seq (xs ys)
            let
                a-empty? $ empty? xs
                b-empty? $ empty? ys
              cond
                  and a-empty? b-empty?
                  , true
                (or a-empty? b-empty?) false
                (&= (&list:first xs) (&list:first ys))
                  recur (&list:rest xs) (&list:rest ys)
                true false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] (:: 'List 'Dynamic) (:: 'List 'Dynamic)
        'as-component $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-component (value)
            if (struct? value)
              if (&struct:matches? value respo.schema/Component) value $ raise $ str "|as-component expected a Component, but received: " (type-of value)
              raise $ str "|as-component expected a Component, but received: " $ type-of value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'as-effect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-effect (value)
            if (struct? value)
              if (&struct:matches? value respo.schema/Effect) value $ raise $ str "|as-effect expected a Effect, but received: " (type-of value)
              raise $ str "|as-effect expected a Effect, but received: " $ type-of value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] 'Dynamic
        'as-element $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-element (value)
            if (struct? value)
              if (&struct:matches? value respo.schema/Element) value $ raise $ str "|as-element expected an Element, but received: " (type-of value)
              raise $ str "|as-element expected an Element, but received: " $ type-of value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'Dynamic
        'as-listener $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-listener (value)
            if (struct? value)
              if (&struct:matches? value respo.schema/RespoListener) value $ raise $ str "|as-listener expected a RespoListener, but received: " (type-of value)
              raise $ str "|as-listener expected a RespoListener, but received: " $ type-of value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/RespoListener)
            :args $ [] 'Dynamic
        'as-render-node $ %{} 'CodeEntry
          :doc "|在创建边界标记 Element 或 Component，保留 payload 的身份；非法节点报告组件树错误。"
          :code $ quote $ defn as-render-node (value)
            cond
                element? value
                respo.schema/RenderNode :element $ as-element value
              (component? value)
                respo.schema/RenderNode :component $ as-component value
              true $ raise |invalid-component-tree
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/RenderNode)
            :args $ [] 'NodeInput
            :generics $ [] 'NodeInput
          :tests $ []
            %{} 'TestEntry (:name |preserves-element-payload)
              :code $ quote $ let
                  element $ respo.core/span $ {}
                  node $ as-render-node element
                match node
                  (:element payload)
                    assert |element-identity $ identical? element payload
                  (:component _) (assert |expected-element false)
                assert |value-identity $ identical? element $ render-node-value node
              :tags $ #{} :unit
            %{} 'TestEntry (:name |preserves-component-payload-and-empty-tree)
              :code $ quote $ let
                  component $ respo.schema/Component :name :empty :effects ([]) :listeners ([]) :tree $ %none
                  node $ as-render-node component
                match node
                  (:component payload)
                    assert |component-identity $ identical? component payload
                  (:element _) (assert |expected-component false)
                assert |value-identity $ identical? component $ render-node-value node
                assert |keeps-none-tree $ option:none? $ component-tree component
              :tags $ #{} :unit
            %{} 'TestEntry (:name |rejects-invalid-node)
              :code $ quote $ let
                  caught? $ atom false
                try
                  as-render-node $ {}
                  fn (error) (assert= |invalid-component-tree error) (reset! caught? true)
                assert |invalid-node-rejected $ deref caught?
              :tags $ #{} :unit
        'child-pair-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn child-pair-value (pair)
            render-node-value $ option:unwrap $ :node pair
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Struct)
            :args $ [] 'respo.schema/ChildPair
        'component-effects $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn component-effects (value)
            let
                component $ assert-type value 'respo.schema/Component
              :effects component
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.schema/Component
            :return $ :: 'List 'respo.schema/Effect
        'component-listeners $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn component-listeners (value)
            let
                component $ assert-type value 'respo.schema/Component
              :listeners component
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.schema/Component
            :return $ :: 'List 'respo.schema/RespoListener
        'component-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn component-name (value)
            let
                component $ assert-type value 'respo.schema/Component
              :name component
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Tag)
            :args $ [] 'respo.schema/Component
        'component-tree $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn component-tree (value)
            let
                component $ assert-type value 'respo.schema/Component
              option:map (:tree component) respo.util.detect/render-node-value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.schema/Component
            :return $ :: 'calcit.core/Option 'Struct
        'component? $ %{} 'CodeEntry
          :doc "|check if value is a Respo component. returns true for component records, false otherwise."
          :code $ quote $ defn component? (x)
            if (struct? x)
              = (&struct:definition x) schema/Component
              , false
          :examples $ []
            quote $ component? $ defcomp comp-demo ()
              div $ {}
            quote $ component? $ div ({})
            quote $ component? nil
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Dynamic
        'effect-args $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn effect-args (value)
            let
                effect $ assert-type value 'respo.schema/Effect
              :args effect
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.schema/Effect
            :return $ :: 'List 'Dynamic
        'effect-method $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn effect-method (value)
            let
                effect $ assert-type value 'respo.schema/Effect
              :method effect
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Fn)
            :args $ [] 'respo.schema/Effect
        'effect-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn effect-name (value)
            let
                effect $ assert-type value 'respo.schema/Effect
              :name effect
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Tag)
            :args $ [] 'respo.schema/Effect
        'effect? $ %{} 'CodeEntry
          :doc "|Checks if the given value is a Respo Effect record."
          :code $ quote $ defn effect? (x)
            and (struct? x)
              = (&struct:definition x) schema/Effect
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Dynamic
        'element-attrs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn element-attrs (value)
            let
                element $ assert-type value 'respo.schema/Element
              :attrs element
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.schema/Element
            :return $ :: 'List $ :: 'List 'Dynamic
        'element-children $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn element-children (value)
            :children $ as-element value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'List 'respo.schema/ChildPair
        'element-event $ %{} 'CodeEntry
          :doc "|返回元素事件表，保留已有 nil/undefined handler 的语义；消费者在调用前排除 nullish 值。"
          :code $ quote $ defn element-event (value)
            let
                element $ assert-type value 'respo.schema/Element
              :event element
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.schema/Element
            :return $ :: 'Map 'Tag $ :: 'JsNullish 'Fn
        'element-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn element-name (value)
            let
                element value
              :name element
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Tag)
            :args $ [] 'respo.schema/Element
        'element-ref $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn element-ref (value)
            let
                element value
              :ref element
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.schema/Element
            :return $ :: 'JsNullish 'Fn
        'element-style $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn element-style (value)
            let
                element $ assert-type value 'respo.schema/Element
              :style element
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.schema/Element
            :return $ :: 'List $ :: 'List 'Dynamic
        'element? $ %{} 'CodeEntry
          :doc "|check if value is a Respo element. returns true for element records, false otherwise."
          :code $ quote $ defn element? (x)
            if (struct? x)
              = (&struct:definition x) schema/Element
              , false
          :examples $ []
            quote $ element? $ div ({})
            quote $ element? $ span
              {} $ :inner-text |text
            quote $ element? nil
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Dynamic
        'expect-function $ %{} 'CodeEntry
          :doc "|验证值可调用后原样返回，保留调用方已有的具体函数签名；运行时仍对非法输入抛出指定消息。开放 Dynamic 输入仍需在业务边界建立具体合同。"
          :code $ quote $ defn expect-function (value message)
            when
              not $ fn? value
              raise message
            , value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Callback)
            :args $ [] 'Callback 'String
            :generics $ [] 'Callback
          :tags $ #{} :internal
          :tests $ []
            %{} 'TestEntry (:name |preserves-concrete-callback)
              :code $ quote $ let
                  callback $ fn (n)
                    hint-fn $ {}
                      :args $ [] 'Number
                      :return 'Number
                    inc n
                  checked $ expect-function callback |expected-function
                assert |callback-identity-preserved $ identical? callback checked
                assert= 4 $ checked 3
              :tags $ #{} :unit
            %{} 'TestEntry (:name |rejects-non-function)
              :code $ quote $ let
                  caught? $ atom false
                try (expect-function :invalid |expected-callback)
                  fn (error) (assert= |expected-callback error) (reset! caught? true)
                assert |validation-still-raises @caught?
              :tags $ #{} :unit
        'listener-handler $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn listener-handler (value)
            let
                listener $ assert-type value 'respo.schema/RespoListener
              :handler listener
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Fn)
            :args $ [] 'respo.schema/RespoListener
        'listener? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn listener? (item)
            and (struct? item)
              = :RespoListener $ &struct:get-name item
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Dynamic
        'make-child-pair $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-child-pair (key node)
            respo.schema/ChildPair :key key :node $ if (nil? node) (Option :none)
              Option :some $ as-render-node node
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/ChildPair)
            :args $ [] 'KeyInput 'NodeInput
            :generics $ [] 'KeyInput 'NodeInput
        'render-node-value $ %{} 'CodeEntry (:doc "|通过具名变体读取原始节点；用于保留既有 component-tree 读取合同。")
          :code $ quote $ defn render-node-value (node)
            match node
              (:element element) element
              (:component component) component
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Struct)
            :args $ [] 'respo.schema/RenderNode
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.util.detect
          :require $ respo.schema :as schema
    'respo.util.dom $ %{} 'FileEntry
      :defs $ {}
        'compare-to-dom! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn compare-to-dom! (vdom element)
            ; println |compare (:name vdom)
              map :name $ vals $ respo.util.detect/element-children vdom
            ; js/console.log element
            let
                virtual-name $ turn-string $ :name vdom
                real-name $ element :local-name
              when (not= virtual-name real-name)
                js/console.warn "|SSR checking: tag names do not match:" (to-lispy-string vdom) element
            if
              not=
                count $ respo.util.detect/element-children vdom
                element :child-element-count
              let
                  maybe-html $ &map:get
                    pairs-map $ :attrs vdom
                    , :innerHTML
                if (calcit.core/non-nil? maybe-html)
                  when
                    not= (respo.util.format/scalar-attribute-text maybe-html) (element :inner-html)
                    js/console.warn "|SSR checking: noticed dom containing innerHTML:" element
                  do (js/console.error "|SSR checking: children sizes do not match!")
                    js/console.log |virtual: $ -> (respo.util.detect/element-children vdom) (map respo.util.detect/child-pair-value) (map :name) to-lispy-string
                    js/console.log |real: $ element :children
              let
                  real-children $ element :children
                loop
                    acc 0
                    other-children $ respo.util.detect/element-children vdom
                  when
                    not $ empty? other-children
                    compare-to-dom!
                      as-element $ respo.util.detect/child-pair-value $ &list:nth other-children 0
                      option:unwrap $ browser/child-element-at real-children acc
                    recur (inc acc) (&list:rest other-children)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'respo.schema/Element 'js-ffi.browser/DomElementHost
            :features $ #{} :js-ffi
        'create-shared-canvas-context $ %{} 'CodeEntry
          :doc "|Creates the shared Canvas context behind an explicit JavaScript FFI boundary."
          :code $ quote $ defn create-shared-canvas-context ()
            if (browser/document-available?)
              (unsafe-coerce (browser/create-element |canvas) 'respo.dom/DomCanvasElement)
                , .get-context |2d
              , nil
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :features $ #{} :js-ffi
            :return $ :: 'JsNullish 'respo.dom/DomCanvasContext
        'shared-canvas-context $ %{} 'CodeEntry
          :doc "|Shared Canvas 2D context for measuring text width or other canvas operations."
          :code $ quote $ def shared-canvas-context (create-shared-canvas-context)
          :examples $ []
          :schema $ :: 'JsNullish 'respo.dom/DomCanvasContext
        'text-width $ %{} 'CodeEntry
          :doc "|Measures text with a shared Canvas 2D context. Returns 0 when Canvas is unavailable, including server-side rendering and Node.js tests."
          :code $ quote $ defn text-width (content font-size font-family)
            match (js-nullish->option shared-canvas-context)
              (:none) 0
              (:some context)
                do
                  set! context.:font $ str font-size |px (char-from-code 32) font-family
                  let
                      metrics $ context .measure-text content
                    metrics.:width
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'String 'Number 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.util.dom
          :require
            respo.util.list :refer $ val-of-first
            respo.dom :refer $ DomCanvasContext DomTextMetrics
            js-ffi.browser :as browser
            respo.util.detect :refer $ as-element
    'respo.util.format $ %{} 'FileEntry
      :defs $ {}
        'coerce-component $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn coerce-component (markup) markup
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'respo.schema/Component
        'coerce-element $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn coerce-element (markup) markup
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'respo.schema/Element
        'create-dashed-letter-pattern $ %{} 'CodeEntry
          :doc "|Creates the JavaScript RegExp behind an explicit FFI function so dashed-letter-pattern remains a value."
          :code $ quote $ defn create-dashed-letter-pattern () (new js/RegExp |-[a-z] |g)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'dashed->camel $ %{} 'CodeEntry
          :doc "|convert dashed-case CSS property names to camelCase. e.g. \"background-color\" -> \"backgroundColor\"."
          :code $ quote $ defn dashed->camel (x)
            if (= x |spell-check) |spellcheck $ &let
              result $ .!replace x dashed-letter-pattern uppercase-dashed-match
              if (string? result) result $ raise "|dashed->camel expected a String result"
          :examples $ []
            quote $ dashed->camel |background-color
            quote $ dashed->camel |font-size
            quote $ dashed->camel |margin-top
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'dashed-letter-pattern $ %{} 'CodeEntry
          :doc "|Regex pattern for finding dashed-case letters (e.g. -a) to convert to camelCase."
          :code $ quote $ def dashed-letter-pattern (create-dashed-letter-pattern)
          :examples $ []
          :schema $ :: 'Dynamic
        'event->edn $ %{} 'CodeEntry
          :doc "|Converts a native DOM event into a Respo EDN event structure."
          :code $ quote $ defn event->edn (event)
            let
                event-type $ event.:type
                keyboard-event $ unsafe-coerce event 'respo.dom/DomKeyboardEvent
              -> (event-base-edn event event-type keyboard-event) (assoc :original-event event) (assoc :event event)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.dom/DomEvent
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'event->prop $ %{} 'CodeEntry
          :doc "|Converts an event keyword (e.g. :click) to a prop name string (e.g. 'onclick')."
          :code $ quote $ defn event->prop (x)
            str |on $ to-string x
          :examples $ [] $ quote (event->prop :click)
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Tag
        'event->string $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event->string (x)
            &str:slice (calcit.core/to-string x) 3
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'T
            :generics $ [] 'T
            :where $ {} $ 'T 'ToString
          :tests $ [] $ %{} 'TestEntry (:name |keeps-tag-and-string-event-names)
            :code $ quote $ do
              assert= |click $ respo.util.format/event->string :on-click
              assert= |change $ respo.util.format/event->string |on-change
            :tags $ #{} :unit
        'event-base-edn $ %{} 'CodeEntry (:doc "|按事件类型构造事件 EDN 的基础字段。")
          :code $ quote $ defn event-base-edn (event event-type keyboard-event)
            match event-type
              |click $ {} $ :type :click
              |keydown $ -> (map-keyboard-event keyboard-event) (&map:assoc :type :keydown)
                &map:assoc :key-code $ keyboard-event.:key-code
                &map:assoc :keycode $ keyboard-event.:key-code
              |keypress $ &map:assoc (map-keyboard-event keyboard-event) :type :keypress
              |keyup $ &map:assoc (map-keyboard-event keyboard-event) :type :keyup
              |input $ {} (:type :input)
                :value $ input-event-value event
                :checked $ input-event-checked? event
              |change $ {} (:type :change)
                :value $ input-event-value event
              |focus $ {} $ :type :focus
              _ $ {} (:type event-type)
                :msg $ str "|Unhandled event: " event-type
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.dom/DomEvent 'String 'respo.dom/DomKeyboardEvent
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'get-style-value $ %{} 'CodeEntry
          :doc "|Formats a style value for a given property. Adds px to numeric values when the property expects units, and returns an empty string for nil so DOM updates and SSR output can clear the declaration safely."
          :code $ quote $ defn get-style-value (x prop)
            cond
                string? x
                , x
              (tag? x) (to-string x)
              (number? x)
                if (contains? unitless-props prop) (str x) (str x |px)
              (nil? x) |
              true $ str x
          :examples $ []
            quote $ assert= |10px $ get-style-value 10 |width
            quote $ assert= |1 $ get-style-value 1 |opacity
            quote $ assert= | $ get-style-value nil |width
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic 'String
          :tests $ [] $ %{} 'TestEntry (:name |formats-style-values)
            :code $ quote $ do
              assert |string-is-kept $ = |12rem $ get-style-value |12rem |width
              assert |tag-is-stringified $ = |block $ get-style-value :block |display
              assert |length-numbers-use-pixels $ = |12px $ get-style-value 12 |width
              assert |unitless-numbers-stay-unitless $ = |0.5 $ get-style-value 0.5 |opacity
              assert |nil-clears-the-value $ = | $ get-style-value nil |width
            :tags $ #{} :unit
        'hsl $ %{} 'CodeEntry
          :doc "|Generates HSL color string. Arguments: h, s (percent), l (percent), optional alpha (0-1)."
          :code $ quote $ defn hsl (h s l & alpha-values)
            let
                a $ if (empty? alpha-values) 1 $ &list:nth alpha-values 0
              str "|hsl(" h |, s |%, l |%, a "|)"
          :examples $ []
            quote $ hsl 200 80 50
            quote $ hsl 0 100 50 0.5
          :schema $ :: 'Fn $ {} (:rest 'Number) (:return 'String)
            :args $ [] 'Number 'Number 'Number
        'input-event-checked? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn input-event-checked? (event)
            let
                input-event event
              match
                js-nullish->option $ input-event.:target
                (:none)
                  raise |[Respo/input-event-checked?]-event-has-no-target
                (:some target) (target.:checked)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'respo.dom/DomEvent
            :features $ #{} :js-ffi
        'input-event-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn input-event-value (event)
            let
                input-event event
              match
                js-nullish->option $ input-event.:target
                (:none) (raise |[Respo/input-event-value]-event-has-no-target)
                (:some target) (target.:value)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'respo.dom/DomEvent
            :features $ #{} :js-ffi
        'map-keyboard-event $ %{} 'CodeEntry
          :doc "|Extracts key information from a JavaScript KeyboardEvent."
          :code $ quote $ defn map-keyboard-event (event)
            {}
              :key $ event.:key
              :code $ event.:code
              :ctrl? $ event.:ctrl-key
              :meta? $ event.:meta-key
              :alt? $ event.:alt-key
              :shift? $ event.:shift-key
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'respo.dom/DomKeyboardEvent
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'mute-element $ %{} 'CodeEntry
          :doc "|Recursively remove event handlers from a component or element tree.\n\nThis is used in SSR-related flows where the initial HTML should not carry live client event functions."
          :code $ quote $ defn mute-element (element)
            respo.util.detect/render-node-value $ mute-render-node $ respo.util.detect/as-render-node element
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Struct)
            :args $ [] 'Struct
          :tests $ [] $ %{} 'TestEntry (:name |clears-events-through-component-tree)
            :code $ quote $ let
                leaf $ respo.schema/Element :name :span :coord (%none) :attrs ([]) :style ([]) :children ([]) :ref nil :event $ {}
                  :click $ fn (_event _dispatch!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Dynamic
                          :return 'Unit
                      :return 'Unit
                    , &unit
                root $ respo.schema/Element :name :div :coord (%none) :attrs ([]) :style ([]) :children
                  [] (respo.util.detect/make-child-pair :child leaf) (respo.util.detect/make-child-pair :empty nil)
                  , :ref nil :event $ {}
                    :click $ fn (_event _dispatch!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Dynamic
                            :return 'Unit
                        :return 'Unit
                      , &unit
                component $ respo.schema/Component :name :root :effects ([]) :listeners ([]) :tree $ %some (respo.util.detect/as-render-node root)
                muted $ assert-type (mute-element component) 'respo.schema/Component
                muted-root $ assert-type
                  option:unwrap $ respo.util.detect/component-tree muted
                  , 'respo.schema/Element
                child-pair $ option:unwrap $ first (respo.util.detect/element-children muted-root)
                muted-child $ assert-type (respo.util.detect/child-pair-value child-pair) 'respo.schema/Element
                nil-pair $ option:unwrap $ last (respo.util.detect/element-children muted-root)
              assert= 1 $ count $ :event root
              assert= 1 $ count $ :event leaf
              assert= ({}) (:event muted-root)
              assert= ({}) (:event muted-child)
              assert= :root $ :name muted
              assert= :empty $ :key nil-pair
              assert |empty-child-is-preserved $ option:none? $ :node nil-pair
            :tags $ #{} :unit
        'mute-render-node $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mute-render-node (node)
            match node
              (:component component)
                respo.schema/RenderNode :component $ &struct:assoc component :tree $ option:map (:tree component) mute-render-node
              (:element element)
                respo.schema/RenderNode :element $ -> element
                  assoc :event $ {}
                  assoc :children $ map (:children element)
                    fn (pair)
                      hint-fn $ {}
                        :args $ [] 'respo.schema/ChildPair
                        :return 'respo.schema/ChildPair
                      &struct:assoc pair :node $ option:map (:node pair) mute-render-node
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/RenderNode)
            :args $ [] 'respo.schema/RenderNode
        'prop->attr $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn prop->attr (x)
            when (includes? x |?) (println "|[Respo] warning: property includes `?` in" x)
            match x (|class-name |class) (|tab-index |tabindex) (|read-only |readonly) (|spell-check |spellcheck) (_ x)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
        'purify-element $ %{} 'CodeEntry
          :doc "|Recursively normalize a component or element tree into serializable data.\n\nEvent handlers are purified, component wrappers are unwrapped to their rendered tree, and children are processed recursively. This is useful before HTML serialization or DOM comparison."
          :code $ quote $ defn purify-element (markup)
            cond
                nil? markup
                , nil
              (component? markup)
                purify-render-node $ respo.util.detect/as-render-node markup
              (element? markup)
                purify-element-node $ respo.util.detect/as-element markup
              true $ do (js/console.warn |Unknown-markup-during-purify: markup) nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
          :tests $ []
            %{} 'TestEntry (:name |removes-live-refs-recursively)
              :code $ quote $ let
                  child $ %{} respo.schema/Element (:name :span)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ []
                    :ref $ fn (_target) &unit
                  parent $ %{} respo.schema/Element (:name :div)
                    :coord $ %none
                    :attrs $ []
                    :style $ []
                    :event $ {}
                    :children $ [] $ respo.util.detect/make-child-pair :child child
                    :ref $ fn (_target) &unit
                  purified $ coerce-element $ respo.util.detect/as-element (purify-element parent)
                  purified-child $ respo.util.detect/as-element $ respo.util.detect/child-pair-value
                    &list:nth (element-children purified) 0
                assert |parent-ref-is-removed $ js-nullish? $ element-ref purified
                assert |child-ref-is-removed $ js-nullish? $ element-ref purified-child
              :tags $ #{} :unit
            %{} 'TestEntry (:name |raises-explicitly-for-none-component-tree)
              :code $ quote $ let
                  caught? $ atom false
                  component $ %{} respo.schema/Component (:name :empty)
                    :effects $ []
                    :listeners $ []
                    :tree $ %none
                try (purify-element component)
                  fn (_error) (reset! caught? true)
                assert |reports-empty-tree @caught?
              :tags $ #{} :unit
        'purify-element-node $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn purify-element-node (markup)
            purify-render-node $ respo.schema/RenderNode :element markup
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'respo.schema/Element
        'purify-events $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn purify-events (events)
            -> (&map:to-list events)
              filter $ fn (pair)
                calcit.core/non-nil? $ respo.util.list/pair-value pair
              map respo.util.list/pair-tag-key
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'List 'Tag
          :tests $ [] $ %{} 'TestEntry (:name |keeps-live-tag-keys)
            :code $ quote $ let
                events $ {}
                  :click $ fn () 42
                  :gone nil
                  :zero 0
                names $ purify-events events
              assert= 2 $ count names
              assert= (#{} :click :zero) (.to-set names)
            :tags $ #{} :unit
        'purify-render-node $ %{} 'CodeEntry
          :doc "|通过 RenderNode 变体递归清理事件和 ref，移除组件包装；保留 ChildPair key、nil 节点和空组件树报错。"
          :code $ quote $ defn purify-render-node (node)
            match node
              (:component component)
                match (:tree component)
                  (:none) (raise |tree-is-empty)
                  (:some tree) (purify-render-node tree)
              (:element element)
                -> element (assoc :ref nil)
                  assoc :event $ {}
                  assoc :children $ map (:children element)
                    fn (pair)
                      hint-fn $ {}
                        :args $ [] 'respo.schema/ChildPair
                        :return 'respo.schema/ChildPair
                      &struct:assoc pair :node $ option:map (:node pair)
                        fn (child)
                          hint-fn $ {}
                            :args $ [] 'respo.schema/RenderNode
                            :return 'respo.schema/RenderNode
                          respo.schema/RenderNode :element $ purify-render-node child
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'respo.schema/RenderNode
            :features $ #{} :js-ffi
          :tests $ [] $ %{} 'TestEntry (:name |preserves-nested-components-and-empty-child)
            :code $ quote $ let
                leaf $ respo.schema/Element :name :span :coord (%none) :attrs
                  [] $ [] :inner-text |leaf
                  , :style ([]) :children ([]) :ref nil :event $ {} (:click nil)
                inner $ respo.schema/Component :name :inner :effects ([]) :listeners ([]) :tree $ %some (respo.util.detect/as-render-node leaf)
                outer $ respo.schema/Component :name :outer :effects ([]) :listeners ([]) :tree $ %some (respo.util.detect/as-render-node inner)
                root $ respo.schema/Element :name :div :coord (%none) :attrs ([]) :style ([]) :ref nil :event ({}) :children $ [] (respo.util.detect/make-child-pair 7 outer) (respo.util.detect/make-child-pair |empty nil)
                purified $ purify-render-node $ respo.util.detect/as-render-node root
                child $ &list:nth (:children purified) 0
                empty-pair $ &list:nth (:children purified) 1
                cleaned $ respo.util.detect/as-element $ respo.util.detect/child-pair-value child
              assert= 7 $ :key child
              assert= |empty $ :key empty-pair
              assert |nil-child-preserved $ option:none? $ :node empty-pair
              assert= :span $ :name cleaned
              assert= (:attrs leaf) (:attrs cleaned)
              assert= ({}) (:event cleaned)
              assert= 1 $ count $ :event leaf
              assert= outer $ respo.util.detect/child-pair-value $ &list:nth (:children root) 0
        'scalar-attribute-text $ %{} 'CodeEntry (:doc "|将 DOM/SSR 属性值边界内已识别的标量转换为文本；拒绝集合及任意宿主对象。")
          :code $ quote $ defn scalar-attribute-text (x)
            cond
                string? x
                , x
              (tag? x) (to-string x)
              (symbol? x) (to-string x)
              (number? x) (to-string x)
              (bool? x) (to-string x)
              true $ raise "|Attribute value must be a scalar"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic
          :tests $ []
            %{} 'TestEntry (:name |accepts-supported-scalars)
              :code $ quote $ do
                assert= |value $ scalar-attribute-text |value
                assert= |red $ scalar-attribute-text :red
                assert= |12 $ scalar-attribute-text 12
                assert= |true $ scalar-attribute-text true
              :tags $ #{} :unit
            %{} 'TestEntry (:name |rejects-collections)
              :code $ quote $ assert= "|Attribute value must be a scalar"
                try
                  scalar-attribute-text $ [] 1 2
                  fn (error) error
              :tags $ #{} :unit
        'svg-attr-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn svg-attr-name (x)
            match x (|strokeWidth |stroke-width) (|strokeLinecap |stroke-linecap) (|strokeLinejoin |stroke-linejoin) (|strokeDasharray |stroke-dasharray) (|strokeDashoffset |stroke-dashoffset) (|fillRule |fill-rule) (|fillOpacity |fill-opacity) (|clipPath |clip-path) (|stopColor |stop-color) (|stopOpacity |stop-opacity) (|class-name |class) (_ x)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
          :tests $ []
            %{} 'TestEntry (:name |svg-attribute-cases)
              :code $ quote $ do
                assert= |stroke-width $ svg-attr-name |strokeWidth
                assert= |fill $ svg-attr-name |fill
                assert= |clip-path $ svg-attr-name |clipPath
            %{} 'TestEntry (:name |class-attribute)
              :code $ quote $ assert= |class (svg-attr-name |class-name)
        'text->html $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn text->html (x)
            if (nil? x) | $ &str:replace
              &str:replace
                &str:replace (scalar-attribute-text x) |& |&amp;
                , |> |&gt;
              , |< |&lt;
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic
          :tests $ []
            %{} 'TestEntry (:name |preserves-literal-entities)
              :code $ quote $ assert= |&amp;&amp;amp;&lt;&gt; (text->html |&&amp;<>)
              :tags $ #{} :unit
            %{} 'TestEntry (:name |renders-supported-scalars-and-nil)
              :code $ quote $ do
                assert= | $ text->html nil
                assert= |true $ text->html true
                assert= |false $ text->html false
                assert= |12.5 $ text->html 12.5
                assert= |ready $ text->html :ready
                assert= |ready $ text->html $ to-symbol |ready
                assert= |&lt;ready&gt; $ text->html |<ready>
              :tags $ #{} :unit
            %{} 'TestEntry (:name |rejects-collection-text)
              :code $ quote $ do
                assert= "|Attribute value must be a scalar" $ try
                  text->html $ [] 1
                  fn (error) error
                assert= "|Attribute value must be a scalar" $ try
                  text->html $ {}
                  fn (error) error
                assert= "|Attribute value must be a scalar" $ try
                  text->html $ #{} :ready
                  fn (error) error
              :tags $ #{} :unit
        'unitless-props $ %{} 'CodeEntry (:doc "|gemini suggested from popular libs\n")
          :code $ quote $ def unitless-props
            {} (|animationDelay true) (|animationDuration true) (|animationIterationCount true) (|aspectRatio true) (|borderImageOutset true) (|borderImageSlice true) (|borderImageWidth true) (|boxFlex true) (|boxFlexGroup true) (|boxOrdinalGroup true) (|columnCount true) (|columns true) (|fillOpacity true) (|flex true) (|flexGrow true) (|flexNegative true) (|flexPositive true) (|flexShrink true) (|floodOpacity true) (|fontSizeAdjust true) (|fontWeight true) (|gridArea true) (|gridColumn true) (|gridColumnEnd true) (|gridColumnSpan true) (|gridColumnStart true) (|gridRow true) (|gridRowEnd true) (|gridRowSpan true) (|gridRowStart true) (|lineClamp true) (|lineHeight true) (|opacity true) (|order true) (|orphans true) (|stopOpacity true) (|strokeDasharray true) (|strokeDashoffset true) (|strokeMiterlimit true) (|strokeOpacity true) (|strokeWidth true) (|tabSize true) (|transitionDelay true) (|transitionDuration true) (|widows true) (|zIndex true) (|zoom true)
          :examples $ []
          :schema $ :: 'Map
        'uppercase-dashed-match $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn uppercase-dashed-match (matched _position _source)
            char-from-code $ -
              get-char-code $ &str:slice matched 1
              , 32
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'Number 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.util.format
          :require
            respo.util.detect :refer $ component? element? component-tree element-event element-children element-ref
            respo.dom :refer $ DomEvent DomKeyboardEvent
    'respo.util.list $ %{} 'FileEntry
      :defs $ {}
        'checked-pairs $ %{} 'CodeEntry (:doc "|在开放数据边界校验键值对列表。")
          :code $ quote $ defn checked-pairs (value)
            if (list? value)
              foldl value ([])
                defn %checked-pair (acc item)
                  hint-fn $ {}
                    :args $ []
                      :: 'List $ :: 'List 'Dynamic
                      , 'Dynamic
                    :return $ :: 'List $ :: 'List 'Dynamic
                  if (list? item) (append acc item)
                    raise $ str "|[Respo] expected a key/value pair, got: " $ type-of item
              raise $ str "|[Respo] expected a list of pairs, got: " $ type-of value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'List $ :: 'List 'Dynamic
        'first-pair $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn first-pair (entries)
            &let
              pair $ &list:first entries
              if (nil? pair) (raise "|first-pair expected a non-empty list of pairs") pair
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List (:: 'List 'Dynamic)
            :return $ :: 'List 'Dynamic
        'index-of-dynamic $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn index-of-dynamic (xs needle)
            loop
                rest-xs xs
                idx 0
              if (empty? rest-xs) (Option :none)
                if
                  &= (&list:first rest-xs) needle
                  Option :some idx
                  recur (&list:rest rest-xs) (inc idx)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'Dynamic) 'Dynamic
            :return $ :: 'calcit.core/Option 'Number
        'map-with-idx $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn map-with-idx (xs f)
            assert (fn? f) "|expects function"
            assert (list? xs) "|expects list"
            map-indexed xs $ fn (idx x)
              [] idx $ f x
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'List 'A)
              :: 'Fn $ {} (:return 'B)
                :args $ [] 'A
            :generics $ [] 'A 'B
            :return $ :: 'List $ :: 'List 'Dynamic
        'pair-first $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn pair-first (pair) (&list:nth pair 0)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'T)
            :args $ [] $ :: 'List 'T
            :generics $ [] 'T
        'pair-key $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn pair-key (pair) (&list:nth pair 0)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] $ :: 'List 'Dynamic
        'pair-key-text $ %{} 'CodeEntry (:doc "|把键值对的键转成文本：Tag 去掉冒号，其他值按显示文本。")
          :code $ quote $ defn pair-key-text (pair)
            &let
              k $ &list:nth pair 0
              if (tag? k) (to-string k) (str k)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'List 'Dynamic
        'pair-tag-key $ %{} 'CodeEntry (:doc "|读取键值对的 Tag 键并在运行时校验，用于事件名等必须为 Tag 的位置。")
          :code $ quote $ defn pair-tag-key (pair)
            &let
              k $ &list:nth pair 0
              if (tag? k) k $ raise $ str "|[Respo] expected a Tag key, got: " k
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Tag)
            :args $ [] $ :: 'List 'Dynamic
        'pair-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn pair-value (pair) (&list:nth pair 1)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'T)
            :args $ [] $ :: 'List 'T
            :generics $ [] 'T
        'pick-attrs $ %{} 'CodeEntry
          :doc "|Extracts HTML attributes from a properties map, filtering out internal keys like :on, :event, :style."
          :code $ quote $ defn pick-attrs (props)
            if (nil? props) ([])
              -> props (&map:dissoc :on) (&map:dissoc :style) (&map:dissoc :ref)
                &map:filter-kv $ fn (k v)
                  hint-fn $ {}
                    :args $ [] 'Tag 'Dynamic
                    :return 'Bool
                  and (calcit.core/non-nil? v)
                    not $ starts-with? (to-string k) |on-
                &map:to-list
                sort $ fn (x y)
                  &compare (&list:nth x 0) (&list:nth y 0)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'List $ :: 'List 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |filters-internal-and-empty-properties)
            :code $ quote $ let
                attrs $ pick-attrs $ {} (:value |string) (:title |ok) (:data-id |x)
                  :on-click $ fn () &unit
                  :data-empty nil
                  :style $ {} $ :color |red
                  :ref $ fn (_target) &unit
              assert |attributes-are-filtered $ &=
                [] ([] :data-id |x) ([] :title |ok) ([] :value |string)
                , attrs
            :tags $ #{} :unit
        'pick-event $ %{} 'CodeEntry
          :doc "|Extracts event listeners from a properties map. Handles both :on map and on-* keys."
          :code $ quote $ defn pick-event (props)
            let
                raw-on $ &map:get props :on
                base-events $ pick-on-events raw-on
                property-events $ filter-map-kv props $ fn (k v)
                  hint-fn $ {}
                    :args $ [] 'Tag 'Dynamic
                    :return $ :: 'MapEntryDecision 'Tag 'Fn
                  if
                    starts-with? (to-string k) |on-
                    if (fn? v)
                      %:: MapEntryDecision :keep
                        to-tag $ &str:slice (to-string k) 3
                        , v
                      if (nil? v) (%:: MapEntryDecision :drop)
                        raise $ str "|[Respo] expected event listener to be a function: " k
                    %:: MapEntryDecision :drop
              &merge base-events property-events
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Fn
          :tests $ [] $ %{} 'TestEntry (:name |extracts-event-properties)
            :code $ quote $ let
                click! $ fn () &unit
                input! $ fn () &unit
                events $ pick-event $ {} (:value |ignored) (:on-click click!) (:on-change nil)
                  :on $ {} $ :input input!
              assert |two-events-are-extracted $ = 2 $ count events
              assert |click-event-is-kept $ identical? click! $ &map:get events :click
              assert |input-event-is-merged $ identical? input! $ &map:get events :input
            :tags $ #{} :unit
        'pick-on-events $ %{} 'CodeEntry (:doc "|校验 :on 事件 map，并把监听函数适配为 EventHandler。")
          :code $ quote $ defn pick-on-events (raw-on)
            if (map? raw-on)
              filter-map-kv raw-on $ fn (k v)
                hint-fn $ {}
                  :args $ [] 'Dynamic 'Dynamic
                  :return $ :: 'MapEntryDecision 'Tag 'Fn
                if (tag? k)
                  if (fn? v) (%:: MapEntryDecision :keep k v)
                    if (nil? v) (%:: MapEntryDecision :drop)
                      raise $ str "|[Respo] expected event listener to be a function: " k
                  raise $ str "|[Respo] expected event names in :on to be tags: " k
              if (nil? raw-on) ({})
                raise $ str "|[Respo] expected :on to be a map, got: " $ type-of raw-on
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Fn
        'val-exists? $ %{} 'CodeEntry
          :doc "|Predicate to check if a key-value pair has a non-nil value."
          :code $ quote $ defn val-exists? (pair)
            not $ nil? $ option:unwrap-or (last pair) nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Dynamic
        'val-of-first $ %{} 'CodeEntry
          :doc "|Extracts the value (second item) from the first entry of a list."
          :code $ quote $ defn val-of-first (x)
            respo.util.list/pair-value $ respo.util.list/first-pair x
          :examples $ [] $ quote
            val-of-first $
              [] :a 1
              [] :b 2
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] $ :: 'List (:: 'List 'Dynamic)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo.util.list
          :require $ respo.util.detect :refer $ component? element?
