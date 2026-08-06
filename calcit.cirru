
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |respo) (:version |0.16.61)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'respo.main/main!) (:mode :js) (:reload-fn 'respo.main/reload!)
      :modules $ [] |calcit-test/
      :type-slots $ {} (:dispatch-op |respo.app.schema/Op)
  :files $ {}
    |respo.app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (store)
              let
                  states $ &struct:get store :states
                div
                  {} (; :class-name highlight-defcomp) (:class-name style-global)
                  comp-todolist states $ &struct:get store :tasks
                  div
                    {} $ :style style-states
                    <> $ str "|states: "
                      to-lispy-string $ &struct:get store :states
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'respo.app.schema/Store
        |style-global $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-global $ {}
              |& $ {} (:font-family |Avenir,Verdana)
              |& $ {} ('contained "|@media only screen and (max-width: 600px)")
                :background-color $ hsl 0 0 90
          :examples $ []
          :schema $ :: 'String
        |style-states $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-states $ {} (:padding 8)
          :examples $ []
          :schema $ :: 'Map
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.app.comp.container $ :require
            respo.core :refer $ defcomp div span <> >> a
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo.app.comp.todolist :refer $ comp-todolist
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ highlight-defcomp
    |respo.app.comp.task $ %{} :FileEntry
      :defs $ {}
        |comp-task $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-task (states task)
              let
                  cursor $ option:unwrap-or (:cursor states) ([])
                  state $ option:unwrap-or (:data states) |
                [] (effect-log task)
                  div
                    {} $ :class-name style-task
                    comp-inspect |Task task $ {} (:left 200)
                    button $ {} (:class-name style-done)
                      :style $ {}
                        :background-color $ if (&struct:get task :done?) (hsl 200 20 80) (hsl 200 80 70)
                      :on-click $ fn (e d!)
                        d! $ :: :toggle (&struct:get task :id)
                    =< 8 0
                    input $ {}
                      :value $ &struct:get task :text
                      :class-name widget/style-input
                      :on-input $ fn (e d!)
                        let
                            task-id $ &struct:get task :id
                            text $ str
                              option:unwrap $ :value e
                          d! $ %:: Op :update task-id text
                    =< 8 0
                    input $ {} (:value state) (:class-name widget/style-input)
                      :on-input $ fn (e d!)
                        d! cursor $ option:unwrap (:value e)
                    =< 8 0
                    div
                      {} (:class-name widget/style-button)
                        :on-click $ fn (e d!)
                          d! $ %:: Op :remove (&struct:get task :id)
                      <> |Remove
                    =< 8 0
                    div ({}) (<> state)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic 'respo.app.schema/Task
        |effect-log $ %{} :CodeEntry (:doc |)
          :code $ quote
            defeffect effect-log (task) (action parent at-place?) (; js/console.log "|Task effect" action at-place?)
              case-default action nil
                :mount $ let
                    x0 $ js/Math.random
                  ; println |Stored x0
                  , nil
                :update (; println |read) nil
                :unmount (; println |read) nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Effect)
              :args $ [] 'Dynamic
        |style-done $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-done $ {}
              :& $ {} (:width 32) (:height 32) (:outline :none) (:border :none) (:vertical-align :middle) (:cursor :pointer)
          :examples $ []
          :schema $ :: 'String
        |style-task $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-task $ {}
              |& $ {} (:display :flex) (:padding "|4px 0px")
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.app.comp.task $ :require
            respo.core :refer $ defcomp div input span button <> defeffect
            respo.util.format :refer $ hsl
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo.app.style.widget :as widget
            respo.css :refer $ defstyle
            respo.app.schema :refer $ Op
    |respo.app.comp.todolist $ %{} :FileEntry
      :defs $ {}
        |comp-todolist $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-todolist (states tasks)
              let
                  cursor $ option:unwrap-or (:cursor states) ([])
                  state $ option:unwrap-or (:data states)
                    %{} respo.app.schema/TodoState (:draft |) (:locked? false) (:message "|Press Ctrl+M to change message")
                assert-type state 'respo.app.schema/TodoState
                assert-type tasks $ :: 'List 'respo.app.schema/Task
                [] (on-keydown cursor state) (effect-focus |#draft-input)
                  div
                    {} (:class-name style-todo-root) (:data-name |todolist)
                    comp-inspect |States state $ {} (:left |80px)
                    div
                      {} $ :style style-panel
                      input $ {} (:placeholder |Text) (:id |draft-input)
                        :value $ &struct:get state :draft
                        :class-name widget/style-input
                        :style $ {}
                          :width $ &max 200
                            + 24 $ text-width (&struct:get state :draft) 16 |BlinkMacSystemFont
                        :on-input $ fn (e d!)
                          d! $ %:: Op :states-merge cursor state
                            {} $ :draft
                              option:unwrap $ :value e
                        :on-focus on-focus
                      =< 8 0
                      span
                        {} (:class-name widget/style-button)
                          :on-click $ fn (e d!)
                            d! $ %:: Op :add (&struct:get state :draft)
                            d! cursor $ assoc state :draft |
                        span $ {} (:on-click nil) (:inner-text |Add)
                      =< 8 0
                      span $ {} (:inner-text |Clear) (:class-name widget/style-button)
                        :on-click $ fn (e d!)
                          d! $ %:: Op :clear
                      =< 8 0
                      div ({})
                        div
                          {} (:class-name widget/style-button) (:on-click on-test)
                          <> "|heavy tasks" style-bold!
                    list->
                      {} (:class-name |task-list) (:style style-list)
                      -> tasks .to-list .reverse $ map
                        fn (task)
                          let
                              task-id $ &struct:get task :id
                            [] task-id $ memo-comp-by task-id comp-task (>> states task-id) task
                    if
                      > (count tasks) 0
                      div
                        {} (:spell-check true) (:class-name style-toolbar)
                        div
                          {} (:class-name widget/style-button)
                            :on-click $ if
                              not $ &struct:get state :locked?
                              fn (e d!)
                                d! $ %:: Op :clear
                          <> |Clear2
                        =< 8 0
                        div
                          {} (:class-name widget/style-button)
                            :on-click $ fn (e d!)
                              d! cursor $ update state :locked? not
                          <>
                            str-spaced |Lock? $ &struct:get state :locked?
                            {} $ :font-size 13
                        =< 8 0
                        comp-wrap $ comp-zero
                    comp-inspect |Tasks tasks $ {} (:left 500) (:top 20)
                    div
                      {} $ :style
                        {} (:padding |8px) (:font-size 12) (:color |#999) (:margin-top |16px)
                      <> $ &struct:get state :message
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic (:: 'List 'respo.app.schema/Task)
        |effect-focus $ %{} :CodeEntry (:doc |)
          :code $ quote
            defeffect effect-focus (pattern) (action parent at-place?)
              when (= action :mount)
                if-let
                  target $ js-nullish->option (js/document.querySelector pattern)
                  .!select target
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Effect)
              :args $ [] 'String
        |number-order $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn number-order (a b)
              if (&< a b) -1 $ if (&> a b) 1 0
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'Number 'Number
        |on-focus $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-focus (e dispatch!) (println "|Just focused~")
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Map 'Fn
        |on-keydown $ %{} :CodeEntry (:doc "|Creates a keyboard listener for Ctrl+M shortcut. This function demonstrates how to create component-local listeners that can access component state through closures. Returns a RespoListener that updates the message state when Ctrl+M is pressed.")
          :code $ quote
            defn on-keydown (cursor state)
              %{} respo.schema/RespoListener (:name :on-keydown)
                :handler $ fn (event dispatch!)
                  match event $
                    :keydown info
                    when
                      and
                        = |m $ option:unwrap-or (:key info) |
                        option:unwrap-or (:ctrl info) false
                      do
                        dispatch! $ %:: Op :states cursor (assoc state :message "|Message changed by Ctrl+M!")
                        js/window.setTimeout
                          fn () $ dispatch!
                            %:: Op :states cursor $ assoc state :message "|Press Ctrl+M to change message"
                          , 2000
          :examples $ []
            quote $ on-keydown cursor state
          :schema $ :: 'Fn
            {} (:return 'respo.schema/RespoListener)
              :args $ [] 'List 'respo.app.schema/TodoState
        |on-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-test (e dispatch!) (println "|trigger test!")
              try-test! dispatch! $ []
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Map 'Fn
        |style-bold! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-bold! $ {}
              |& $ {} (:font-weight "|bold !important")
          :examples $ []
          :schema $ :: 'String
        |style-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-list $ {} (:color :black)
              :background-color $ hsl 120 20 98
          :examples $ []
          :schema $ :: 'Map
        |style-panel $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-panel $ {} (:display :flex) (:margin-bottom 4)
          :examples $ []
          :schema $ :: 'Map
        |style-todo-root $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-todo-root $ {}
              |& $ {} (:color :black)
                :background-color $ hsl 120 20 98
                :line-height |24px
                |font-size 16
                :padding 10
                :font-family "|\"微软雅黑\", Verdana"
          :examples $ []
          :schema $ :: 'String
        |style-toolbar $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-toolbar $ {}
              |& $ {} (:display :flex) (:flex-direction :row) (:justify-content :start) (:padding "|4px 0") (:white-space :nowrap)
          :examples $ []
          :schema $ :: 'String
        |try-test! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn try-test! (dispatch! acc)
              let
                  started $ unsafe-coerce (js/Date.now) Number
                dispatch! $ %:: Op :clear
                loop
                    x 20
                  dispatch! $ %:: Op :add |empty
                  if (> x 0)
                    recur $ dec x
                loop
                    x 20
                  dispatch! $ %:: Op :hit-first
                    str $ js/Math.random
                  if (> x 0)
                    recur $ dec x
                dispatch! $ %:: Op :clear
                loop
                    x 10
                  dispatch! $ %:: Op :add "|only 10 items"
                  if (> x 0)
                    recur $ dec x
                let
                    cost $ -
                      unsafe-coerce (js/Date.now) Number
                      , started
                  if
                    < (count acc) 40
                    js/setTimeout
                      fn () $ try-test! dispatch! (conj acc cost)
                      , 0
                    println |result: $ sort acc number-order
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Fn (:: 'List 'Number)
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.app.comp.todolist $ :require
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
    |respo.app.comp.wrap $ %{} :FileEntry
      :defs $ {}
        |comp-wrap $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-wrap (x)
              div ({}) x
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.app.comp.wrap $ :require
            respo.core :refer $ defcomp div
    |respo.app.comp.zero $ %{} :FileEntry
      :defs $ {}
        |comp-zero $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-zero () $ div
              {} $ :inner-text 0
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.app.comp.zero $ :require
            respo.core :refer $ defcomp div
    |respo.app.core $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc "|Global state storage Atom for the Respo application.\n\nThis is an atom containing all application state data, initialized with the structure defined by schema/store.\nIn Respo applications, all component states are stored in this global store and updated through the dispatch mechanism.")
          :code $ quote (defatom *store schema/store)
          :examples $ []
          :schema $ :: 'Ref
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              if dev? $ js/console.log op
              let
                  store $ updater @*store op (generate-id!)
                reset! *store store
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'respo.app.schema/Op
        |handle-ssr! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn handle-ssr! (mount-target)
              realize-ssr! mount-target (comp-container @*store) dispatch!
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic
        |new-fn $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn new-fn () $ println |hello
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! (mount-target)
              render-with! mount-target
                fn () $ comp-container @*store
                , dispatch!
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.app.core $ :require
            respo.app.comp.container :refer $ comp-container
            respo.core :refer $ render-with! realize-ssr!
            respo.schema :refer $ dev?
            respo.app.schema :as schema
            respo.app.updater :refer $ updater
    |respo.app.schema $ %{} :FileEntry
      :defs $ {}
        |Op $ %{} :CodeEntry (:doc |)
          :code $ quote
            defenum Op (:states 'List 'Dynamic) (:states-kv 'List 'Dynamic 'Dynamic) (:states-merge 'List 'respo.app.schema/TodoState 'Map) (:add 'String) (:remove 'String) (:clear) (:update 'String 'String) (:hit-first 'String) (:toggle 'String)
          :examples $ []
          :schema $ :: 'Dynamic
        |Store $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstruct Store
              :tasks $ :: 'List 'respo.app.schema/Task
              :states 'Map
              :cursor $ :: 'List 'Dynamic
          :examples $ []
          :schema $ :: 'Dynamic
        |Task $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstruct Task (:id 'String) (:text 'String) (:done? 'Bool)
          :examples $ []
          :schema $ :: 'Dynamic
        |TodoState $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstruct TodoState (:draft 'String) (:locked? 'Bool) (:message 'String)
          :examples $ []
          :schema $ :: 'Dynamic
        |store $ %{} :CodeEntry (:doc "|Default immutable Store record value used by the example application.")
          :code $ quote
            def store $ %{} Store
              :tasks $ []
              :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'respo.app.schema/Store
        |task $ %{} :CodeEntry (:doc "|Default immutable Task record value used when constructing example tasks.")
          :code $ quote
            def task $ %{} Task (:id |) (:text |) (:done? false)
          :examples $ []
          :schema $ :: 'respo.app.schema/Task
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns respo.app.schema)
    |respo.app.style.widget $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |)
          :code $ quote
            def button $ {} (:display :inline-block) (:padding "|0 6px 0 6px") (:font-family |Avenir,Verdana) (:cursor :pointer)
              :background-color $ hsl 0 80 70.9
              :color $ hsl 0 0 100
              :height 28
              :line-height |28px
              :transition-duration |200ms
          :examples $ []
          :schema $ :: 'Map
        |style-button $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-button $ {} (:& button)
              |&:hover $ {} (:transform "|scale(1.04)")
          :examples $ []
          :schema $ :: 'String
        |style-input $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-input $ {}
              |& $ {} (:font-size |16px) (:line-height |24px) (:padding "|0px 8px") (:outline :none) (:min-width |300px)
                :background-color $ hsl 0 0 94
                :border :none
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.app.style.widget $ :require
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
    |respo.app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id) (; println store op) (assert-type store 'respo.app.schema/Store)
              match op
                (:states cursor s) (update-states store cursor s)
                (:states-kv cursor k v) (update-states-kv store cursor k v)
                (:states-merge cursor s o) (update-states-merge store cursor s o)
                (:add text)
                  update store :tasks $ fn (tasks)
                    assert-type tasks $ :: 'List 'respo.app.schema/Task
                    conj tasks $ %{} respo.app.schema/Task (:text text) (:id op-id) (:done? false)
                (:remove task-id)
                  update store :tasks $ fn (tasks)
                    -> tasks $ filter
                      fn (task)
                        not $ = (&struct:get task :id) task-id
                (:clear)
                  assoc store :tasks $ []
                (:update task-id text)
                  update store :tasks $ fn (tasks)
                    -> tasks $ map
                      fn (task)
                        if
                          = (&struct:get task :id) task-id
                          assoc task :text text
                          , task
                (:hit-first rd)
                  update store :tasks $ fn (tasks)
                    if (empty? tasks) tasks $ assoc tasks 0
                      assoc
                        option:unwrap $ first tasks
                        , :text rd
                (:toggle task-id)
                  update store :tasks $ fn (tasks)
                    assert-type tasks $ :: 'List 'respo.app.schema/Task
                    -> tasks $ map
                      fn (task) (assert-type task 'respo.app.schema/Task)
                        if
                          = (&struct:get task :id) task-id
                          update task :done? not
                          , task
                _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.app.schema/Store)
              :args $ [] 'respo.app.schema/Store 'respo.app.schema/Op 'String
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.app.updater $ :require
            respo.cursor :refer $ update-states update-states-kv update-states-merge
    |respo.comp.global-keydown $ %{} :FileEntry
      :defs $ {}
        |comp-global-keydown $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-global-keydown (options on-event) (; "|dirty solution: proxy window keydown event to a `<span/>`, comes with some restrictions. however Respo does not allow effects to modify states.")
              [] (effect-listen-keyboard options |keydown)
                span $ {}
                  :on-keydown $ fn (e d!) (on-event e d!)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic 'Dynamic
        |comp-global-keyup $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-global-keyup (options on-event) (; "|dirty solution: proxy window keydown event to a `<span/>`, comes with some restrictions. however Respo does not allow effects to modify states.")
              [] (effect-listen-keyboard options |keyup)
                span $ {}
                  :on-keyup $ fn (e d!) (on-event e d!)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic 'Dynamic
        |dirty-field $ %{} :CodeEntry (:doc "|Constant string key for the global keyboard listener.")
          :code $ quote (def dirty-field |_global_listener)
          :examples $ []
          :schema $ :: 'String
        |effect-listen-keyboard $ %{} :CodeEntry (:doc "|Effect for listening to global keyboard events on the window object.")
          :code $ quote
            defeffect effect-listen-keyboard (options event-name) (action el at?)
              cond
                  or (= action :mount) (= action :update)
                  let
                      disabled-commands $ noted "|copied event does not support `event.preventDefault()`, so we need to pass a set of configs"
                        either (:disabled-commands options) (#{} |p |s)
                      handler $ fn (event)
                        if
                          and
                            .includes? disabled-commands $ .-key event
                            or (.-ctrlKey event) (.-metaKey event)
                          .!preventDefault event
                        .!dispatchEvent el $ new js/KeyboardEvent (.-type event) event
                    if-let
                      prev-listener $ aget el dirty-field
                      js/window.removeEventListener event-name prev-listener
                    aset el dirty-field handler
                    js/window.addEventListener event-name handler
                (= action :unmount)
                  let
                      handler $ aget el dirty-field
                    js/window.removeEventListener event-name handler
                    js-delete el dirty-field
                true nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Effect)
              :args $ [] 'Dynamic 'Dynamic
              :features $ #{} :js-ffi
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.comp.global-keydown $ :require
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input a list->
    |respo.comp.inspect $ %{} :FileEntry
      :defs $ {}
        |comp-inspect $ %{} :CodeEntry (:doc "|Development helper for visualizing data in the UI.\n\nIt renders a labeled preview of arbitrary data and logs the original value when clicked. This is useful for debugging component props or local state and is usually disabled or removed in production.")
          :code $ quote
            defcomp comp-inspect (tip data style)
              let
                  class-name $ if (string? style) style
                  style-map $ if (map? style) style
                pre $ {}
                  :class-name $ str-spaced style-data class-name
                  :inner-text $ str tip "|: " (grab-info data)
                  :style style-map
                  :on-click $ fn (e d!)
                    if (some? js/window.devtoolsFormatters) (js/console.log data)
                      js/console.log $ to-js-data data
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic 'Dynamic 'Dynamic
              :features $ #{} :js-ffi
        |grab-info $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn grab-info (data)
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
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'Dynamic
        |highlight-defcomp $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle highlight-defcomp $ {}
              "|& *" $ {}
                :outline $ str "|1px dashed " (hsl 200 40 50 0.5)
          :examples $ []
          :schema $ :: 'String
        |style-data $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-data $ {}
              |& $ {} (:position :absolute) (:background-color "|hsl(240,100%,0%)") (:color :white) (:opacity 0.2) (:font-size |12px) (:font-family |Avenir,Verdana) (:line-height |1.4em) (:padding "|2px 6px") (:border-radius |4px) (:max-width 160) (:max-height 32) (:white-space :normal) (:text-overflow :ellipsis) (:cursor :default)
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.comp.inspect $ :require
            respo.core :refer $ defcomp pre <>
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
    |respo.comp.space $ %{} :FileEntry
      :defs $ {}
        |=< $ %{} :CodeEntry (:doc "|insert a tiny space, horizontally or verticaly.\n\n- `8 nil` for horizontal width 8px,\n- `nil 8` for vertical height 8px.\n")
          :code $ quote
            defn =< (w x) (comp-space w x)
          :examples $ []
            quote $ =< 8 nil
            quote $ =< nil 16
            quote $ =< 12 nil
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic 'Dynamic
        |comp-space $ %{} :CodeEntry (:doc "|A tiny spacer component that renders an empty styled `<div>` with either width or height.\n\nUse it for explicit horizontal or vertical gaps when you want spacing as a component, although plain CSS margin is often cheaper.")
          :code $ quote
            defcomp comp-space (w h)
              div $ {} (:class-name style-space)
                :style $ if (some? w) (&{} :width w) (&{} :height h)
          :examples $ []
            quote $ comp-space 10 nil
            quote $ comp-space nil 16px
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic 'Dynamic
        |style-space $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-space $ {}
              :& $ {} (:height 1) (:width 1) (:display :inline-block)
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.comp.space $ :require
            respo.core :refer $ div defcomp
            respo.css :refer $ defstyle
    |respo.controller.client $ %{} :FileEntry
      :defs $ {}
        |activate-instance! $ %{} :CodeEntry (:doc "|Create and mount the initial DOM tree into a mount point.\n\nThis function clears previous content, builds event listeners from `deliver-event`, and appends the rendered root element. It is an internal mounting step used by `mount-app!`.")
          :code $ quote
            defn activate-instance! (entire-dom mount-point deliver-event)
              let
                  listener-builder $ fn (event-name) (build-listener event-name deliver-event)
                set! (.-innerHTML mount-point) |
                .!appendChild mount-point $ make-element entire-dom listener-builder ([])
              ;nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'respo.schema/Component 'Dynamic 'Fn
              :features $ #{} :js-ffi
        |build-listener $ %{} :CodeEntry (:doc "|Creates a DOM event listener that converts events and dispatches them to Respo.")
          :code $ quote
            defn build-listener (event-name deliver-event)
              fn (event coord)
                let
                    simple-event $ event->edn event
                  deliver-event coord event-name simple-event
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Fn)
              :args $ [] 'Tag 'Fn
        |patch-instance! $ %{} :CodeEntry (:doc "|Apply collected patch operations to the mounted DOM root.\n\nIt builds event listeners from `deliver-event` and delegates concrete DOM mutations to `apply-dom-changes`.")
          :code $ quote
            defn patch-instance! (changes mount-point deliver-event)
              let
                  listener-builder $ fn (event-name) (build-listener event-name deliver-event)
                apply-dom-changes changes mount-point listener-builder
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'List 'Dynamic 'Fn
        |send-to-component! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn send-to-component! (event-tuple)
              let
                  dispatch! $ wrap-dispatch *dispatch-fn
                  tree @*global-element
                traverse-and-call tree event-tuple dispatch!
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Enum
        |traverse-and-call $ %{} :CodeEntry (:doc "|Traverses the rendered tree and invokes component listeners. The dispatch callback intentionally stays at the generic Fn boundary because wrap-dispatch supports multiple operation forms and an optional payload.")
          :code $ quote
            defn traverse-and-call (element event-tuple dispatch!)
              when (some? element)
                when (component? element)
                  let
                      listeners $ &struct:get element :listeners
                      tree $ &struct:get element :tree
                    each listeners $ fn (listener)
                      let
                          handler $ &struct:get listener :handler
                        handler event-tuple dispatch!
                    traverse-and-call tree event-tuple dispatch!
                when (element? element)
                  each (&struct:get element :children)
                    fn (pair)
                      let
                          child $ option:unwrap (get pair 1)
                        traverse-and-call child event-tuple dispatch!
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Enum 'Fn
        |wrap-dispatch $ %{} :CodeEntry (:doc "|Wraps a raw dispatch function to automatically handle different operation types (list, tag, or direct).")
          :code $ quote
            defn wrap-dispatch (*dispatch-fn)
              fn (op ? data)
                let
                    dispatch! $ deref *dispatch-fn
                  if (list? op)
                    dispatch! $ : states op data
                    if (tag? op)
                      dispatch! $ :: op data
                      dispatch! op
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Fn)
              :args $ [] 'Ref
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.controller.client $ :require
            respo.render.patch :refer $ apply-dom-changes
            respo.util.format :refer $ event->edn
            respo.render.dom :refer $ make-element
            respo.core :refer $ *dispatch-fn *global-element
            respo.util.detect :refer $ component? element?
            respo.controller.resolve :refer $ extract-listeners
    |respo.controller.resolve $ %{} :FileEntry
      :defs $ {}
        |build-deliver-event $ %{} :CodeEntry (:doc "|Creates a function to dispatch events from the DOM to Respo's event handling system.")
          :code $ quote
            defn build-deliver-event (*global-element *dispatch-fn)
              fn (coord event-name simple-event)
                let
                    target-element $ find-event-target @*global-element coord event-name
                    target-listener-option $ if (some? target-element)
                      get (&struct:get target-element :event) event-name
                      do (js/console.warn |found-no-element coord event-name) (%none)
                    dispatch-wrap $ wrap-dispatch *dispatch-fn
                  option:fold target-listener-option
                    fn () nil
                    fn (target-listener)
                      (unsafe-coerce target-listener Fn) simple-event dispatch-wrap
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Fn)
              :args $ [] 'Ref 'Ref
        |extract-listeners $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn extract-listeners (component-result)
              if (list? component-result)
                let
                    listeners $ filter component-result listener?
                    elements $ filter component-result
                      fn (x)
                        not $ listener? x
                  {} (:listeners listeners)
                    :element $ option:unwrap-or (first elements) nil
                {}
                  :listeners $ []
                  :element component-result
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Map)
              :args $ [] 'Dynamic
        |find-event-target $ %{} :CodeEntry (:doc "|Traverses the virtual DOM to find the element that should handle a specific event.")
          :code $ quote
            defn find-event-target (element coord event-name)
              assert |element-cannot-be-nil $ some? element
              assert |coord-cannot-be-nil $ some? coord
              let
                  target-element $ loop
                      m $ get-markup-at element coord
                    if (component? m)
                      recur $ &struct:get m :tree
                      , m
                  event-present? $ if (some? target-element)
                    option:fold
                      get (&struct:get target-element :event) event-name
                      fn () false
                      fn (_handler) true
                    , false
                if event-present? target-element $ if (empty? coord) nil
                  recur element
                    slice coord 0 $ - (count coord) 1
                    , event-name
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'List 'Tag
        |get-markup-at $ %{} :CodeEntry (:doc "|Retrieves the virtual DOM element at the specified coordinate.")
          :code $ quote
            defn get-markup-at (markup coord)
              list-match coord
                () markup
                (coord-head cs)
                  if (component? markup)
                    recur (&struct:get markup :tree) cs
                    let
                        children $ &struct:get markup :children
                        child-pair-option $ find children
                          fn (child-entry)
                            =
                              option:unwrap $ nth child-entry 0
                              , coord-head
                      if-let (child-pair child-pair-option)
                        get-markup-at
                          option:unwrap $ nth child-pair 1
                          , cs
                        raise $ str |child-not-found: coord
                          map children $ fn (entry)
                            option:unwrap $ first entry
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'List
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.controller.resolve $ :require
            respo.util.detect :refer $ component? element? listener?
            respo.controller.client :refer $ wrap-dispatch
    |respo.core $ %{} :FileEntry
      :defs $ {}
        |*changes-logger $ %{} :CodeEntry (:doc "|Atom to hold a logging function for observing changes during rerenders. Function signature: (old-tree new-tree changes).")
          :code $ quote
            defatom *changes-logger $ %none
          :examples $ []
            quote $ reset! *changes-logger
              fn (old new changes) (println changes)
          :schema $ :: 'Ref (:: 'Option 'Fn)
        |*dispatch-fn $ %{} :CodeEntry (:doc "|internal atom storing the dispatch function. used to handle events and state updates throughout the application.")
          :code $ quote (defatom *dispatch-fn nil)
          :examples $ []
          :schema $ :: 'Ref
        |*global-element $ %{} :CodeEntry (:doc "|internal atom storing the current virtual DOM tree. used by render! to track and update the application state.")
          :code $ quote (defatom *global-element nil)
          :examples $ []
          :schema $ :: 'Ref
        |<> $ %{} :CodeEntry (:doc "|Create a text node with `span`.\n\nThe first argument is the content string. The optional second argument can be a style map or a class-name string.")
          :code $ quote
            defn <> (content ? style)
              if (string? style)
                span $ {} (:inner-text content) (:class-name style)
                span $ {} (:inner-text content) (:style style)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Element)
              :args $ [] 'String 'Dynamic
        |>> $ %{} :CodeEntry (:doc "|Create a nested state cursor for a child branch.\n\nThe returned map reuses branch data and extends `:cursor` with the new key, so child components can manage local state without losing the parent path.")
          :code $ quote
            defn >> (states k)
              let
                  parent-cursor $ option:unwrap-or (:cursor states) ([])
                  branch $ option:unwrap-or (get states k) ({})
                assoc branch :cursor $ conj parent-cursor k
          :examples $ []
            quote $ >> states :task-a
          :schema $ :: 'Fn
            {} (:return 'Map)
              :args $ [] 'Map 'Dynamic
        |a $ %{} :CodeEntry (:doc "|Creates HTML link element (anchor tag).\n\nParameters:\n  props - Attribute map, can include standard HTML attributes like href, target, class-name, etc.\n  & children - Variable arguments for child elements, typically link display text or other elements\n\nReturns:\n  Created link element component\n\nUsed to create hyperlinks, supports all standard HTML link attributes.")
          :code $ quote
            defn a (props & children) (create-element :a props & children)
          :examples $ []
            quote $ a
              {} (:href |https://example.com) (:inner-text "|Visit Example")
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |blockquote $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn blockquote (props & children) (create-element :blockquote props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |body $ %{} :CodeEntry (:doc "|create a body element with properties and children. first argument is a hashmap for properties, rest arguments are children elements.")
          :code $ quote
            defn body (props & children) (create-element :body props & children)
          :examples $ []
            quote $ body ({})
              div ({}) (<> |Content)
            quote $ body
              {} $ :style
                {} $ :margin |0
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |build-effect $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn build-effect (name deps method)
              when
                not $ tag? name
                raise "|[Respo/build-effect] expected a tag name"
              when
                not $ list? deps
                raise "|[Respo/build-effect] expected dependencies as a list"
              let
                  method-fn $ expect-function method "|[Respo/build-effect] expected a lifecycle method function"
                %{} schema/Effect (:name name)
                  :coord $ []
                  :args deps
                  :method method-fn
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Effect)
              :args $ [] 'Tag 'List 'Fn
          :tags $ #{} :internal
        |button $ %{} :CodeEntry (:doc "|Renders a <button> element. Wrapper around create-element.")
          :code $ quote
            defn button (props & children)
              create-element :button props & $ map children confirm-child
          :examples $ []
            quote $ button
              {} $ :on-click
                fn (e d!)
                  d! $ :: :click
              <> "|Click me"
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |clear-cache! $ %{} :CodeEntry (:doc "|Clear memoized render caches used by Respo.\n\nThis is mainly useful during hot reloading or code swapping, where mounted DOM may stay in place but cached render results must be dropped before the next render.")
          :code $ quote
            defn clear-cache! () $ memo/reset-component-caches!
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |code $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn code (props & children) (create-element :code props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |confirm-child $ %{} :CodeEntry (:doc "|Validates if the item is a valid Respo node (element, component, or nil). Returns the item.")
          :code $ quote
            defn confirm-child (x)
              assert "|Invalid data in elements tree: " $ or (nil? x) (element? x) (component? x)
              , x
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic
        |confirm-child-pair $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn confirm-child-pair (pair)
              assert "|expected pair" $ and (list? pair)
                &= 2 $ count pair
              &let
                x $ option:unwrap (nth pair 1)
                assert "|Invalid data in elements tree: " $ or (nil? x) (element? x) (component? x)
              , pair
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'List)
              :args $ [] 'List
        |create-element $ %{} :CodeEntry (:doc "|Low-level helper for creating a virtual DOM element.\n\nPass a tag name, an optional props map, and child nodes. Public helpers such as `div`, `span`, `button`, and `input` are thin wrappers around this function.")
          :code $ quote
            defn create-element (tag-name props & children)
              let
                  props-map $ normalize-dom-props props
                  ref-value $ option:unwrap-or (get props-map :ref) nil
                  ref! $ if (nil? ref-value) nil (expect-function ref-value "|[Respo/create-element] expected :ref to be a function or nil")
                  attrs $ pick-attrs props-map
                  styles $ ->
                    either
                      option:unwrap-or (get props-map :style) ({})
                      {}
                    &map:to-list
                    sort $ fn (x y)
                      &compare (nth x 0) (nth y 0)
                  event $ pick-event props-map
                  children-nodes $ -> children
                    map-indexed $ fn (idx item) (confirm-child item) ([] idx item)
                    filter val-exists?
                %{} schema/Element (:name tag-name) (:coord nil) (:attrs attrs) (:style styles) (:event event) (:children children-nodes) (:ref ref!)
          :examples $ []
            quote $ create-element :div ({})
            quote $ create-element :span
              {} $ :class-name |text
            quote $ create-element :a
              {} $ :href |/home
              <> |Home
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'Tag 'respo.schema/DomProps
        |create-list-element $ %{} :CodeEntry (:doc "|Creates a virtual DOM element for keyed list rendering. child-pairs may be an ordered list or a map of [key child] pairs; invalid collections fail at this API boundary.")
          :code $ quote
            defn create-list-element (tag-name props child-pairs)
              when
                not $ or (list? child-pairs) (map? child-pairs)
                raise "|[Respo/create-list-element] expected keyed child pairs as a list or map"
              let
                  props-map $ normalize-dom-props props
                  ref-value $ option:unwrap-or (get props-map :ref) nil
                  ref! $ if (nil? ref-value) nil (expect-function ref-value "|[Respo/create-list-element] expected :ref to be a function or nil")
                  attrs $ pick-attrs props-map
                  styles $ ->
                    option:unwrap-or (get props-map :style) ({})
                    .to-list
                    sort $ fn (x y)
                      &compare (first x) (first y)
                  event $ pick-event props-map
                %{} schema/Element (:name tag-name) (:coord nil) (:attrs attrs) (:style styles) (:event event)
                  :children $ map child-pairs confirm-child-pair
                  :ref ref!
          :examples $ []
            quote $ create-list-element :div
              {} $ :class-name |list
              [] $ [] :item-1
                span $ {}
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Element)
              :args $ [] 'Tag 'respo.schema/DomProps 'Dynamic
        |decorate-defcomp $ %{} :CodeEntry (:doc "|detect root element under component and add `data-defcomp` mark")
          :code $ quote
            defn decorate-defcomp (c name)
              update c :tree $ fn (tree)
                if
                  and (struct? tree)
                    = (&struct:definition tree) schema/Element
                  update tree :attrs $ fn (attrs)
                    conj attrs $ [] :data-comp name
                  , tree
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'respo.schema/Component 'String
        |defcomp $ %{} :CodeEntry (:doc "|Macro for defining a Respo component.\n\n`defcomp` expands to a function that returns a `respo.schema/Component`, decorates the component name, and extracts component effects declared from the render result. Use it for reusable view functions that accept props or state cursors and return virtual DOM.")
          :code $ quote
            defmacro defcomp (comp-name params & body)
              assert "|expected symbol of comp-name" $ symbol? comp-name
              assert "|expected list for params" $ list? params
              assert "|some component retured" $ &> (count body) 0
              quasiquote $ defn ~comp-name (~ params)
                decorate-defcomp
                  extract-effects-list $ %{} schema/Component
                    :effects $ []
                    :name $ ~ (turn-tag comp-name)
                    :listeners $ []
                    :tree $ do (~@ body)
                  ~ $ turn-string comp-name
          :examples $ []
            quote $ defcomp comp-demo ()
              div ({}) (<> |Hello)
            quote $ defcomp comp-button (text)
              button ({}) (<> text)
            quote $ defcomp comp-link (href text)
              a
                {} $ :href href
                <> text
            quote $ defcomp comp-with-effect (value)
              [] (effect-log value)
                div ({}) (<> value)
          :schema $ :: 'Dynamic
        |defeffect $ %{} :CodeEntry (:doc "|Macro for defining component effects.\n\nThe generated effect receives lifecycle information such as `action`, the root element, and `at-place?`, and is typically used inside a component effect vector like `[] (effect ...) child-tree`.\n\nSupported actions are `:mount`, `:before-update`, `:update`, and `:unmount`.")
          :code $ quote
            defmacro defeffect (effect-name args params & body)
              assert "|args in symbol" $ and (list? args) (every? args symbol?)
              assert "|params like [action el at-place?]" $ and (list? params) (every? params symbol?)
              let
                  args-var $ gensym |args
                  params-var $ gensym |params
                quasiquote $ defn ~effect-name ~args
                  %{} schema/Effect
                    :name $ ~ (turn-tag effect-name)
                    :coord $ []
                    :args $ [] ~@args
                    :method $ fn (~args-var ~params-var)
                      let[] ~args ~args-var $ let[] ~params ~params-var
                        ~ $ if (empty? body)
                          quasiquote $ do
                            println $ str-spaced |WARNING: ~effect-name "|lack code for handling effects!"
                          quasiquote $ do ~@body
          :examples $ []
            quote $ defeffect log-message (message) (action el at-place?)
              if (= action :mount) (js/console.log message)
          :schema $ :: 'Dynamic
        |defplugin $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro defplugin (x params & body)
              assert "|expected symbol" $ symbol? x
              assert "|expected params" $ list? params
              assert "|expected some result" $ > (count body) 0
              quasiquote $ defn ~x ~params ~@body
          :examples $ []
          :schema $ :: 'Dynamic
        |div $ %{} :CodeEntry (:doc "|Create a `<div>` virtual element.\n\nThe first argument is an optional props map. Remaining arguments are child nodes. Put DOM props such as `:class-name`, `:style`, and event handlers in the props map.")
          :code $ quote
            defn div (props & children) (create-element :div props & children)
          :examples $ []
            quote $ div ({}) (<> |text)
            quote $ div
              {} $ :class-name |container
            quote $ div
              {} $ :style
                {} $ :color |red
            quote $ div
              {} $ :on
                {} $ :click on-click
            quote $ div ({})
              div ({}) (<> |child1)
              div ({}) (<> |child2)
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |effect-on-mount $ %{} :CodeEntry (:doc "|Creates a component effect that calls mount! with the real DOM target after mounting.")
          :code $ quote
            defn effect-on-mount (mount!)
              let
                  mount-fn $ expect-function mount! "|[Respo/effect-on-mount] expected a callback function"
                build-effect :effect-on-mount ([])
                  fn (_args params)
                    let[] (action target _at-place?) params $ when (= action :mount) (mount-fn target)
          :examples $ []
            quote $ effect-on-mount
              fn (_target) nil
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Effect)
              :args $ [] 'Fn
        |effect-on-unmount $ %{} :CodeEntry (:doc "|Creates a component effect that calls unmount! with the current DOM target before removal.")
          :code $ quote
            defn effect-on-unmount (unmount!)
              let
                  unmount-fn $ expect-function unmount! "|[Respo/effect-on-unmount] expected a callback function"
                build-effect :effect-on-unmount ([])
                  fn (_args params)
                    let[] (action target _at-place?) params $ when (= action :unmount) (unmount-fn target)
          :examples $ []
            quote $ effect-on-unmount
              fn (_target) nil
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Effect)
              :args $ [] 'Fn
        |effect-on-update $ %{} :CodeEntry (:doc "|Creates a component effect that calls update! when the immutable dependency list changes.")
          :code $ quote
            defn effect-on-update (deps update!)
              when
                not $ list? deps
                raise "|[Respo/effect-on-update] expected dependencies as a list"
              let
                  update-fn $ expect-function update! "|[Respo/effect-on-update] expected a callback function"
                build-effect :effect-on-update deps $ fn (_args params)
                  let[] (action target _at-place?) params $ when (= action :update) (update-fn target)
          :examples $ []
            quote $ effect-on-update ([] 1)
              fn (_target) nil
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Effect)
              :args $ [] 'List 'Fn
        |effect-watch $ %{} :CodeEntry (:doc "|Creates a dependency-aware effect. setup! runs on mount and after dependency changes; cleanup! runs before a changed setup and on unmount. Cleanup uses the old render closure.")
          :code $ quote
            defn effect-watch (deps setup! cleanup-option)
              when
                not $ list? deps
                raise |[Respo/effect-watch]-expected-dependencies-as-a-list
              let
                  setup-fn $ expect-function setup! |[Respo/effect-watch]-expected-setup-callback
                  cleanup-fn $ option:map cleanup-option
                    fn (cleanup!) (expect-function cleanup! |[Respo/effect-watch]-expected-cleanup-callback)
                build-effect :effect-watch deps $ fn (_args params)
                  let[] (action target _at-place?) params $ case-default action nil
                    :mount $ setup-fn target
                    :before-update $ option:fold cleanup-fn
                      fn () nil
                      fn (cleanup!)
                        (unsafe-coerce cleanup! Fn) target
                    :update $ setup-fn target
                    :unmount $ option:fold cleanup-fn
                      fn () nil
                      fn (cleanup!)
                        (unsafe-coerce cleanup! Fn) target
          :examples $ []
            quote $ effect-watch ([] 1)
              fn (_target) nil
              fn (_target) nil
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Effect)
              :args $ [] 'List 'Fn (:: 'Option 'Fn)
        |element-type $ %{} :CodeEntry (:doc |)
          :code $ quote
            def element-type $ resolve-element-constructor
          :examples $ []
          :schema $ :: 'Dynamic
        |error-boundary $ %{} :CodeEntry (:doc "|Catches synchronous errors while evaluating one child expression and calls fallback with the error. It stores no hidden error state, so the next immutable store render retries the child.")
          :code $ quote
            defmacro error-boundary (fallback & body)
              when
                not $ = 1 (count body)
                raise "|[Respo/error-boundary] expected exactly one child expression"
              with-gensyms (fallback-fn error)
                let
                    child $ option:unwrap (first body)
                  quasiquote $ let
                      ~fallback-fn $ respo.util.detect/expect-function ~fallback "|[Respo/error-boundary] expected fallback as a function"
                    try ~child $ fn (~error) (~fallback-fn ~error)
          :examples $ []
            quote $ error-boundary
              fn (_error)
                div ({}) (<> |Failed)
              div ({}) (<> |Ready)
          :schema $ :: 'Dynamic
        |extract-effects-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn extract-effects-list (markup)
              &let
                markup-tree $ &struct:get markup :tree
                cond
                    nil? markup-tree
                    assoc markup :tree $ span ({})
                  (list? markup-tree)
                    let
                        node-tree $ option:unwrap
                          find markup-tree $ fn (x)
                            and (struct? x)
                              or (component? x) (element? x)
                        effects-list $ -> markup-tree (filter effect?)
                        listeners-list $ -> markup-tree (filter listener?)
                      -> markup (assoc :tree node-tree) (assoc :effects effects-list) (assoc :listeners listeners-list)
                  true markup
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'respo.schema/Component
        |for-keyed $ %{} :CodeEntry (:doc "|Maps an ordered immutable list to keyed [key child] pairs for list->. key-fn receives the item; render-item receives item and index. Nil keys raise an indexed error.")
          :code $ quote
            defn for-keyed (items key-fn render-item)
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
                    [] key $ confirm-child (render-child item idx)
          :examples $ []
            quote $ for-keyed
              []
                {} (:id :a) (:label |A)
                {} (:id :b) (:label |B)
              fn (item) (:id item)
              fn (item _idx)
                div ({})
                  <> $ :label item
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'List 'T)
                :: 'Fn $ {} (:return 'K)
                  :args $ [] 'T
                :: 'Fn $ {} (:return 'Dynamic)
                  :args $ [] 'T 'Number
              :generics $ [] 'T 'K
              :return $ :: 'List 'List
        |h1 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn h1 (props & children) (create-element :h1 props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |h2 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn h2 (props & children) (create-element :h2 props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |h3 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn h3 (props & children) (create-element :h3 props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |h4 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn h4 (props & children) (create-element :h4 props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |h5 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn h5 (props & children) (create-element :h5 props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |h6 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn h6 (props & children) (create-element :h6 props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |head $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn head (props & children) (create-element :head props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |hr $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn hr (props) (create-element :hr props)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |html $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn html (props & children)
              create-element :html props & $ map children confirm-child
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |img $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn img (props & children) (create-element :img props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |input $ %{} :CodeEntry (:doc "|Creates HTML input element (input tag).\n\nParameters:\n  props - Attribute map, can include standard HTML attributes and event handlers like type, value, placeholder, on-input, etc.\n  & children - Variable arguments for child elements, usually empty since input is self-closing\n\nReturns:\n  Created input element component\n\nUsed to create various form input controls, supports text, password, number and other input types.")
          :code $ quote
            defn input (props & children) (create-element :input props & children)
          :examples $ []
            quote $ input
              {} (:type |text) (:placeholder "|Enter your name")
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |li $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn li (props & children) (create-element :li props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |link $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn link (props & children) (create-element :link props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |list-> $ %{} :CodeEntry (:doc "|Render keyed children inside a `<div>`.\n\nPass an optional props map and a keyed children collection of `[key child]` pairs so diffing can reconcile inserts, removals, and reordering by key.")
          :code $ quote
            defn list-> (props children) (create-list-element :div props children)
          :examples $ []
            quote $ list-> ({})
              [] $ [] :a
                div $ {}
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps 'Dynamic
        |make-render-scheduler $ %{} :CodeEntry (:doc "|Returns a zero-argument scheduler. The default queueMicrotask implementation coalesces repeated requests before its callback runs; a custom enqueue! owns timing semantics. It stores only queued metadata, never application state.")
          :code $ quote
            defn make-render-scheduler (render! enqueue-option)
              let
                  render-fn $ expect-function render! |[Respo/make-render-scheduler]-expected-render-function
                  queue! $ option:fold enqueue-option
                    fn () js/queueMicrotask
                    fn (enqueue!) (expect-function enqueue! "|[Respo/make-render-scheduler] expected enqueue! as a function or nil")
                  *queued? $ atom false
                fn () $ when (not @*queued?) (reset! *queued? true)
                  queue! $ fn () (reset! *queued? false) (render-fn)
          :examples $ []
            quote $ make-render-scheduler
              fn () nil
              fn (task) (task)
          :schema $ :: 'Fn
            {}
              :args $ [] 'Fn (:: 'Option 'Fn)
              :features $ #{} :js-ffi
              :return $ :: 'Fn
                {} (:return 'Unit)
                  :args $ []
        |memo-comp-by $ %{} :CodeEntry (:doc "|Memoize a component by key and its full argument list. Use it while building a tree inside render-with! so entries whose keys disappear are pruned after the frame. A nil key bypasses caching.")
          :code $ quote
            defn memo-comp-by (key f & args) (memo/memo-comp-by key f & args)
          :examples $ []
            quote $ memo-comp-by :demo
              fn (label)
                %{} schema/Component
                  :effects $ []
                  :name :memo-demo
                  :listeners $ []
                  :tree $ <> label
              , |demo
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Component)
              :args $ [] 'Dynamic 'Fn
        |memo-value-by $ %{} :CodeEntry (:doc "|Memoizes an immutable derived value by function, stable key, and complete argument list. Use inside render-with! so frame pruning follows the rendered tree. A nil key bypasses the cache.")
          :code $ quote
            defn memo-value-by (key f & args) (memo/memo-value-by key f & args)
          :examples $ []
            quote $ memo-value-by :task-count count ([] :a :b :c)
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'Dynamic)
              :args $ [] 'Dynamic 'Fn
        |mount-app! $ %{} :CodeEntry (:doc "|Mounts the Respo application to the DOM. Initializes the global element and event listeners.")
          :code $ quote
            defn mount-app! (target element *dispatch-fn)
              ; assert "|1st argument should be an element" $ or (nil? target) (instance? element-type target)
              ; assert "|2nd argument should be a component" $ component? element
              let
                  deliver-event $ build-deliver-event *global-element *dispatch-fn
                  changes $ &buf-list:new
                  collect! $ fn (op) (&buf-list:push changes op)
                ; println "|mount app"
                activate-instance! element target deliver-event
                collect-mounting collect! ([]) ([]) element true
                reset! *global-element element
                patch-instance! (&buf-list:to-list changes) target deliver-event
          :examples $ []
            quote $ mount-app! mount-target (comp-app) *dispatch-fn
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'respo.schema/Component (:: 'Ref 'Fn)
              :features $ #{} :js-ffi
        |normalize-dom-props $ %{} :CodeEntry (:doc "|Normalize nil, map, or DomProps record input into a map. This isolates the intentionally dynamic public props boundary before typed DOM processing.")
          :code $ quote
            defn normalize-dom-props (props)
              cond
                  nil? props
                  {}
                (struct? props)
                  &map:filter-kv (&struct:to-map props)
                    fn (_k v) (some? v)
                (map? props) props
                true $ raise
                  str |Expected_DOM_props_map_or_record,_got: $ type-of props
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] 'Dynamic
              :return $ :: 'Map 'Tag 'Dynamic
        |ol $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn ol (props & children) (create-element :ol props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |option $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn option (props & children) (create-element :option props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |p $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn p (props & children) (create-element :p props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |pre $ %{} :CodeEntry (:doc "|Renders a <pre> element. Wrapper around create-element.")
          :code $ quote
            defn pre (props & children) (create-element :pre props & children)
          :examples $ []
            quote $ pre
              {} $ :style
                {} $ :color :red
              <> "|Code block"
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |realize-ssr! $ %{} :CodeEntry (:doc "|Adopt server-rendered DOM before the first client render.\n\nIt compares the incoming component tree to the existing HTML, mounts effects, registers listeners, and records a muted virtual tree in `*global-element` so later `render!` calls can patch instead of remounting.")
          :code $ quote
            defn realize-ssr! (target element dispatch!)
              assert (instance? element-type target) "|1st argument should be an element"
              assert (component? element) "|2nd argument should be a component"
              let
                  app-element $ .-firstElementChild target
                  changes $ &buf-list:new
                  collect! $ fn (op coord n-coord v)
                    &buf-list:push changes $ [] op coord n-coord v
                  deliver-event $ build-deliver-event *global-element (atom dispatch!)
                if (js-nullish? app-element) (raise "|Detected no element from SSR!")
                compare-to-dom! (purify-element element) app-element
                collect-mounting collect! ([]) ([]) element true
                reset! *global-element $ mute-element element
                patch-instance! (&buf-list:to-list changes) target deliver-event
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'respo.schema/Component 'Fn
              :features $ #{} :js-ffi
        |render! $ %{} :CodeEntry (:doc "|Synchronize a component tree to a mount target.\n\nThe first call mounts the app. Later calls diff against `*global-element` and patch the existing DOM. `dispatch!` is stored internally and used by generated event listeners to deliver action tuples.\n\nThe stored example wraps the call in a function so `check-examples` validates the public call shape without executing browser DOM effects.")
          :code $ quote
            defn render! (target markup dispatch!) (reset! *dispatch-fn dispatch!)
              if (some? @*global-element) (rerender-app! target markup *dispatch-fn) (mount-app! target markup *dispatch-fn)
          :examples $ []
            quote $ fn (mount-target component dispatch!) (render! mount-target component dispatch!)
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'respo.schema/Component 'Fn
              :features $ #{} :js-ffi
        |render-with! $ %{} :CodeEntry (:doc "|Build a Component tree inside a managed memo frame, prune inactive component keys, then render it. Pass a zero-argument tree builder so memo calls happen inside the frame.")
          :code $ quote
            defn render-with! (target render-tree dispatch!) (memo/begin-memo-frame!)
              let
                  element $ render-tree
                memo/finish-memo-frame!
                render! target element dispatch!
          :examples $ []
            quote $ render-with! mount-target
              fn () $ comp-container @*store
              , dispatch!
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic
                :: 'Fn $ {} (:return 'respo.schema/Component)
                  :args $ []
                , 'Fn
              :features $ #{} :js-ffi
        |rerender-app! $ %{} :CodeEntry (:doc "|Diffs the new element against the global element and patches the DOM. Used internally by render!.")
          :code $ quote
            defn rerender-app! (target element *dispatch-fn)
              if (identical? @*global-element element) nil $ let
                  deliver-event $ build-deliver-event *global-element *dispatch-fn
                  changes $ &buf-list:new
                  collect! $ fn (op) (&buf-list:push changes op)
                find-element-diffs collect! ([]) ([]) @*global-element element
                let
                    changes-list $ &buf-list:to-list changes
                  if-let (logger @*changes-logger)
                    (unsafe-coerce logger Fn) @*global-element element changes-list
                  reset! *global-element element
                  patch-instance! changes-list target deliver-event
          :examples $ []
            quote $ rerender-app! mount-target (comp-demo) *dispatch-fn
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'respo.schema/Component (:: 'Ref 'Fn)
              :features $ #{} :js-ffi
        |resolve-element-constructor $ %{} :CodeEntry (:doc "|Resolves the browser Element constructor behind an explicit JavaScript FFI function so element-type remains a value rather than a zero-argument function.")
          :code $ quote
            defn resolve-element-constructor () $ if (exists? js/Element) js/Element js/Error
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |script $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn script (props & children) (create-element :script props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |select $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn select (props & children) (create-element :select props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |show $ %{} :CodeEntry (:doc "|Conditional rendering macro. Accepts one child and an optional fallback without introducing hidden component state.")
          :code $ quote
            defmacro show (condition & branches)
              let
                  branch-count $ count branches
                when
                  not $ and (>= branch-count 1) (<= branch-count 2)
                  raise "|[Respo/show] expected a child and an optional fallback"
                let
                    child $ option:unwrap (first branches)
                    fallback $ if (= branch-count 2)
                      option:unwrap $ last branches
                      , nil
                  quasiquote $ if ~condition ~child ~fallback
          :examples $ []
            quote $ show true
              div ({}) (<> |Ready)
              div ({}) (<> |Loading)
          :schema $ :: 'Dynamic
        |span $ %{} :CodeEntry (:doc "|create a span element with properties and children. first argument is a hashmap for properties, rest arguments are children elements.")
          :code $ quote
            defn span (props & children) (create-element :span props & children)
          :examples $ []
            quote $ span ({}) (<> |text)
            quote $ span
              {} $ :class-name |highlight
            quote $ span
              {} $ :style
                {} $ :color |blue
              <> |Blue
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |strong $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn strong (props & children) (create-element :strong props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |style $ %{} :CodeEntry (:doc "|Creates HTML style element for defining CSS styles.\n\nParameters:\n  props - Attribute map, can include standard HTML attributes for style elements\n  & children - Variable arguments for child elements, typically CSS style content\n\nReturns:\n  Created style element component\n\nUsed to dynamically define CSS styles within components, supports nested and dynamic style generation.")
          :code $ quote
            defn style (props & children) (create-element :style props & children)
          :examples $ []
            quote $ style
              {} $ :innerHTML "|body { margin: 0; padding: 0; }"
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |textarea $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn textarea (props & children)
              create-element :textarea props & $ map children confirm-child
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |title $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn title (props & children) (create-element :title props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
        |ul $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn ul (props & children) (create-element :ul props & children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Element)
              :args $ [] 'respo.schema/DomProps
      :ns $ %{} :NsEntry (:doc "|provide core APIs for Respo, many of them are elements. if expected element is not defined yet, use `create-element :tag-name ...` to use it dynamically.\n")
        :code $ quote
          ns respo.core $ :require
            respo.controller.resolve :refer $ build-deliver-event
            respo.render.diff :refer $ find-element-diffs
            respo.render.effect :refer $ collect-mounting
            respo.util.format :refer $ purify-element mute-element
            respo.controller.client :refer $ activate-instance! patch-instance!
            respo.util.list :refer $ pick-attrs pick-event val-exists?
            respo.schema :as schema
            respo.util.dom :refer $ compare-to-dom!
            respo.util.detect :refer $ component? element? effect? listener? expect-function
            respo.memo :as memo
    |respo.css $ %{} :FileEntry
      :defs $ {}
        |*style-caches $ %{} :CodeEntry (:doc "|Atom for caching style information.")
          :code $ quote
            defatom *style-caches $ {}
          :examples $ []
          :schema $ :: 'Ref
        |*style-list-in-nodejs $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *style-list-in-nodejs $ []
          :examples $ []
          :schema $ :: 'Ref
        |create-style! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn create-style! (style-name rules)
              assert "|expected rules in map" $ map? rules
              if (contains? @*style-caches style-name)
                if
                  = rules $ option:unwrap
                    get-in @*style-caches $ [] style-name :rules
                  , style-name $ let
                      style-el $ unsafe-coerce
                        option:unwrap $ get-in @*style-caches ([] style-name :el)
                        , JsObject
                      css-block $ render-css-block style-name rules
                    set! (.-innerHTML style-el) css-block
                    swap! *style-caches assoc-in ([] style-name :rules) rules
                    , style-name
                let
                    css-block $ render-css-block style-name rules
                  if nodejs? (swap! *style-list-in-nodejs conj css-block)
                    let
                        style-el $ unsafe-coerce (js/document.createElement |style) JsObject
                      set! (.-innerHTML style-el) css-block
                      set! (.-id style-el) style-name
                      js/document.head.appendChild style-el
                      swap! *style-caches assoc style-name $ {} (:rules rules) (:el style-el)
                  , style-name
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String 'Map
              :features $ #{} :js-ffi
        |defstyle $ %{} :CodeEntry (:doc "|a macro for turning CSS rules into className, and only works for JavaScript.\n\nuse `defstyle` like:\n\n```cirru\ndefstyle style-demo $ {}\n  |& $ {} (:color :red)\n  \"|&:hover\" $ {}\n    :background-color :blue\n```\n\nwhere `&` refers to current element.\n\nIn the rules, it's nested hashmaps. `|&` and `|&:hover` are CSS queries. and in nested hashmaps there are CSS properties defined in calcit data.\n")
          :code $ quote
            defmacro defstyle (style-name rules)
              assert "|expected symbol of style-name" $ symbol? style-name
              warn-style-literals rules
              if-let
                query0 $ optionally (&list:nth rules 1)
                assert "|expected rule 0 to be hashmap or symbol, use `defstyle` like:\n\n```cirru\ndefstyle style-demo $ {}\n  |& $ {}\n    :color :red\n```\n\nwhere `&` refers to current element.\n" $ if-let
                  rule0 $ optionally (&list:nth query0 1)
                  or (symbol? rule0)
                    and (list? rule0)
                      &let
                        h $ &list:nth rule0 0
                        or (&= '{} h) (&= 'merge h)
              if-let
                query1 $ optionally (&list:nth rules 2)
                assert "|expected rule 1 to be hashmap or symbol, use `defstyle` like:\n\n```cirru\ndefstyle style-demo $ {}\n  |& $ {} (:color :red)\n  \"|&:hover\" $ {}\n    :background-color :blue\n```\n\nwhere `&` refers to current element" $ if-let
                  rule1 $ optionally (&list:nth query1 1)
                  or (symbol? rule1)
                    and (list? rule1)
                      &let
                        h $ &list:nth rule1 0
                        or (&= '{} h) (&= 'merge h)
              let
                  style-name-str $ str
                    -> (turn-string style-name) (&str:replace |! |_EX_) (&str:replace |? |_QU_)
                    , |__
                      ->
                        option:unwrap $ :ns (&extract-code-into-edn style-name)
                        turn-string
                        &str:replace |. |_
                quasiquote $ def ~style-name (create-style! ~style-name-str ~rules)
          :examples $ []
            quote $ defstyle style-button
              {} (:& button)
                |&:hover $ {} (:transform "|scale(1.04)")
            quote $ defstyle style-input
              {} $ |&
                {} (:font-size |16px) (:padding "|0px 8px")
                  :background-color $ hsl 0 0 94
            quote $ defstyle style-bold
              {} $ |&
                {} $ :font-weight "|bold !important"
            quote $ defstyle style-space
              {} $ :&
                {} (:height 1) (:width 1) (:display :inline-block)
            quote $ defstyle style-global
              {}
                |& $ {} (:font-family |Avenir,Verdana)
                |& $ {} ('contained "|@media only screen and (max-width: 600px)")
                  :background-color $ hsl 0 0 90
            quote $ defstyle style-absolute
              {} $ |&
                {} (:position :absolute) (:top 0) (:left 0)
            quote $ defstyle style-card
              {} $ |&
                {} (:border-radius |8px) (:box-shadow "|0 2px 8px rgba(0,0,0,0.1)") (:padding |16px)
            quote $ defstyle style-flex
              {} $ |&
                {} (:display :flex) (:align-items :center) (:justify-content :space-between)
            quote $ defstyle style-link
              {}
                |& $ {} (:color |blue) (:text-decoration :none)
                |&:hover $ {} (:text-decoration :underline)
            quote $ defstyle style-text
              {}
                |& $ {} (:font-size |14px) (:line-height |1.6)
                  :color $ hsl 0 0 20
                |&::before $ {} (:content "|\"→ \"")
          :schema $ :: 'Macro
            {} $ :args ([] 'Symbol 'List)
        |detect-nodejs? $ %{} :CodeEntry (:doc "|Detects Node.js behind an explicit JavaScript FFI function so nodejs? remains a Boolean value.")
          :code $ quote
            defn detect-nodejs? () $ and (exists? js/process) (= js/process.release.name |node)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ []
              :features $ #{} :js-ffi
        |nodejs? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def nodejs? $ detect-nodejs?
          :examples $ []
          :schema $ :: 'Bool
        |render-css-block $ %{} :CodeEntry (:doc "|Generates a CSS string block from a map of style rules.")
          :code $ quote
            defn render-css-block (style-name rules)
              -> rules
                .map-list $ fn (pair)
                  let
                      k $ turn-string
                        option:unwrap $ nth pair 0
                      v $ option:unwrap (nth pair 1)
                    assert "|expected rule name in string" $ string? k
                    assert "|expected rule styles in map" $ map? v
                    let
                        class-rule $ str |. style-name
                        rule-name $ &str:replace (&str:replace k |$0 class-rule) |& class-rule
                        contained $ get v 'contained
                        css-line $ style->string (.to-list v)
                      if-let (contained-value contained) (str contained-value "| {" &newline rule-name "| {" &newline css-line &newline |} &newline |}) (str rule-name "| {" &newline css-line &newline |})
                .to-list
                .join-str $ str &newline &newline
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String 'Map
        |warn-style-literals $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn warn-style-literals (x)
              if (list? x)
                if
                  &= '{} $ &list:nth x 0
                  loop
                      pairs $ rest x
                    if (empty? pairs) nil $ let
                        pair $ &list:first pairs
                        value $ &list:nth pair 1
                      when
                        some? $ &list:nth pair 2
                        println "|[Respo] defstyle warning: CSS value has extra tokens. In Cirru, an unquoted multi-word CSS value is parsed as multiple AST nodes; use a quoted string such as |0 auto or |1px solid ... ."
                      warn-style-literals value
                      recur $ rest pairs
                  , nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.css $ :require
            respo.render.dom :refer $ style->string
    |respo.cursor $ %{} :FileEntry
      :defs $ {}
        |update-states $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn update-states (store cursor new-state)
              assoc-in store
                concat ([] :states) cursor $ [] :data
                , new-state
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'T)
              :args $ [] 'T 'List 'Dynamic
              :generics $ [] 'T
        |update-states-kv $ %{} :CodeEntry (:doc "|a quick dirty trick to partially update component state.\n\nnotice: need to handle empty state manually.")
          :code $ quote
            defn update-states-kv (store cursor k v)
              update-in store
                concat ([] :states) cursor $ [] :data
                fn (state-option)
                  option:fold state-option
                    fn () $ do (js/console.warn |:states-kv-missing-state) nil
                    fn (state)
                      if (map? state) (assoc state k v)
                        do (js/console.warn |:states-kv-invalid-state state) state
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'T)
              :args $ [] 'T 'List 'Dynamic 'Dynamic
              :generics $ [] 'T
        |update-states-merge $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn update-states-merge (store cursor state0 changes)
              update-in store
                concat ([] :states) cursor $ [] :data
                fn (state-option)
                  option:fold state-option
                    fn () $ noted |merge-base-initial-state (merge state0 changes)
                    fn (state)
                      if
                        or (map? state) (struct? state)
                        noted |merge-base-latest-state $ merge state changes
                        do (js/console.warn |unknown-state-to-merge state) state
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'T)
              :args $ [] 'T 'List 'Dynamic 'Map
              :generics $ [] 'T
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns respo.cursor)
    |respo.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () $ do
              if-let
                raw $ js-nullish->option (js/window.localStorage.getItem |respo.calcit)
                let
                    decoded $ parse-cirru-edn (unsafe-coerce raw String)
                    tasks $ if (enum? decoded)
                      option:unwrap-or
                        unsafe-coerce decoded $ :: 'Option 'Dynamic
                        []
                      , decoded
                  when
                    not $ list? tasks
                    raise |[Respo/main!]-expected-saved-tasks-as-a-list
                  let
                      restored $ -> tasks (map normalize-task) (filter option:some?) (map option:unwrap)
                    assert-type restored $ :: List respo.app.schema/Task
                    swap! *store assoc :tasks restored
              render-app! mount-target
              js/window.addEventListener |keydown $ fn (event)
                let
                    event-tuple $ :: :keydown
                      {}
                        :key $ .-key event
                        :ctrl $ .-ctrlKey event
                        :shift $ .-shiftKey event
                        :alt $ .-altKey event
                        :meta $ .-metaKey event
                  send-to-component! event-tuple
              add-watch *store :rerender $ fn (store prev) (render-app! mount-target)
              ; reset! *changes-logger $ fn (old-tree new-tree changes) (js/console.log |Patch changes)
              println |Loaded. $ js/performance.now
              set! js/window.onbeforeunload $ fn (event) (save-store!)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
              :features $ #{} :js-ffi
        |mount-target $ %{} :CodeEntry (:doc "|Default DOM element selector (.app) for mounting the application.")
          :code $ quote
            def mount-target $ query-mount-target
          :examples $ []
          :schema $ :: 'JsNullish 'JsObject
        |normalize-task $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn normalize-task (data)
              if
                or (struct? data) (map? data)
                let
                    id $ get data :id
                    text $ get data :text
                    done? $ get data :done?
                  if
                    and (option:some? id) (option:some? text) (option:some? done?)
                      string? $ option:unwrap id
                      string? $ option:unwrap text
                      bool? $ option:unwrap done?
                    %some $ %{} Task
                      :id $ unsafe-coerce (option:unwrap id) String
                      :text $ unsafe-coerce (option:unwrap text) String
                      :done? $ unsafe-coerce (option:unwrap done?) Bool
                    %none
                %none
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] 'Dynamic
              :return $ :: 'Option 'respo.app.schema/Task
        |query-mount-target $ %{} :CodeEntry (:doc "|Queries the default mount element behind an explicit JavaScript FFI function so mount-target remains an optional value.")
          :code $ quote
            defn query-mount-target () $ if (exists? js/document) (js/document.querySelector |.app) nil
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ []
              :features $ #{} :js-ffi
              :return $ :: 'JsNullish 'JsObject
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload () $ if (nil? build-errors)
              do (remove-watch *store :rerender) (clear-cache!) (render-app! mount-target)
                add-watch *store :rerender $ fn (store prev) (render-app! mount-target)
                hud! |ok~ |Ok
                js/console.log "|code updated."
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |save-store! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn save-store! () $ do
              js/window.localStorage.setItem |respo.calcit $ format-cirru-edn (&struct:get @*store :tasks)
              ;nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.main $ :require
            respo.core :refer $ *changes-logger clear-cache!
            respo.app.core :refer $ render-app! *store
            respo.app.core :refer $ handle-ssr!
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            respo.controller.client :refer $ send-to-component!
            respo.app.schema :refer $ Op Task
    |respo.memo $ %{} :FileEntry
      :defs $ {}
        |*component-caches $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *component-caches $ {}
          :examples $ []
          :schema $ :: 'Ref
            :: 'Map 'Fn $ :: 'Map 'Dynamic 'respo.memo/MemoEntry
        |*frame-component-caches $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *frame-component-caches $ {}
          :examples $ []
          :schema $ :: 'Ref
            :: 'Map 'Fn $ :: 'Map 'Dynamic 'respo.memo/MemoEntry
        |*memo-frame-active? $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *memo-frame-active? false)
          :examples $ []
          :schema $ :: 'Ref
        |MemoEntry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstruct MemoEntry
              :args $ :: 'List 'Dynamic
              :value 'Dynamic
          :examples $ []
          :schema $ :: 'Dynamic
        |begin-memo-frame! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn begin-memo-frame! ()
              reset! *frame-component-caches $ {}
              reset! *memo-frame-active? true
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |call-component $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-component (f args)
              let
                  value $ call-value f args
                when
                  not $ component? value
                  raise "|[Respo/memo-comp-by] component function must return respo.schema/Component"
                , value
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Fn 'List
        |call-value $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn call-value (f args)
              when
                not $ fn? f
                raise "|[Respo/memo] expected a memo callback function"
              f & args
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'List
          :tags $ #{} :internal
        |component-cache-size $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn component-cache-size () $ reduce (&map:to-list @*component-caches) 0
              fn (total pair)
                + total $ count
                  option:unwrap $ last pair
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ []
        |finish-memo-frame! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn finish-memo-frame! ()
              when @*memo-frame-active? $ reset! *component-caches @*frame-component-caches
              reset! *memo-frame-active? false
              reset! *frame-component-caches $ {}
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |memo-comp-by $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn memo-comp-by (key f & args)
              let
                  value $ memo-value-by key f & args
                when
                  not $ component? value
                  raise "|[Respo/memo-comp-by] component function must return respo.schema/Component"
                , value
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'respo.schema/Component)
              :args $ [] 'Dynamic 'Fn
        |memo-value-by $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn memo-value-by (key f & args)
              if (nil? key) (call-value f args)
                let
                    frame-entry-option $ get-in @*frame-component-caches ([] f key)
                    entry-option $ option:fold frame-entry-option
                      fn () $ get-in @*component-caches ([] f key)
                      fn (entry) (%some entry)
                    hit? $ option:fold entry-option
                      fn () false
                      fn (entry)
                        &= args $ &struct:get entry :args
                    resolved-entry $ if hit? (option:unwrap entry-option)
                      %{} MemoEntry (:args args)
                        :value $ call-value f args
                  if @*memo-frame-active?
                    swap! *frame-component-caches assoc-in ([] f key) resolved-entry
                    when (not hit?)
                      swap! *component-caches assoc-in ([] f key) resolved-entry
                  &struct:get resolved-entry :value
          :examples $ []
          :schema $ :: 'Fn
            {} (:rest 'Dynamic) (:return 'Dynamic)
              :args $ [] 'Dynamic 'Fn
        |reset-component-caches! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reset-component-caches! ()
              reset! *component-caches $ {}
              reset! *frame-component-caches $ {}
              reset! *memo-frame-active? false
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.memo $ :require
            respo.util.detect :refer $ component?
    |respo.render.diff $ %{} :FileEntry
      :defs $ {}
        |detect-keys-dup $ %{} :CodeEntry (:doc "|Checks for duplicate keys in a list of children. Useful for development mode warnings.")
          :code $ quote
            defn detect-keys-dup (child-keys)
              let
                  size $ count child-keys
                  last-pos $ dec size
                if (> size 1)
                  loop
                      p 0
                      q 1
                    if
                      &= (nth child-keys p) (nth child-keys q)
                      do
                        eprintln "|duplicated key" $ nth child-keys p
                        , true
                      if (&< q last-pos)
                        recur p $ inc q
                        let
                            p-next $ inc p
                          if (&< p-next last-pos)
                            recur p-next $ inc p-next
                            , false
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'List
        |find-children-diffs $ %{} :CodeEntry (:doc "|Compares lists of child elements to find structural differences.")
          :code $ quote
            defn find-children-diffs (collect! coord n-coord index old-children new-children)
              if
                or (map? old-children) (map? new-children)
                recur collect! coord n-coord index
                  if (map? old-children)
                    -> (.to-list old-children) .to-list
                    , old-children
                  if (map? new-children)
                    -> (.to-list new-children) .to-list
                    , new-children
                let
                    was-empty? $ empty? old-children
                    now-empty? $ empty? new-children
                  cond
                      and was-empty? now-empty?
                      , nil
                    (and was-empty? (not now-empty?))
                      let
                          pair $ option:unwrap (first new-children)
                          k $ option:unwrap (first pair)
                          element $ option:unwrap (last pair)
                          new-coord $ conj coord k
                        collect! $ :: :append-element new-coord n-coord element
                        collect-mounting collect! coord (conj n-coord index) element true
                        recur collect! coord n-coord (inc index) ([]) (rest new-children)
                    (and (not was-empty?) now-empty?)
                      let
                          pair $ option:unwrap (first old-children)
                          k $ option:unwrap (first pair)
                          element $ option:unwrap (last pair)
                          new-coord $ conj coord k
                          new-n-coord $ conj n-coord index
                        collect-unmounting collect! coord new-n-coord element true
                        collect! $ :: :rm-element new-coord new-n-coord nil
                        recur collect! coord n-coord index (rest old-children) ([])
                    true $ let
                        old-keys $ -> old-children (take 16)
                          map $ fn (entry)
                            option:unwrap $ first entry
                        new-keys $ -> new-children (take 16)
                          map $ fn (entry)
                            option:unwrap $ first entry
                        x1 $ option:unwrap (first old-keys)
                        y1 $ option:unwrap (first new-keys)
                        match-x1 $ fn (x) (= x x1)
                        match-y1 $ fn (x) (= x y1)
                        x1-remains? $ any? new-keys match-x1
                        y1-existed? $ any? old-keys match-y1
                        old-follows $ rest old-children
                        new-follows $ rest new-children
                      if (nil? y1) (js/console.warn |nil-key-is-bad-in-Respo)
                      cond
                          &= x1 y1
                          let
                              old-element $ val-of-first old-children
                              new-element $ val-of-first new-children
                              next-index $ if (some? new-element) (inc index) index
                            find-element-diffs collect! (conj coord x1) (conj n-coord index) old-element new-element
                            recur collect! coord n-coord next-index old-follows new-follows
                        (and x1-remains? (not y1-existed?))
                          let
                              pair $ option:unwrap (first new-children)
                              k $ option:unwrap (first pair)
                              element $ option:unwrap (last pair)
                              new-coord $ conj coord k
                              new-n-coord $ conj n-coord index
                            collect! $ :: :add-element new-coord new-n-coord element
                            collect-mounting collect! coord new-n-coord (val-of-first new-children) true
                            recur collect! coord n-coord (inc index) old-children new-follows
                        (and (not x1-remains?) y1-existed?)
                          let
                              pair $ option:unwrap (first old-children)
                              k $ option:unwrap (first pair)
                              element $ option:unwrap (last pair)
                              new-coord $ conj coord k
                              new-n-coord $ conj n-coord index
                            collect-unmounting collect! coord new-n-coord element true
                            collect! $ :: :rm-element new-coord new-n-coord nil
                            recur collect! coord n-coord index old-follows new-children
                        true $ let
                            xi $ option:unwrap-or (index-of new-keys x1) 16
                            yi $ option:unwrap-or (index-of old-keys y1) 16
                            new-n-coord $ conj n-coord index
                          if
                            not $ &= 1 (&compare xi yi)
                            let
                                new-element $ val-of-first new-children
                                new-coord $ conj coord y1
                              collect! $ :: :add-element new-coord new-n-coord new-element
                              collect-mounting collect! coord new-n-coord new-element true
                              recur collect! coord n-coord (inc index) old-children new-follows
                            do
                              collect-unmounting collect! coord new-n-coord (val-of-first old-children) true
                              collect! $ :: :rm-element (conj coord x1) new-n-coord nil
                              recur collect! coord n-coord index old-follows new-children
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Fn 'List 'List 'Number 'Dynamic 'Dynamic
        |find-element-diffs $ %{} :CodeEntry (:doc "|Internal diff algorithm for comparing old and new virtual DOM trees.\n\nIt collects patch operations via `collect!`, handling components, plain elements, styles, events, keyed children, and effect lifecycle transitions.")
          :code $ quote
            defn find-element-diffs (collect! coord n-coord old-tree new-tree) (; js/console.log "|element diffing:" n-coord old-tree new-tree) (; echo "|element coord" coord)
              cond
                  identical? old-tree new-tree
                  , nil
                (and (nil? old-tree) (some? new-tree))
                  do
                    collect! $ :: :add-element coord n-coord new-tree
                    collect-mounting collect! coord n-coord new-tree true
                (and (some? old-tree) (nil? new-tree))
                  do (collect-unmounting collect! coord n-coord old-tree true)
                    collect! $ :: :rm-element coord n-coord nil
                (and (component? old-tree) (component? new-tree))
                  let
                      next-coord $ conj coord (&struct:get new-tree :name)
                    if
                      = (&struct:get old-tree :name) (&struct:get new-tree :name)
                      do (collect-updating collect! :before-update coord n-coord old-tree new-tree)
                        find-element-diffs collect! next-coord n-coord (&struct:get old-tree :tree) (&struct:get new-tree :tree)
                        collect-updating collect! :update coord n-coord old-tree new-tree
                      do (collect-unmounting collect! coord n-coord old-tree true)
                        collect! $ :: :replace-element coord n-coord new-tree
                        collect-mounting collect! coord n-coord new-tree true
                (and (component? old-tree) (element? new-tree))
                  do (collect-own-unmounting collect! coord n-coord old-tree true)
                    recur collect! coord n-coord (&struct:get old-tree :tree) new-tree
                (and (element? old-tree) (component? new-tree))
                  let
                      new-coord $ conj coord (&struct:get new-tree :name)
                    do
                      find-element-diffs collect! new-coord n-coord old-tree $ &struct:get new-tree :tree
                      collect-own-mounting collect! coord n-coord new-tree true
                (and (element? old-tree) (element? new-tree))
                  if
                    not= (&struct:get old-tree :name) (&struct:get new-tree :name)
                    do (collect-unmounting collect! coord n-coord old-tree true)
                      collect! $ :: :replace-element coord n-coord new-tree
                      collect-mounting collect! coord n-coord new-tree true
                    do
                      find-props-diffs collect! coord n-coord (&struct:get old-tree :attrs) (&struct:get new-tree :attrs)
                      let
                          old-ref $ &struct:get old-tree :ref
                          new-ref $ &struct:get new-tree :ref
                        when
                          not $ identical? old-ref new-ref
                          if (some? old-ref)
                            collect! $ :: :effect-before-update coord n-coord
                              fn (_target) (old-ref nil)
                          if (some? new-ref)
                            collect! $ :: :effect-update coord n-coord
                              fn (target) (new-ref target)
                      let
                          old-style $ &struct:get old-tree :style
                          new-style $ &struct:get new-tree :style
                        if (not= old-style new-style) (find-style-diffs collect! coord n-coord old-style new-style)
                      let
                          old-events $ keys-non-nil
                            either (&struct:get old-tree :event) ({})
                          new-events $ keys-non-nil
                            either (&struct:get new-tree :event) ({})
                        when (not= old-events new-events)
                          let
                              added-events $ difference new-events old-events
                              removed-events $ difference old-events new-events
                            &doseq (event-name added-events)
                              collect! $ :: :set-event coord n-coord event-name
                            &doseq (event-name removed-events)
                              collect! $ :: :rm-event coord n-coord event-name
                      let
                          old-children $ &struct:get old-tree :children
                          new-children $ &struct:get new-tree :children
                        if
                          and dev? $ detect-keys-dup
                            map new-children $ fn (entry)
                              option:unwrap $ first entry
                          js/console.error "|Parent that has dups" new-tree
                        find-children-diffs collect! coord n-coord 0 old-children new-children
                true $ js/console.warn "|Diffing unknown params" old-tree new-tree
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Fn 'List (:: 'List 'Number) 'Dynamic 'Dynamic
        |find-props-diffs $ %{} :CodeEntry (:doc "|Compares old and new sorted property lists to identify additions, removals, and updates.")
          :code $ quote
            defn find-props-diffs (collect! coord n-coord old-props new-props)
              if
                and (list? old-props) (list? new-props)
                let
                    was-empty? $ empty? old-props
                    now-empty? $ empty? new-props
                  cond
                      and was-empty? now-empty?
                      , nil
                    (and was-empty? (not now-empty?))
                      let
                          new-pair $ option:unwrap (first new-props)
                        collect! $ :: :add-prop coord n-coord new-pair
                        recur collect! coord n-coord old-props $ rest new-props
                    (and (not was-empty?) now-empty?)
                      let
                          old-pair $ option:unwrap (first old-props)
                          old-k $ option:unwrap (first old-pair)
                        collect! $ :: :rm-prop coord n-coord old-k
                        recur collect! coord n-coord (rest old-props) new-props
                    true $ let
                        old-pair $ option:unwrap (first old-props)
                        new-pair $ option:unwrap (first new-props)
                        old-k $ option:unwrap (first old-pair)
                        old-v $ option:unwrap (last old-pair)
                        new-k $ option:unwrap (first new-pair)
                        new-v $ option:unwrap (last new-pair)
                        old-follows $ rest old-props
                        new-follows $ rest new-props
                      case-default (&compare old-k new-k) (eprintln |[Respo]-unknown-compare-result-for-props-keys)
                        -1 $ do
                          collect! $ :: :rm-prop coord n-coord old-k
                          recur collect! coord n-coord old-follows new-props
                        1 $ do
                          collect! $ :: :add-prop coord n-coord new-pair
                          recur collect! coord n-coord old-props new-follows
                        0 $ do
                          if (not= old-v new-v)
                            collect! $ :: :replace-prop coord n-coord new-pair
                          recur collect! coord n-coord old-follows new-follows
                recur collect! coord n-coord
                  if (list? old-props) old-props $ -> old-props .to-list
                  if (list? new-props) new-props $ -> new-props .to-list
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Fn 'List 'List 'Dynamic 'Dynamic
        |find-style-diffs $ %{} :CodeEntry (:doc "|Compares two style maps and collects effects for additions, removals, or updates.")
          :code $ quote
            defn find-style-diffs (collect! c-coord coord old-style new-style)
              let
                  was-empty? $ empty? old-style
                  now-empty? $ empty? new-style
                if (identical? old-style new-style) nil $ cond
                    and was-empty? now-empty?
                    , nil
                  (and was-empty? (not now-empty?))
                    let
                        entry $ option:unwrap (first new-style)
                        follows $ rest new-style
                      collect! $ :: :add-style c-coord coord entry
                      recur collect! c-coord coord old-style follows
                  (and (not was-empty?) now-empty?)
                    let
                        entry $ option:unwrap (first old-style)
                        follows $ rest old-style
                        k $ option:unwrap (first entry)
                      collect! $ :: :rm-style c-coord coord k
                      recur collect! c-coord coord follows new-style
                  true $ let
                      old-entry $ option:unwrap (first old-style)
                      new-entry $ option:unwrap (first new-style)
                      old-k $ option:unwrap (first old-entry)
                      new-k $ option:unwrap (first new-entry)
                      old-v $ option:unwrap (last old-entry)
                      new-v $ option:unwrap (last new-entry)
                      old-follows $ rest old-style
                      new-follows $ rest new-style
                    case-default (&compare old-k new-k) (eprintln |[Respo]-unknown-compare-result-for-style-keys)
                      -1 $ do
                        collect! $ :: :rm-style c-coord coord old-k
                        recur collect! c-coord coord old-follows new-style
                      1 $ do
                        collect! $ :: :add-style c-coord coord new-entry
                        recur collect! c-coord coord old-style new-follows
                      0 $ do
                        if
                          not $ identical? old-v new-v
                          collect! $ :: :replace-style c-coord coord new-entry
                        recur collect! c-coord coord old-follows new-follows
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Fn 'List 'List 'List 'List
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.render.diff $ :require
            respo.util.format :refer $ purify-element
            respo.util.detect :refer $ component? element?
            respo.render.effect :refer $ collect-mounting collect-updating collect-unmounting collect-own-mounting collect-own-unmounting
            respo.util.list :refer $ val-of-first
            respo.schema :refer $ dev?
    |respo.render.dom $ %{} :FileEntry
      :defs $ {}
        |make-element $ %{} :CodeEntry (:doc "|internal function to create a DOM element from a virtual element. handles properties, styles, events, and recursively creates child elements.")
          :code $ quote
            defn make-element (virtual-element listener-builder coord)
              assert |coord-is-required $ some? coord
              if (component? virtual-element)
                make-element (&struct:get virtual-element :tree) listener-builder $ conj coord (&struct:get virtual-element :name)
                let
                    tag-name $ turn-string (&struct:get virtual-element :name)
                    attrs $ &struct:get virtual-element :attrs
                    style $ &struct:get virtual-element :style
                    events $ &struct:get virtual-element :event
                    children $ &struct:get virtual-element :children
                    element $ unsafe-coerce (js/document.createElement tag-name) JsObject
                    child-elements $ if (map? children)
                      map (.to-list children)
                        fn (pair)
                          assert |expect-pair-of-key/element $ and (list? pair)
                            &= 2 $ count pair
                          let
                              k $ option:unwrap (nth pair 0)
                              child $ option:unwrap (nth pair 1)
                            when (nil? k) (js/console.warn |nil-key-is-bad-for-Respo)
                            when (some? child)
                              make-element child listener-builder $ conj coord k
                      map children $ fn (pair)
                        assert |expect-pair-of-key/element $ and (list? pair)
                          &= 2 $ count pair
                        let
                            k $ option:unwrap (nth pair 0)
                            child $ option:unwrap (nth pair 1)
                          when (nil? k) (js/console.warn |nil-key-is-bad-for-Respo)
                          when (some? child)
                            make-element child listener-builder $ conj coord k
                  each attrs $ fn (entry)
                    let
                        prop-str $ turn-string
                          option:unwrap $ first entry
                        v $ option:unwrap (last entry)
                      if (.!startsWith prop-str |data-)
                        if (some? v)
                          -> element .-dataset $ js-set (.!slice prop-str 5) v
                          -> element .-dataset $ js-delete (.!slice prop-str 5)
                        let
                            k $ dashed->camel prop-str
                          if (some? v) (aset element k v)
                  each style $ fn (entry)
                    let
                        style-name $ turn-string
                          option:unwrap $ first entry
                        k $ dashed->camel style-name
                        v $ option:unwrap (last entry)
                      aset (.-style element) k $ get-style-value v k
                  &doseq (entry events)
                    let
                        event-handler $ option:unwrap (last entry)
                      when (some? event-handler)
                        let
                            event-name $ option:unwrap (first entry)
                            name-in-string $ event->prop event-name
                          aset element name-in-string $ fn (event)
                            (listener-builder event-name) event coord
                            .!stopPropagation event
                  each child-elements $ fn (child-element)
                    if (some? child-element) (.!appendChild element child-element)
                  , element
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Fn 'List
              :features $ #{} :js-ffi
        |style->string $ %{} :CodeEntry (:doc "|this functions is used inside DOM operations, inserting styles into a `<style>` element. to render to HTML, use `style->html` instead")
          :code $ quote
            defn style->string (styles)
              loop
                  acc |
                  xs styles
                if (empty? xs) acc $ let
                    entry $ option:unwrap (first xs)
                    k $ option:unwrap (first entry)
                  if (symbol? k)
                    recur acc $ rest xs
                    let
                        style-name $ turn-string k
                        v $ get-style-value
                          option:unwrap $ last entry
                          , style-name
                      recur (str acc style-name |: v |;) (rest xs)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'List
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.render.dom $ :require
            respo.util.format :refer $ dashed->camel event->prop get-style-value
            respo.util.detect :refer $ component?
    |respo.render.effect $ %{} :FileEntry
      :defs $ {}
        |collect-mounting $ %{} :CodeEntry (:doc "|internal function to collect mounting effects from component tree. recursively traverses the virtual DOM and collects effect:mount callbacks.")
          :code $ quote
            defn collect-mounting (collect! coord n-coord tree at-place?)
              cond
                  component? tree
                  let
                      effects $ &struct:get tree :effects
                      next-coord $ conj coord (&struct:get tree :name)
                    when
                      not $ empty? effects
                      &doseq (effect effects)
                        let
                            method $ &struct:get effect :method
                          collect! $ :: :effect-mount next-coord n-coord
                            fn (target)
                              method (&struct:get effect :args) ([] :mount target at-place?)
                    recur collect! next-coord n-coord (&struct:get tree :tree) false
                (element? tree)
                  do
                    let
                        ref! $ &struct:get tree :ref
                      when (some? ref!)
                        collect! $ :: :effect-mount coord n-coord
                          fn (target)
                            (unsafe-coerce ref! Fn) target
                    loop
                        children $ let
                            source $ &struct:get tree :children
                          if (map? source)
                            .to-list $ .to-list source
                            , source
                        idx 0
                      when
                        not $ empty? children
                        let
                            pair $ option:unwrap (first children)
                            k $ option:unwrap (first pair)
                            child $ option:unwrap (last pair)
                          when (some? child)
                            collect-mounting collect! (conj coord k) (conj n-coord idx) child false
                        recur (rest children) (inc idx)
                true $ js/console.warn |Unknown-entry-for-mounting: tree
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Fn 'List 'List 'Dynamic 'Bool
        |collect-own-mounting $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn collect-own-mounting (collect! coord n-coord tree at-place?)
              when
                not $ component? tree
                raise |[Respo/collect-own-mounting]-expected-a-component
              let
                  effects $ &struct:get tree :effects
                  next-coord $ conj coord (&struct:get tree :name)
                &doseq (effect effects)
                  let
                      method $ &struct:get effect :method
                    collect! $ :: :effect-mount next-coord n-coord
                      fn (target)
                        method (&struct:get effect :args) ([] :mount target at-place?)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Fn 'List 'List 'Dynamic 'Bool
          :tags $ #{} :internal
        |collect-own-unmounting $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn collect-own-unmounting (collect! coord n-coord tree at-place?)
              when
                not $ component? tree
                raise |[Respo/collect-own-unmounting]-expected-a-component
              let
                  effects $ &struct:get tree :effects
                  next-coord $ conj coord (&struct:get tree :name)
                &doseq (effect effects)
                  let
                      method $ &struct:get effect :method
                    collect! $ :: :effect-unmount next-coord n-coord
                      fn (target)
                        method (&struct:get effect :args) ([] :unmount target at-place?)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Fn 'List 'List 'Dynamic 'Bool
          :tags $ #{} :internal
        |collect-unmounting $ %{} :CodeEntry (:doc "|internal function to collect unmounting effects from component tree. recursively traverses the virtual DOM and collects effect:unmount callbacks.")
          :code $ quote
            defn collect-unmounting (collect! coord n-coord tree at-place?)
              cond
                  component? tree
                  let
                      effects $ &struct:get tree :effects
                      new-coord $ conj coord (&struct:get tree :name)
                    collect-unmounting collect! new-coord n-coord (&struct:get tree :tree) false
                    when
                      not $ empty? effects
                      &doseq (effect effects)
                        let
                            method $ &struct:get effect :method
                          collect! $ :: :effect-unmount new-coord n-coord
                            fn (target)
                              method (&struct:get effect :args) ([] :unmount target at-place?)
                (element? tree)
                  do
                    loop
                        children $ let
                            source $ &struct:get tree :children
                          if (map? source)
                            .to-list $ .to-list source
                            , source
                        idx 0
                      when
                        not $ empty? children
                        let
                            pair $ option:unwrap (first children)
                            k $ option:unwrap (first pair)
                            child $ option:unwrap (last pair)
                          when (some? child)
                            collect-unmounting collect! (conj coord k) (conj n-coord idx) child false
                        recur (rest children) (inc idx)
                    let
                        ref! $ &struct:get tree :ref
                      when (some? ref!)
                        collect! $ :: :effect-unmount coord n-coord
                          fn (_target)
                            (unsafe-coerce ref! Fn) nil
                true $ js/console.warn |Unknown-entry-for-unmounting: tree
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Fn 'List 'List 'Dynamic 'Bool
        |collect-updating $ %{} :CodeEntry (:doc "|Compares effects between component updates and collects effect actions if arguments change.")
          :code $ quote
            defn collect-updating (collect! action coord n-coord old-tree new-tree)
              when
                not $ component? new-tree
                raise |[Respo/collect-updating]-expected-the-new-tree-to-be-a-component
              let
                  old-effects $ &struct:get old-tree :effects
                  new-effects $ &struct:get new-tree :effects
                  next-coord $ conj coord (&struct:get new-tree :name)
                  effect-count $ option:unwrap
                    max $ [] (count old-effects) (count new-effects)
                &doseq
                  idx $ range effect-count
                  let
                      old-effect-option $ get old-effects idx
                      new-effect-option $ get new-effects idx
                    if-let (old-effect old-effect-option)
                      if-let (new-effect new-effect-option)
                        if
                          = (&struct:get old-effect :name) (&struct:get new-effect :name)
                          when-not
                            =seq (&struct:get new-effect :args) (&struct:get old-effect :args)
                            let
                                effect $ if (= action :before-update) old-effect new-effect
                                method $ &struct:get effect :method
                              collect! $ ::
                                if (= :update action) :effect-update :effect-before-update
                                , next-coord n-coord
                                  fn (target)
                                    method (&struct:get effect :args) ([] action target false)
                          let
                              effect $ if (= action :before-update) old-effect new-effect
                              method $ &struct:get effect :method
                              lifecycle-action $ if (= action :before-update) :unmount :mount
                            collect! $ ::
                              if (= :update action) :effect-update :effect-before-update
                              , next-coord n-coord
                                fn (target)
                                  method (&struct:get effect :args) ([] lifecycle-action target false)
                        when (= action :before-update)
                          let
                              method $ &struct:get old-effect :method
                            collect! $ :: :effect-before-update next-coord n-coord
                              fn (target)
                                method (&struct:get old-effect :args) ([] :unmount target false)
                      if-let (new-effect new-effect-option)
                        when (= action :update)
                          let
                              method $ &struct:get new-effect :method
                            collect! $ :: :effect-update next-coord n-coord
                              fn (target)
                                method (&struct:get new-effect :args) ([] :mount target false)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Fn 'Tag 'List 'List 'Dynamic 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.render.effect $ :require (respo.schema.op :as op)
            respo.util.detect :refer $ component? element? =seq
            respo.util.list :refer $ val-of-first
    |respo.render.html $ %{} :FileEntry
      :defs $ {}
        |element->string $ %{} :CodeEntry (:doc "|which is actually `element->html`")
          :code $ quote
            defn element->string (element)
              let
                  tag-name $ turn-string (element :name)
                  attrs $ pairs-map (element :attrs)
                  styles $ element :style
                  text-inside $ if
                    = (element :name) :textarea
                    option:map (get attrs :value)
                      fn (value)
                        escape-html $ str value
                    option:fold (get attrs :innerHTML)
                      fn () $ option:map (get attrs :inner-text)
                        fn (value) (text->html value)
                      fn (value)
                        %some $ str value
                  tailored-props $ &let
                    props $ -> attrs (dissoc :innerHTML) (dissoc :inner-text)
                    if (empty? styles) props $ assoc props :style styles
                  props-in-string $ props->html tailored-props
                if (&set:includes? self-closing tag-name)
                  str |< tag-name
                    if (blank? props-in-string) | "| "
                    , props-in-string "| >"
                  &let
                    children $ map (element :children)
                      fn (entry)
                        let
                            child $ option:unwrap (last entry)
                          element->string child
                    str |< tag-name
                      if (blank? props-in-string) | "| "
                      , props-in-string |>
                        option:unwrap-or text-inside $ join-str children |
                        , |</ tag-name |>
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'respo.schema/Element
        |entry->html $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn entry->html (entry)
              let
                  k $ option:unwrap (first entry)
                  v $ option:unwrap (last entry)
                str
                  prop->attr $ turn-string k
                  , |= $ .escape
                    cond
                        = k :style
                        style->html v
                      (bool? v) (str v)
                      (number? v) (str v)
                      (tag? v) (turn-string v)
                      (string? v) (escape-html v)
                      true $ str v
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'List
        |escape-html $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn escape-html (text)
              -> text (.replace "|\"" |&quot;) (.replace |< |&lt;) (.replace |> |&gt;) (.replace &newline |&#13;&#10;)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String
        |make-string $ %{} :CodeEntry (:doc "|Render a component tree to an HTML string for SSR.\n\nIt strips live event handlers and serializes a purified tree so the output stays stable across environments. This is the current HTML output API that replaces older `make-html` references.")
          :code $ quote
            defn make-string (element)
              element->string $ purify-element (mute-element element)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'Dynamic
        |props->html $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn props->html (props)
              -> props .to-list
                filter $ fn (pair)
                  let
                      k $ option:unwrap (first pair)
                      v $ option:unwrap (last pair)
                    and (some? v)
                      not $ starts-with? (turn-string k) |on-
                .sort-by $ fn (pair)
                  option:unwrap $ first pair
                map entry->html
                join-str "| "
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
        |self-closing $ %{} :CodeEntry (:doc |)
          :code $ quote
            def self-closing $ #{} |area |base |br |col |embed |hr |img |input |link |meta |param |source |track |wbr
          :examples $ []
          :schema $ :: 'Dynamic
        |style->html $ %{} :CodeEntry (:doc "|this function is intended for HTML rendering since it escaped characters.")
          :code $ quote
            defn style->html (styles)
              -> styles
                map $ fn (entry)
                  let
                      k $ option:unwrap (first entry)
                      style-name $ turn-string k
                      v $ get-style-value
                        option:unwrap $ last entry
                        dashed->camel style-name
                    str style-name |: (escape-html v) |;
                join-str |
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] (:: 'List 'List)
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.render.html $ :require
            respo.util.format :refer $ prop->attr purify-element mute-element text->html get-style-value dashed->camel
            respo.util.detect :refer $ component? element?
    |respo.render.patch $ %{} :FileEntry
      :defs $ {}
        |add-element $ %{} :CodeEntry (:doc "|Inserts a new DOM element before a target element.")
          :code $ quote
            defn add-element (target op listener-builder coord)
              let
                  new-element $ make-element op listener-builder coord
                ->
                  unsafe-coerce (.-parentElement target) JsObject
                  .!insertBefore new-element target
              ;nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Dynamic 'Fn 'List
        |add-event $ %{} :CodeEntry (:doc "|Attaches an event listener to a DOM element.")
          :code $ quote
            defn add-event (target event-name listener-builder coord)
              &let
                event-prop $ event->prop event-name
                aset target event-prop $ fn (event)
                  (listener-builder event-name) event coord
                  .!stopPropagation event
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Tag 'Fn 'List
              :features $ #{} :js-ffi
        |add-prop $ %{} :CodeEntry (:doc "|Adds or updates a property on a DOM element. Handles data attributes and style strings.")
          :code $ quote
            defn add-prop (target p prop-value)
              let
                  prop-str $ turn-string p
                if (.!startsWith prop-str |data-)
                  if (some? prop-value)
                    -> target .-dataset $ js-set (.!slice prop-str 5) prop-value
                    -> target .-dataset $ js-delete (.!slice prop-str 5)
                  let
                      prop-name $ dashed->camel prop-str
                    case-default prop-name (js-set target prop-name prop-value)
                      |style $ js-set target prop-name (style->string prop-value)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Tag 'Dynamic
              :features $ #{} :js-ffi
        |add-style $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn add-style (target p v)
              let
                  style-name $ dashed->camel (turn-string p)
                  style-value $ get-style-value v style-name
                aset
                  unsafe-coerce (.-style target) JsObject
                  , style-name style-value
              ;nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Tag 'Dynamic
              :features $ #{} :js-ffi
        |append-element $ %{} :CodeEntry (:doc "|Appends a new DOM element to the target container.")
          :code $ quote
            defn append-element (target op listener-builder coord)
              &let
                new-element $ make-element op listener-builder coord
                .!appendChild target new-element
              ;nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Dynamic 'Fn 'List
        |apply-dom-changes $ %{} :CodeEntry (:doc "|Internal DOM patch executor.\n\nIt walks collected diff operations, finds the target node by DOM coordinate, and applies prop, style, event, element, and effect changes in order.")
          :code $ quote
            defn apply-dom-changes (changes mount-point listener-builder)
              let
                  get-root $ fn () (.-firstElementChild mount-point)
                &doseq (op changes)
                  let-sugar
                      n-coord $ option:unwrap (nth op 2)
                      target $ find-target (get-root) n-coord
                    match op
                      (:replace-prop _coord _n-coord op-data)
                        replace-prop target
                          option:unwrap $ nth op-data 0
                          option:unwrap $ nth op-data 1
                      (:add-prop _coord _n-coord op-data)
                        add-prop target
                          option:unwrap $ nth op-data 0
                          option:unwrap $ nth op-data 1
                      (:rm-prop _coord _n-coord op-data) (rm-prop target op-data)
                      (:add-style _coord _n-coord op-data)
                        add-style target
                          option:unwrap $ nth op-data 0
                          option:unwrap $ nth op-data 1
                      (:replace-style _coord _n-coord op-data)
                        replace-style target
                          option:unwrap $ nth op-data 0
                          option:unwrap $ nth op-data 1
                      (:rm-style _coord _n-coord op-data) (rm-style target op-data)
                      (:set-event coord _n-coord op-data) (add-event target op-data listener-builder coord)
                      (:rm-event _coord _n-coord op-data) (rm-event target op-data)
                      (:add-element coord _n-coord op-data) (add-element target op-data listener-builder coord)
                      (:rm-element _coord _n-coord op-data) (rm-element target op-data)
                      (:replace-element coord _n-coord op-data) (replace-element target op-data listener-builder coord)
                      (:append-element coord _n-coord op-data) (append-element target op-data listener-builder coord)
                      (:effect-mount _coord n-coord op-data) (run-effect target op-data n-coord)
                      (:effect-unmount _coord n-coord op-data) (run-effect target op-data n-coord)
                      (:effect-update _coord n-coord op-data) (run-effect target op-data n-coord)
                      (:effect-before-update _coord n-coord op-data) (run-effect target op-data n-coord)
                      _ $ eprintln |not-implemented: op
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'List 'Dynamic 'Fn
        |find-target $ %{} :CodeEntry (:doc "|Locates a DOM node by traversing children using a coordinate path.")
          :code $ quote
            defn find-target (root coord)
              list-match coord
                () root
                (index xss)
                  if-let
                    child $ js-nullish->option
                      aget
                        unsafe-coerce (.-children root) JsObject
                        , index
                    find-target child xss
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic (:: 'List 'Number)
              :features $ #{} :js-ffi
        |replace-element $ %{} :CodeEntry (:doc "|Replaces a DOM element with a new one created from an operation.")
          :code $ quote
            defn replace-element (target op listener-builder coord)
              let
                  new-element $ make-element op listener-builder coord
                ->
                  unsafe-coerce (.-parentElement target) JsObject
                  .!insertBefore new-element target
                .!remove target
              ;nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Dynamic 'Fn 'List
        |replace-prop $ %{} :CodeEntry (:doc "|Updates a property on a DOM element. Handles data attributes and special cases like 'value'.")
          :code $ quote
            defn replace-prop (target p prop-value)
              let
                  prop-str $ turn-string p
                if (.!startsWith prop-str |data-)
                  let
                      name $ .!slice prop-str 5
                      dataset $ unsafe-coerce (.-dataset target) JsObject
                    if (some? prop-value)
                      if
                        not= prop-value $ aget dataset name
                        js-set dataset name prop-value
                      js-delete dataset name
                  let
                      prop-name $ dashed->camel prop-str
                    if (identical? prop-name |value)
                      if
                        not= prop-value $ .-value target
                        js-set target prop-name prop-value
                      js-set target prop-name prop-value
                ;nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Tag 'Dynamic
              :features $ #{} :js-ffi
        |replace-style $ %{} :CodeEntry (:doc "|Updates a single style property on a DOM element.")
          :code $ quote
            defn replace-style (target p v)
              let
                  style-name $ dashed->camel (turn-string p)
                aset
                  unsafe-coerce (.-style target) JsObject
                  , style-name $ get-style-value v style-name
              ;nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Tag 'Dynamic
              :features $ #{} :js-ffi
        |rm-element $ %{} :CodeEntry (:doc "|Removes the DOM element from the document.")
          :code $ quote
            defn rm-element (target op)
              if (some? target) (.!remove target) (js/console.warn "|Respo: Element already removed! Probably by :inner-text.")
              ;nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Dynamic
        |rm-event $ %{} :CodeEntry (:doc "|Removes an event listener from a DOM element by setting it to nil.")
          :code $ quote
            defn rm-event (target event-name)
              &let
                event-prop $ event->prop event-name
                js-set target event-prop nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Tag
              :features $ #{} :js-ffi
        |rm-prop $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn rm-prop (target op)
              case-default op
                let
                    prop-str $ turn-string op
                  if (.!startsWith prop-str |data-)
                    -> target .-dataset $ js-delete (.!slice prop-str 5)
                    let
                        k $ dashed->camel prop-str
                        ; ks $ prop->attr prop-str
                      aset target k nil
                :class-name $ .!removeAttribute target |class
                :href $ .!removeAttribute target |href
                :inner-text $ set! (.-innerText target) |
                :innerHTML $ set! (.-innerHTML target) |
                :checked $ set! (.-checked target) false
                :disabled $ set! (.-disabled target) false
                :selected $ set! (.-selected target) false
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Tag
              :features $ #{} :js-ffi
        |rm-style $ %{} :CodeEntry (:doc "|Removes a style property from a DOM element.")
          :code $ quote
            defn rm-style (target op)
              &let
                style-name $ dashed->camel (turn-string op)
                -> (.-style target) (js-set style-name nil)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Tag
              :features $ #{} :js-ffi
        |run-effect $ %{} :CodeEntry (:doc "|Runs side effect functions.\n\nParameters:\n  target - Target DOM element or component instance, nil if target not found\n  method - Method function to execute on the target\n  coord - Coordinate information for identifying location in console warnings\n\nFunctionality:\n  If target exists, calls method function on target; if target is nil, outputs warning to console.\n  Mainly used to execute various side effects during rendering patch process, such as event listening, DOM operations, etc.")
          :code $ quote
            defn run-effect (target method coord)
              if (some? target) (method target) (js/console.warn "|Unknown effects target:" coord)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Fn (:: 'List 'Number)
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.render.patch $ :require
            respo.util.format :refer $ dashed->camel event->prop get-style-value prop->attr
            respo.render.dom :refer $ make-element style->string
            respo.schema.op :as op
    |respo.resource $ %{} :FileEntry
      :defs $ {}
        |*resource-id $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *resource-id 0)
          :examples $ []
          :schema $ :: 'Ref 'Number
        |ResourceAction $ %{} :CodeEntry (:doc "|Immutable request lifecycle enum: :started carries request-id; :ready carries request-id and data; :failed carries request-id and error.")
          :code $ quote
            defenum ResourceAction (:started 'Number) (:ready 'Number 'Dynamic) (:failed 'Number 'Dynamic)
          :examples $ []
          :schema $ :: 'Dynamic
          :tags $ #{} :data
        |ResourceState $ %{} :CodeEntry (:doc "|Immutable resource state record. :data and :error are application payload boundaries; :status and :request-id drive deterministic reducer transitions.")
          :code $ quote
            defstruct ResourceState (:status 'Tag)
              :request-id $ :: 'Optional 'Number
              :data 'Dynamic
              :error 'Dynamic
          :examples $ []
          :schema $ :: 'Dynamic
          :tags $ #{} :data
        |load-resource! $ %{} :CodeEntry (:doc "|Invokes a zero-argument fetcher once, normalizes its value or Promise, and emits immutable :started then :ready or :failed ResourceAction values. Synchronous fetch errors and Promise-chain errors become :failed. Returns the numeric request id; it does not mutate application state.")
          :code $ quote
            defn load-resource! (fetcher emit!)
              let
                  fetch-resource $ expect-function fetcher |[Respo/load-resource!]-expected-fetcher
                  emit-action! $ expect-function emit! |[Respo/load-resource!]-expected-emitter
                  request-id $ next-resource-id!
                emit-action! $ resource-started request-id
                try
                  let
                      promise $ unsafe-coerce
                        js/Promise.resolve $ do (fetch-resource)
                        , JsObject
                      handled $ unsafe-coerce
                        .!then promise $ fn (value)
                          emit-action! $ resource-ready request-id value
                        , JsObject
                    .!catch handled $ fn (error)
                      emit-action! $ resource-failed request-id error
                  fn (error)
                    emit-action! $ resource-failed request-id error
                , request-id
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'Fn 'Fn
              :features $ #{} :js-ffi
        |next-resource-id! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn next-resource-id! () $ let
                request-id $ inc @*resource-id
              reset! *resource-id request-id
              , request-id
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ []
          :tags $ #{} :internal
        |resource-action? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn resource-action? (x)
              and (enum? x)
                = (&enum:definition x) ResourceAction
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'Dynamic
          :tags $ #{} :internal
        |resource-failed $ %{} :CodeEntry (:doc "|Creates a :failed ResourceAction carrying the failure value.")
          :code $ quote
            defn resource-failed (request-id error)
              when
                not $ number? request-id
                raise "|[Respo/resource-failed] expected a numeric request id"
              %:: ResourceAction :failed request-id error
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.resource/ResourceAction)
              :args $ [] 'Number 'Dynamic
        |resource-idle $ %{} :CodeEntry (:doc "|Creates an immutable idle ResourceState with optional initial data.")
          :code $ quote
            defn resource-idle (initial-data-option)
              %{} ResourceState (:status :idle) (:request-id nil)
                :data $ option:unwrap-or initial-data-option nil
                :error nil
          :examples $ []
            quote $ resource-idle
              {} $ :items ([])
          :schema $ :: 'Fn
            {} (:return 'respo.resource/ResourceState)
              :args $ [] (:: 'Option 'Dynamic)
        |resource-loading? $ %{} :CodeEntry (:doc "|Returns true for :pending and :refreshing ResourceState values.")
          :code $ quote
            defn resource-loading? (state)
              when
                not $ resource-state? state
                raise "|[Respo/resource-loading?] expected ResourceState"
              let
                  status $ &struct:get state :status
                or (= status :pending) (= status :refreshing)
          :examples $ []
            quote $ resource-loading?
              resource-reducer (resource-idle) (resource-started 1)
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'respo.resource/ResourceState
        |resource-ready $ %{} :CodeEntry (:doc "|Creates a :ready ResourceAction carrying resolved immutable data.")
          :code $ quote
            defn resource-ready (request-id data)
              when
                not $ number? request-id
                raise "|[Respo/resource-ready] expected a numeric request id"
              %:: ResourceAction :ready request-id data
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.resource/ResourceAction)
              :args $ [] 'Number 'Dynamic
        |resource-reducer $ %{} :CodeEntry (:doc "|Purely applies a ResourceAction to ResourceState. Ready and failed actions with stale request ids return the identical current state; refreshes retain previous data.")
          :code $ quote
            defn resource-reducer (state action)
              when
                not $ resource-state? state
                raise "|[Respo/resource-reducer] expected ResourceState as the first argument"
              when
                not $ resource-action? action
                raise "|[Respo/resource-reducer] expected ResourceAction as the second argument"
              match action
                (:started request-id)
                  %{} ResourceState
                    :status $ let
                        status $ &struct:get state :status
                      if
                        or (= :ready status) (= :refreshing status)
                        , :refreshing :pending
                    :request-id request-id
                    :data $ &struct:get state :data
                    :error nil
                (:ready request-id data)
                  if
                    = (&struct:get state :request-id) request-id
                    %{} ResourceState (:status :ready) (:request-id request-id) (:data data) (:error nil)
                    , state
                (:failed request-id error)
                  if
                    = (&struct:get state :request-id) request-id
                    %{} ResourceState (:status :error) (:request-id request-id)
                      :data $ &struct:get state :data
                      :error error
                    , state
          :examples $ []
            quote $ let
                idle $ resource-idle
                pending $ resource-reducer idle (resource-started 1)
              resource-reducer pending $ resource-ready 1
                {} $ :items ([] :a :b)
          :schema $ :: 'Fn
            {} (:return 'respo.resource/ResourceState)
              :args $ [] 'respo.resource/ResourceState 'respo.resource/ResourceAction
        |resource-started $ %{} :CodeEntry (:doc "|Creates a :started ResourceAction for a numeric request id.")
          :code $ quote
            defn resource-started (request-id)
              when
                not $ number? request-id
                raise "|[Respo/resource-started] expected a numeric request id"
              %:: ResourceAction :started request-id
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.resource/ResourceAction)
              :args $ [] 'Number
        |resource-state? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn resource-state? (x)
              and (struct? x)
                = (&struct:definition x) ResourceState
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'Dynamic
          :tags $ #{} :internal
      :ns $ %{} :NsEntry (:doc "|Immutable async resource helpers. Network completion emits ResourceAction values; applications keep ResourceState in their own store and apply resource-reducer from the updater.")
        :code $ quote
          ns respo.resource $ :require
            respo.util.detect :refer $ expect-function
    |respo.schema $ %{} :FileEntry
      :defs $ {}
        |*dispatch-op $ %{} :CodeEntry (:doc |)
          :code $ quote (deftype-slot :dispatch-op)
          :examples $ []
          :schema $ :: 'Dynamic
        |Component $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstruct Component (:name 'Tag)
              :effects $ :: 'List 'respo.schema/Effect
              :listeners $ :: 'List 'respo.schema/RespoListener
              :tree $ :: 'Optional 'Struct
          :examples $ []
          :schema $ :: 'Dynamic
        |DomProps $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstruct DomProps
              :class-name $ :: 'Optional 'String
              :style $ :: 'Optional 'Map
              :value $ :: 'Optional 'Dynamic
              :inner-text $ :: 'Optional 'Dynamic
              :id $ :: 'Optional 'String
              :type $ :: 'Optional 'String
              :href $ :: 'Optional 'String
              :src $ :: 'Optional 'String
              :placeholder $ :: 'Optional 'String
              :name $ :: 'Optional 'String
              :title $ :: 'Optional 'String
              :disabled $ :: 'Optional 'Bool
              :checked $ :: 'Optional 'Bool
              :spell-check $ :: 'Optional 'Bool
              :spellcheck $ :: 'Optional 'Bool
              :autofocus $ :: 'Optional 'Bool
              :tab-index $ :: 'Optional 'Number
              :read-only $ :: 'Optional 'Bool
              :data-name $ :: 'Optional 'String
              :data-comp $ :: 'Optional 'String
              :role $ :: 'Optional 'String
              :aria-label $ :: 'Optional 'String
              :aria-labelledby $ :: 'Optional 'String
              :aria-describedby $ :: 'Optional 'String
              :aria-hidden $ :: 'Optional 'Bool
              :selected $ :: 'Optional 'Bool
              :target $ :: 'Optional 'String
              :on-click $ :: 'Optional 'respo.schema/EventHandler
              :on-input $ :: 'Optional 'respo.schema/EventHandler
              :on-focus $ :: 'Optional 'respo.schema/EventHandler
              :on-blur $ :: 'Optional 'respo.schema/EventHandler
              :on-keydown $ :: 'Optional 'respo.schema/EventHandler
              :on-keyup $ :: 'Optional 'respo.schema/EventHandler
              :on-change $ :: 'Optional 'respo.schema/EventHandler
              :on-mousedown $ :: 'Optional 'respo.schema/EventHandler
              :on-mouseup $ :: 'Optional 'respo.schema/EventHandler
              :innerHTML $ :: 'Optional 'String
              :rel $ :: 'Optional 'String
              :defer $ :: 'Optional 'Bool
              :on $ :: 'Optional 'Map
              :alt $ :: 'Optional 'String
              :draggable $ :: 'Optional 'Bool
              :content $ :: 'Optional 'String
              :charset $ :: 'Optional 'String
              :multiple $ :: 'Optional 'Bool
              :accept $ :: 'Optional 'String
              :ref $ :: 'Optional 'Fn
          :examples $ []
          :schema $ :: 'Dynamic
        |Effect $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstruct Effect (:name 'Tag)
              :coord $ :: 'List 'Dynamic
              :args $ :: 'List 'Dynamic
              :method 'Fn
          :examples $ []
          :schema $ :: 'Dynamic
        |Element $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstruct Element (:name 'Tag)
              :coord $ :: 'Optional (:: 'List 'Dynamic)
              :attrs $ :: 'List (:: 'List 'Dynamic)
              :style $ :: 'List (:: 'List 'Dynamic)
              :event $ :: 'Map 'Tag 'Dynamic
              :children $ :: 'List (:: 'List 'Dynamic)
              :ref $ :: 'Optional 'Fn
          :examples $ []
          :schema $ :: 'Dynamic
        |EventHandler $ %{} :CodeEntry (:doc "|Event callback signature. Respo delivers an immutable map produced by event->edn together with the application dispatch function.")
          :code $ quote (def EventHandler nil)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Map
                :: 'Fn $ {} (:return 'Unit)
                  :args $ [] '*dispatch-op
        |RespoEvent $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstruct RespoEvent (:type 'Tag)
              :value $ :: 'Optional 'Dynamic
              :checked $ :: 'Optional 'Bool
              :original-event 'Dynamic
              :event 'Dynamic
              :key $ :: 'Optional 'String
              :code $ :: 'Optional 'String
              :key-code $ :: 'Optional 'Number
              :keycode $ :: 'Optional 'Number
              :ctrl? $ :: 'Optional 'Bool
              :meta? $ :: 'Optional 'Bool
              :alt? $ :: 'Optional 'Bool
              :shift? $ :: 'Optional 'Bool
              :msg $ :: 'Optional 'String
          :examples $ []
          :schema $ :: 'Dynamic
        |RespoListener $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstruct RespoListener (:name 'Tag) (:handler 'Fn)
          :examples $ []
          :schema $ :: 'Dynamic
        |cache-info $ %{} :CodeEntry (:doc |)
          :code $ quote
            def cache-info $ {} (:value nil) (:initial-loop nil) (:last-hit nil) (:hit-times 0)
          :examples $ []
          :schema $ :: 'Map
        |dev? $ %{} :CodeEntry (:doc "|Boolean flag indicating if the application is running in development mode.")
          :code $ quote
            def dev? $ &= |dev
              unsafe-coerce (&get-env |mode |release) String
          :examples $ []
          :schema $ :: 'Bool
        |effect $ %{} :CodeEntry (:doc |)
          :code $ quote
            def effect $ {} (:name nil) (:respo-node :effect)
              :coord $ []
              :args $ []
              :method $ fn (props args)
                ; args $ [] action parent at-place?
          :examples $ []
          :schema $ :: 'Map
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns respo.schema)
    |respo.schema.listener $ %{} :FileEntry
      :defs $ {}
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns respo.schema.listener)
    |respo.test.comp.task $ %{} :FileEntry
      :defs $ {}
        |comp-task $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-task (task)
              div ({})
                span $ {}
                  :inner-text $ :text task
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.test.comp.task $ :require
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp div span
    |respo.test.comp.todolist $ %{} :FileEntry
      :defs $ {}
        |comp-todolist $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-todolist (tasks)
              list->
                {} $ :style style-todolist
                ->
                  either tasks $ []
                  map $ fn (task)
                    [] (:id task) (comp-task task)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic
        |style-todolist $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-todolist $ {} (:color :blue) (:font-family "|\"微软雅黑\", Verdana")
          :examples $ []
          :schema $ :: 'Map
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.test.comp.todolist $ :require
            respo.test.comp.task :refer $ comp-task
            respo.core :refer $ defcomp div list->
            respo.test.comp.todolist :refer $ comp-todolist
    |respo.test.html $ %{} :FileEntry
      :defs $ {}
        |html-quote-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest html-quote-test $ let
                tree-demo $ div
                  {} (:value "|a\"b\"c") (:data-name |y)
                    :style $ {} (:content "|d\"e\"f")
              testing "|HTML contains quotes" $ is
                = (slurp |test/examples/quote.html) (make-string tree-demo)
          :examples $ []
          :schema $ :: 'Dynamic
        |html-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest html-test $ let
                todo-demo $ comp-todolist todolist-store
              testing "|test generated HTML from component" $ is
                = (slurp |test/examples/demo.html) (make-string todo-demo)
          :examples $ []
          :schema $ :: 'Dynamic
        |map-to-record-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn map-to-record-test () $ testing "|test map-to-record rewrite for element->string"
              is $ = "|<div class=\"test\"></div>"
                element->string $ {} (:name :div) (:coord nil)
                  :attrs $ [] ([] :class-name |test)
                  :style $ []
                  :event $ {}
                  :children $ []
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |nil-prop-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest nil-prop-test $ let
                piece $ script
                  {} (:src |a.js) (:defer nil)
              testing "|test generate script with nil" $ is
                = "|<script src=\"a.js\"></script>" $ make-string piece
          :examples $ []
          :schema $ :: 'Dynamic
        |ref-prop-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest ref-prop-test $ let
                piece $ div
                  {} $ :ref
                    fn (_target) nil
                purified $ purify-element piece
              testing |ref_is_not_serialized_or_retained_by_purified_markup
                is $ nil? (get purified :ref)
                is $ = |<div></div> (make-string piece)
          :examples $ []
          :schema $ :: 'Dynamic
        |run-tests $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-tests () (html-quote-test) (nil-prop-test) (simple-html-test) (textarea-test) (map-to-record-test) (ref-prop-test)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |simple-html-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest simple-html-test $ let
                tree-demo $ html ({})
                  head ({})
                    title $ {} (:innerHTML |Demo)
                    link $ {} (:rel |icon) (:type |image/png)
                    script $ {} (:innerHTML |{})
                  body ({})
                    div
                      {} $ :id |app
                      div $ {}
              testing "|test generated HTML from tree" $ is
                = (slurp |test/examples/simple.html) (make-string tree-demo)
          :examples $ []
          :schema $ :: 'Dynamic
        |slurp $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro slurp (file-path) (read-file file-path)
          :examples $ []
          :schema $ :: 'Dynamic
        |textarea-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest textarea-test $ let
                piece $ textarea
                  {} $ :value "|a\nb\nc\n\"\nd"
              testing "|test generated HTML from component" $ is
                = "|<textarea value=\"a&#13;&#10;b&#13;&#10;c&#13;&#10;&quot;&#13;&#10;d\">a&#13;&#10;b&#13;&#10;c&#13;&#10;&quot;&#13;&#10;d</textarea>" $ make-string piece
          :examples $ []
          :schema $ :: 'Dynamic
        |todolist-store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def todolist-store $ []
              {} (:id 101) (:text |101)
              {} (:id 102) (:text |102)
          :examples $ []
          :schema $ :: 'List
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.test.html $ :require
            calcit-test.core :refer $ deftest is testing
            respo.core :refer $ html head title script div link textarea body
            respo.render.html :refer $ make-string element->string
            respo.test.comp.todolist :refer $ comp-todolist
            respo.util.format :refer $ purify-element
    |respo.test.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () (html/run-tests) (test-pick-attrs) (test-pick-event) (memo/run-tests) (primitives/run-tests) (test-find-props-diffs) (test-pair-representation-transitions) (test-update-states-merge-record) (test-dom-fallback-values)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ println |reload.
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |test-dom-fallback-values $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-dom-fallback-values $ testing "|DOM helpers return stable values without browser globals"
              is $ = | (get-style-value nil |width)
              is $ = 0 (text-width |demo 16 |sans-serif)
          :examples $ []
          :schema $ :: 'Dynamic
        |test-find-props-diffs $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-find-props-diffs $ testing "|diff sorted prop lists without map specialization"
              let
                  effects $ atom ([])
                  collect! $ fn (effect) (swap! effects conj effect)
                  old-props $ [] ([] :class-name |old)
                  new-props $ [] ([] :class-name |new)
                find-props-diffs collect! ([]) ([]) old-props new-props
                is $ = 1 (count @effects)
                is $ =
                  option:unwrap $ first @effects
                  :: :replace-prop ([]) ([]) ([] :class-name |new)
          :examples $ []
          :schema $ :: 'Dynamic
        |test-pair-representation-transitions $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-pair-representation-transitions $ testing |pair_collections_support_list_and_map_transitions
              let
                  child $ div ({})
                  *ops $ atom ([])
                  collect! $ fn (op) (swap! *ops conj op)
                  child-list $ [] ([] :a child)
                  child-map $ {} (:a child)
                  prop-list $ [] ([] :title |same)
                  prop-map $ {} (:title |same)
                find-children-diffs collect! ([]) ([]) 0 child-list child-map
                find-children-diffs collect! ([]) ([]) 0 child-map child-list
                find-props-diffs collect! ([]) ([]) prop-list prop-map
                find-props-diffs collect! ([]) ([]) prop-map prop-list
                is $ empty? @*ops
          :examples $ []
          :schema $ :: 'Dynamic
        |test-pick-attrs $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-pick-attrs
              is $ =
                pick-attrs $ {} (:value |string)
                  :on-click $ fn () nil
                [] $ [] :value |string
              is $ =
                pick-attrs $ {} (:data-comp nil) (:data-name nil) (:title |ok)
                [] $ [] :title |ok
              is $ =
                pick-attrs $ {}
                  :ref $ fn (_target) nil
                  :title |ok
                [] $ [] :title |ok
          :examples $ []
          :schema $ :: 'Dynamic
        |test-pick-event $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-pick-event $ testing "|test event"
              let
                  f $ fn () nil
                is $ =
                  pick-event $ {} (:value |a) (:on-click f)
                  {} $ :click f
                is $ =
                  pick-event $ {} (:value |a) (:on-click f)
                    :on $ {} (:input f)
                  {} (:click f) (:input f)
          :examples $ []
          :schema $ :: 'Dynamic
        |test-update-states-merge-record $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-update-states-merge-record $ testing |record_state_supports_repeated_merges
              let
                  state0 $ %{} TodoState (:draft |a) (:locked? false) (:message |ready)
                  store1 $ update-states-merge ({}) ([]) state0
                    {} $ :draft |b
                  store2 $ update-states-merge store1 ([]) state0
                    {} $ :draft |c
                  state2 $ option:unwrap
                    get-in store2 $ [] :states :data
                is $ struct? state2
                is $ = |c (&struct:get state2 :draft)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.test.main $ :require (respo.test.html :as html)
            calcit-test.core :refer $ deftest testing is
            respo.util.list :refer $ pick-attrs pick-event
            respo.test.memo :as memo
            respo.render.diff :refer $ find-children-diffs find-props-diffs
            respo.cursor :refer $ update-states-merge
            respo.core :refer $ div
            respo.app.schema :refer $ TodoState
            respo.test.primitives :as primitives
            respo.util.format :refer $ get-style-value
            respo.util.dom :refer $ text-width
    |respo.test.memo $ %{} :FileEntry
      :defs $ {}
        |*render-count $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *render-count 0)
          :examples $ []
          :schema $ :: 'Ref
        |*value-call-count $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *value-call-count 0)
          :examples $ []
          :schema $ :: 'Ref 'Number
        |comp-counted $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-counted (value) (swap! *render-count inc)
              div ({})
                <> $ str value
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Number
        |derive-counted $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn derive-counted (value) (swap! *value-call-count inc)
              {} $ :value value
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] 'Number
              :return $ :: 'Map 'Tag 'Number
        |memo-bypass-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest memo-bypass-test $ testing |nil_key_bypasses_cache (reset-component-caches!) (reset! *render-count 0) (begin-memo-frame!) (memo-comp-by nil comp-counted 1) (memo-comp-by nil comp-counted 1) (finish-memo-frame!)
              is $ = 2 @*render-count
              is $ = 0 (component-cache-size)
              reset-component-caches!
          :examples $ []
          :schema $ :: 'Dynamic
        |memo-hit-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest memo-hit-test $ testing |memo_hit_reuses_component_identity (reset-component-caches!) (reset! *render-count 0) (begin-memo-frame!)
              let
                  first-comp $ memo-comp-by :same comp-counted 1
                  second-comp $ memo-comp-by :same comp-counted 1
                is $ identical? first-comp second-comp
                is $ = 1 @*render-count
                finish-memo-frame!
                is $ = 1 (component-cache-size)
                reset-component-caches!
          :examples $ []
          :schema $ :: 'Dynamic
        |memo-invalidation-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest memo-invalidation-test $ testing |changed_args_recompute_same_key (reset-component-caches!) (reset! *render-count 0) (begin-memo-frame!)
              let
                  first-comp $ memo-comp-by :same comp-counted 1
                  second-comp $ memo-comp-by :same comp-counted 2
                is $ not (identical? first-comp second-comp)
                is $ = 2 @*render-count
                finish-memo-frame!
                is $ = 1 (component-cache-size)
                reset-component-caches!
          :examples $ []
          :schema $ :: 'Dynamic
        |memo-prune-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest memo-prune-test $ testing |memo_frame_prunes_inactive_keys (reset-component-caches!) (reset! *render-count 0) (begin-memo-frame!) (memo-comp-by :a comp-counted 1) (memo-comp-by :b comp-counted 2) (finish-memo-frame!)
              is $ = 2 (component-cache-size)
              begin-memo-frame!
              memo-comp-by :b comp-counted 2
              finish-memo-frame!
              is $ = 1 (component-cache-size)
              begin-memo-frame!
              memo-comp-by :a comp-counted 1
              finish-memo-frame!
              is $ = 3 @*render-count
              reset-component-caches!
          :examples $ []
          :schema $ :: 'Dynamic
        |memo-value-bypass-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest memo-value-bypass-test $ testing |memo_value_nil_key_bypasses_cache (reset-component-caches!) (reset! *value-call-count 0) (begin-memo-frame!) (memo-value-by nil derive-counted 1) (memo-value-by nil derive-counted 1) (finish-memo-frame!)
              is $ = 2 @*value-call-count
              is $ = 0 (component-cache-size)
              reset-component-caches!
          :examples $ []
          :schema $ :: 'Dynamic
        |memo-value-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest memo-value-test $ testing |memo_value_reuses_immutable_derived_data (reset-component-caches!) (reset! *value-call-count 0) (begin-memo-frame!)
              let
                  first-value $ memo-value-by :same derive-counted 1
                  second-value $ memo-value-by :same derive-counted 1
                  changed-value $ memo-value-by :same derive-counted 2
                is $ identical? first-value second-value
                is $ not (identical? second-value changed-value)
                is $ =
                  {} $ :value 2
                  , changed-value
                is $ = 2 @*value-call-count
              finish-memo-frame!
              reset-component-caches!
          :examples $ []
          :schema $ :: 'Dynamic
        |run-tests $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-tests () (memo-hit-test) (memo-prune-test) (memo-invalidation-test) (memo-bypass-test) (memo-value-test) (memo-value-bypass-test)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.test.memo $ :require
            calcit-test.core :refer $ deftest testing is
            respo.core :refer $ defcomp div <> memo-comp-by memo-value-by
            respo.memo :refer $ begin-memo-frame! finish-memo-frame! reset-component-caches! component-cache-size
    |respo.test.primitives $ %{} :FileEntry
      :defs $ {}
        |capture-error-message $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn capture-error-message (f)
              try
                do (f) (%none)
                fn (error)
                  %some $ unsafe-coerce (.-message error) String
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] 'Fn
              :features $ #{} :js-ffi
              :return $ :: 'Option 'String
        |comp-boundary $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-boundary (*log)
              []
                effect-watch ([])
                  fn (target)
                    swap! *log conj $ [] :setup target
                  %some $ fn (target)
                    swap! *log conj $ [] :cleanup target
                div $ {}
                  :ref $ fn (target)
                    swap! *log conj $ [] :ref target
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Ref
        |comp-optional-watch $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-optional-watch (enabled? *log)
              if enabled?
                []
                  effect-watch ([])
                    fn (target)
                      swap! *log conj $ [] :setup target
                    %some $ fn (target)
                      swap! *log conj $ [] :cleanup target
                  div $ {}
                div $ {}
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Bool 'Ref
        |comp-replaced-effect $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-replaced-effect (watch? *log)
              []
                if watch?
                  effect-watch ([])
                    fn (_target) nil
                    %some $ fn (target)
                      swap! *log conj $ [] :cleanup target
                  effect-on-mount $ fn (target)
                    swap! *log conj $ [] :mount target
                div $ {}
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Bool 'Ref
        |comp-watch $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-watch (dep *log)
              []
                effect-watch ([] dep)
                  fn (target)
                    swap! *log conj $ [] :setup dep target
                  %some $ fn (target)
                    swap! *log conj $ [] :cleanup dep target
                div $ {}
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Dynamic 'Ref
        |run-collected! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-collected! (ops target)
              &doseq (op ops)
                match op
                  (:effect-mount _coord _n-coord run!)
                      unsafe-coerce run! Fn
                      , target
                  (:effect-unmount _coord _n-coord run!)
                      unsafe-coerce run! Fn
                      , target
                  (:effect-update _coord _n-coord run!)
                      unsafe-coerce run! Fn
                      , target
                  (:effect-before-update _coord _n-coord run!)
                      unsafe-coerce run! Fn
                      , target
                  _ nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'List 'Dynamic
        |run-tests $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-tests () (test-show) (test-for-keyed) (test-error-boundary) (test-effect-watch) (test-effect-list-transitions) (test-effect-identity-change) (test-effect-specific-lifecycles) (test-ref-lifecycle) (test-ref-update) (test-component-element-boundary) (test-create-list-element-validation) (test-resource-reducer) (test-load-resource) (test-render-scheduler) (test-render-scheduler-validation)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |test-component-element-boundary $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-component-element-boundary $ testing |component_wrapper_transitions_do_not_duplicate_ref_lifecycle
              let
                  *log $ atom ([])
                  *ops $ atom ([])
                  collect! $ fn (op) (swap! *ops conj op)
                  plain $ div ({})
                  wrapped $ comp-boundary *log
                find-element-diffs collect! ([]) ([]) plain wrapped
                run-collected! @*ops :target
                is $ =
                  [] ([] :ref :target) ([] :setup :target)
                  deref *log
                reset! *log $ []
                reset! *ops $ []
                find-element-diffs collect! ([]) ([]) wrapped plain
                run-collected! @*ops :target
                is $ =
                  [] ([] :cleanup :target) ([] :ref nil)
                  deref *log
          :examples $ []
          :schema $ :: 'Dynamic
        |test-create-list-element-validation $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-create-list-element-validation $ testing |create_list_element_rejects_invalid_keyed_children_at_the_api_boundary
              is $ = (%some "|[Respo/create-list-element] expected keyed child pairs as a list or map")
                capture-error-message $ fn ()
                  create-list-element :div ({}) :invalid
          :examples $ []
          :schema $ :: 'Dynamic
        |test-effect-identity-change $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-effect-identity-change $ testing |replacing_effect_kind_with_equal_deps_unmounts_old_and_mounts_new
              let
                  *log $ atom ([])
                  *ops $ atom ([])
                  collect! $ fn (op) (swap! *ops conj op)
                  old-tree $ comp-replaced-effect true *log
                  new-tree $ comp-replaced-effect false *log
                collect-updating collect! :before-update ([]) ([]) old-tree new-tree
                collect-updating collect! :update ([]) ([]) old-tree new-tree
                run-collected! @*ops :target
                is $ =
                  [] ([] :cleanup :target) ([] :mount :target)
                  deref *log
          :examples $ []
          :schema $ :: 'Dynamic
        |test-effect-list-transitions $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-effect-list-transitions $ testing |effect_list_addition_and_removal_have_mount_unmount_semantics
              let
                  *log $ atom ([])
                  *ops $ atom ([])
                  collect! $ fn (op) (swap! *ops conj op)
                  without-effect $ comp-optional-watch false *log
                  with-effect $ comp-optional-watch true *log
                collect-updating collect! :before-update ([]) ([]) without-effect with-effect
                collect-updating collect! :update ([]) ([]) without-effect with-effect
                run-collected! @*ops :target
                reset! *ops $ []
                collect-updating collect! :before-update ([]) ([]) with-effect without-effect
                collect-updating collect! :update ([]) ([]) with-effect without-effect
                run-collected! @*ops :target
                is $ =
                  [] ([] :setup :target) ([] :cleanup :target)
                  deref *log
          :examples $ []
          :schema $ :: 'Dynamic
        |test-effect-specific-lifecycles $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-effect-specific-lifecycles $ testing |effect_on_update_and_unmount_dispatch_only_their_named_phase
              let
                  *log $ atom ([])
                  update-effect $ effect-on-update ([] :value)
                    fn (target)
                      swap! *log conj $ [] :update target
                  unmount-effect $ effect-on-unmount
                    fn (target)
                      swap! *log conj $ [] :unmount target
                  update-method $ &struct:get update-effect :method
                  unmount-method $ &struct:get unmount-effect :method
                update-method (&struct:get update-effect :args) ([] :mount :node false)
                update-method (&struct:get update-effect :args) ([] :update :node false)
                unmount-method (&struct:get unmount-effect :args) ([] :update :node false)
                unmount-method (&struct:get unmount-effect :args) ([] :unmount :node false)
                is $ =
                  [] ([] :update :node) ([] :unmount :node)
                  deref *log
          :examples $ []
          :schema $ :: 'Dynamic
        |test-effect-watch $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-effect-watch $ testing |effect_watch_cleans_old_closure_before_setting_up_new_one
              let
                  *log $ atom ([])
                  *ops $ atom ([])
                  collect! $ fn (op) (swap! *ops conj op)
                  old-tree $ comp-watch 1 *log
                  new-tree $ comp-watch 2 *log
                collect-updating collect! :before-update ([]) ([]) old-tree new-tree
                collect-updating collect! :update ([]) ([]) old-tree new-tree
                run-collected! @*ops :target
                is $ =
                  [] ([] :cleanup 1 :target) ([] :setup 2 :target)
                  deref *log
          :examples $ []
          :schema $ :: 'Dynamic
        |test-error-boundary $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-error-boundary $ testing |error_boundary_catches_render_error_without_mutating_store
              let
                  *caught $ atom nil
                  fallback $ div ({}) (<> |fallback)
                  result $ error-boundary
                    fn (error)
                      reset! *caught $ .-message error
                      , fallback
                    raise |boom
                is $ identical? fallback result
                is $ = |boom @*caught
              is $ = (%some "|[Respo/error-boundary] expected fallback as a function")
                capture-error-message $ fn ()
                  error-boundary (unsafe-coerce nil Fn)
                    div $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        |test-for-keyed $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-for-keyed $ testing |for_keyed_preserves_order_and_reports_nil_keys
              let
                  items $ []
                    {} (:id :a) (:label |A)
                    {} (:id :b) (:label |B)
                  pairs $ for-keyed items
                    fn (item)
                      option:unwrap $ :id item
                    fn (item _idx)
                      div ({})
                        <> $ option:unwrap (:label item)
                is $ = ([] :a :b)
                  map pairs $ fn (pair)
                    option:unwrap $ first pair
                is $ = 2 (count pairs)
              is $ = (%some "|[Respo/for-keyed] key-fn returned nil at index 0")
                capture-error-message $ fn ()
                  for-keyed
                    [] $ {} (:id nil)
                    fn (item)
                      option:unwrap $ :id item
                    fn (_item _idx)
                      div $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        |test-load-resource $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-load-resource $ testing |load_resource_invokes_fetchers_and_emits_started_then_ready_or_failed
              let
                  *calls $ atom 0
                  *actions $ atom ([])
                  request-id $ load-resource!
                    fn () (swap! *calls inc) |ready
                    fn (action) (swap! *actions conj action)
                is $ = 1 @*calls
                is $ = (resource-started request-id)
                  option:unwrap $ first @*actions
                js/queueMicrotask $ fn ()
                  is $ = (resource-ready request-id |ready)
                    option:unwrap $ get @*actions 1
              let
                  *actions $ atom ([])
                  request-id $ load-resource!
                    fn () $ raise |offline
                    fn (action) (swap! *actions conj action)
                is $ = 2 (count @*actions)
                is $ = (resource-started request-id)
                  option:unwrap $ first @*actions
                match
                  option:unwrap $ get @*actions 1
                  (:failed failed-id error)
                    do
                      is $ = request-id failed-id
                      is $ = |offline (.-message error)
                  _ $ is false
              let
                  *actions $ atom ([])
                  request-id $ load-resource!
                    fn () |ready
                    fn (action) (swap! *actions conj action)
                      match action
                        (:ready _id _value) (raise |emit-ready-failed)
                        _ nil
                js/queueMicrotask $ fn ()
                  js/queueMicrotask $ fn ()
                    match
                      option:unwrap $ last @*actions
                      (:failed failed-id error)
                        do
                          is $ = request-id failed-id
                          is $ = |emit-ready-failed (.-message error)
                      _ $ is false
          :examples $ []
          :schema $ :: 'Dynamic
        |test-ref-lifecycle $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-ref-lifecycle $ testing |ref_receives_target_and_is_really_cleared_on_unmount
              let
                  *log $ atom ([])
                  *ops $ atom ([])
                  ref! $ fn (target) (swap! *log conj target)
                  element $ div
                    {} $ :ref ref!
                  collect! $ fn (op) (swap! *ops conj op)
                is $ empty? (&struct:get element :attrs)
                collect-mounting collect! ([]) ([]) element false
                run-collected! @*ops :dom-node
                reset! *ops $ []
                collect-unmounting collect! ([]) ([]) element false
                run-collected! @*ops :ignored
                is $ = ([] :dom-node nil) @*log
          :examples $ []
          :schema $ :: 'Dynamic
        |test-ref-update $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-ref-update $ testing |changing_ref_clears_old_callback_before_assigning_new_target
              let
                  *log $ atom ([])
                  *ops $ atom ([])
                  old-ref! $ fn (target)
                    swap! *log conj $ [] :old target
                  new-ref! $ fn (target)
                    swap! *log conj $ [] :new target
                  old-element $ div
                    {} $ :ref old-ref!
                  new-element $ div
                    {} $ :ref new-ref!
                  collect! $ fn (op) (swap! *ops conj op)
                find-element-diffs collect! ([]) ([]) old-element new-element
                run-collected! @*ops :dom-node
                is $ =
                  [] ([] :old nil) ([] :new :dom-node)
                  deref *log
          :examples $ []
          :schema $ :: 'Dynamic
        |test-render-scheduler $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-render-scheduler $ testing |scheduler_coalesces_requests_without_owning_application_state
              let
                  *render-count $ atom 0
                  *tasks $ atom
                    [] $ fn () nil
                  schedule! $ make-render-scheduler
                    fn () $ swap! *render-count inc
                    %some $ fn (task) (swap! *tasks conj task)
                reset! *tasks $ []
                schedule!
                schedule!
                is $ = 1 (count @*tasks)
                let
                    task! $ option:unwrap (first @*tasks)
                  task!
                is $ = 1 @*render-count
                schedule!
                is $ = 2 (count @*tasks)
          :examples $ []
          :schema $ :: 'Dynamic
        |test-render-scheduler-validation $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-render-scheduler-validation $ testing |render_scheduler_rejects_an_invalid_custom_enqueue_function
              is $ = (%some "|[Respo/make-render-scheduler] expected enqueue! as a function or nil")
                capture-error-message $ fn ()
                  make-render-scheduler
                    fn () nil
                    unsafe-coerce (%some :invalid) Dynamic
          :examples $ []
          :schema $ :: 'Dynamic
        |test-resource-reducer $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-resource-reducer $ testing |resource_reducer_keeps_immutable_data_and_ignores_stale_results
              let
                  idle $ resource-idle (%none)
                  pending $ resource-reducer idle (resource-started 1)
                  ready $ resource-reducer pending
                    resource-ready 1 $ {} (:value |first)
                  refreshing $ resource-reducer ready (resource-started 2)
                  stale $ resource-reducer refreshing
                    resource-ready 1 $ {} (:value |stale)
                  failed $ resource-reducer refreshing (resource-failed 2 |offline)
                  ready-nil $ resource-reducer pending (resource-ready 1 nil)
                  refreshing-nil $ resource-reducer ready-nil (resource-started 3)
                is $ = :pending (&struct:get pending :status)
                is $ resource-loading? pending
                is $ = :ready (&struct:get ready :status)
                is $ =
                  {} $ :value |first
                  &struct:get refreshing :data
                is $ = :refreshing (&struct:get refreshing :status)
                is $ identical? refreshing stale
                is $ = :error (&struct:get failed :status)
                is $ = |offline (&struct:get failed :error)
                is $ =
                  {} $ :value |first
                  &struct:get failed :data
                is $ = :refreshing (&struct:get refreshing-nil :status)
          :examples $ []
          :schema $ :: 'Dynamic
        |test-show $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-show $ testing |show_selects_one_immutable_branch
              let
                  child $ div ({}) (<> |child)
                  fallback $ div ({}) (<> |fallback)
                is $ identical? child (show true child)
                is $ nil? (show false child)
                is $ identical? fallback (show false child fallback)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.test.primitives $ :require
            calcit-test.core :refer $ deftest testing is
            respo.core :refer $ defcomp div <> show for-keyed error-boundary effect-watch effect-on-mount effect-on-update effect-on-unmount make-render-scheduler create-list-element
            respo.render.diff :refer $ find-element-diffs
            respo.render.effect :refer $ collect-mounting collect-unmounting collect-updating
            respo.resource :refer $ resource-idle resource-started resource-ready resource-failed resource-reducer resource-loading? load-resource!
    |respo.util.detect $ %{} :FileEntry
      :defs $ {}
        |=seq $ %{} :CodeEntry (:doc "|Recursively checks if two sequences are equal.")
          :code $ quote
            defn =seq (xs ys)
              let
                  a-empty? $ empty? xs
                  b-empty? $ empty? ys
                cond
                    and a-empty? b-empty?
                    , true
                  (or a-empty? b-empty?) false
                  (= (first xs) (first ys))
                    recur (rest xs) (rest ys)
                  true false
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'List 'List
        |component? $ %{} :CodeEntry (:doc "|check if value is a Respo component. returns true for component records, false otherwise.")
          :code $ quote
            defn component? (x)
              if (struct? x)
                = (&struct:definition x) schema/Component
                , false
          :examples $ []
            quote $ component?
              defcomp comp-demo () $ div ({})
            quote $ component?
              div $ {}
            quote $ component? nil
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'Dynamic
        |effect? $ %{} :CodeEntry (:doc "|Checks if the given value is a Respo Effect record.")
          :code $ quote
            defn effect? (x)
              and (struct? x)
                = (&struct:definition x) schema/Effect
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'Dynamic
        |element? $ %{} :CodeEntry (:doc "|check if value is a Respo element. returns true for element records, false otherwise.")
          :code $ quote
            defn element? (x)
              if (struct? x)
                = (&struct:definition x) schema/Element
                , false
          :examples $ []
            quote $ element?
              div $ {}
            quote $ element?
              span $ {} (:inner-text |text)
            quote $ element? nil
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'Dynamic
        |expect-function $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn expect-function (value message)
              when
                not $ fn? value
                raise message
              , value
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Fn)
              :args $ [] 'Dynamic 'String
          :tags $ #{} :internal
        |listener? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn listener? (item)
              and (struct? item)
                = :RespoListener $ &struct:get-name item
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.util.detect $ :require (respo.schema :as schema)
    |respo.util.dom $ %{} :FileEntry
      :defs $ {}
        |compare-to-dom! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn compare-to-dom! (vdom element)
              ; println |compare (:name vdom)
                map :name $ vals (:children vdom)
              ; js/console.log element
              let
                  virtual-name $ turn-string (:name vdom)
                  real-name $ .!toLowerCase
                    unsafe-coerce (.-tagName element) JsObject
                when (not= virtual-name real-name)
                  js/console.warn "|SSR checking: tag names do not match:"
                    to-lispy-string $ dissoc vdom :children
                    , element
              if
                not=
                  count $ :children vdom
                  .-length $ unsafe-coerce (.-children element) JsObject
                let
                    maybe-html $ :innerHTML
                      pairs-map $ :attrs vdom
                  if (some? maybe-html)
                    when
                      = maybe-html $ .-innerHTML element
                      js/console.warn "|SSR checking: noticed dom containing innerHTML:" element
                    do (js/console.error "|SSR checking: children sizes do not match!")
                      js/console.log |virtual: $ -> vdom :children (map last) (map :name) to-lispy-string
                      js/console.log |real: $ .-children element
                let
                  real-children $ unsafe-coerce (.-children element) JsObject
                  loop
                      acc 0
                      other-children $ :children vdom
                    when
                      not $ empty? other-children
                      compare-to-dom! (val-of-first other-children) (aget real-children acc)
                      recur (inc acc) (rest other-children)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'Dynamic 'Dynamic
              :features $ #{} :js-ffi
        |create-shared-canvas-context $ %{} :CodeEntry (:doc "|Creates the shared Canvas context behind an explicit JavaScript FFI boundary.")
          :code $ quote
            defn create-shared-canvas-context () $ if
              and (exists? js/window) (exists? js/document)
              .!getContext
                unsafe-coerce (js/document.createElement |canvas) JsObject
                , |2d
              , nil
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ []
              :features $ #{} :js-ffi
              :return $ :: 'JsNullish 'JsObject
        |shared-canvas-context $ %{} :CodeEntry (:doc "|Shared Canvas 2D context for measuring text width or other canvas operations.")
          :code $ quote
            def shared-canvas-context $ create-shared-canvas-context
          :examples $ []
          :schema $ :: 'JsNullish 'JsObject
        |text-width $ %{} :CodeEntry (:doc "|Measures text with a shared Canvas 2D context. Returns 0 when Canvas is unavailable, including server-side rendering and Node.js tests.")
          :code $ quote
            defn text-width (content font-size font-family)
              if (js-present? shared-canvas-context)
                let
                    context $ unsafe-coerce shared-canvas-context JsObject
                  set! (.-font context) (str font-size "|px " font-family)
                  let
                      metrics $ unsafe-coerce (.!measureText context content) JsObject
                    unsafe-coerce (.-width metrics) Number
                , 0
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'String 'Number 'String
              :features $ #{} :js-ffi
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.util.dom $ :require
            respo.util.list :refer $ val-of-first
    |respo.util.format $ %{} :FileEntry
      :defs $ {}
        |create-dashed-letter-pattern $ %{} :CodeEntry (:doc "|Creates the JavaScript RegExp behind an explicit FFI function so dashed-letter-pattern remains a value.")
          :code $ quote
            defn create-dashed-letter-pattern () $ new js/RegExp |-[a-z] |g
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |dashed->camel $ %{} :CodeEntry (:doc "|convert dashed-case CSS property names to camelCase. e.g. \"background-color\" -> \"backgroundColor\".")
          :code $ quote
            defn dashed->camel (x)
              if (= x |spell-check) |spellcheck $ .!replace x dashed-letter-pattern
                fn (cc pos prop)
                  .!toUpperCase $ unsafe-coerce (aget cc 1) JsObject
          :examples $ []
            quote $ dashed->camel |background-color
            quote $ dashed->camel |font-size
            quote $ dashed->camel |margin-top
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String
              :features $ #{} :js-ffi
        |dashed-letter-pattern $ %{} :CodeEntry (:doc "|Regex pattern for finding dashed-case letters (e.g. -a) to convert to camelCase.")
          :code $ quote
            def dashed-letter-pattern $ create-dashed-letter-pattern
          :examples $ []
          :schema $ :: 'Dynamic
        |event->edn $ %{} :CodeEntry (:doc "|Converts a native DOM event into a Respo EDN event structure.")
          :code $ quote
            defn event->edn (event) (; js/console.log "|simplify event:" event)
              ->
                case-default (.-type event)
                  {}
                    :type $ .-type event
                    :msg $ str "|Unhandled event: " (.-type event)
                  |click $ {} (:type :click)
                  |keydown $ merge (map-keyboard-event event)
                    {} (:type :keydown)
                      :key-code $ .-keyCode event
                      :keycode $ .-keyCode event
                  |keypress $ merge (map-keyboard-event event)
                    {} $ :type :keypress
                  |keyup $ merge (map-keyboard-event event)
                    {} $ :type :keyup
                  |input $ {} (:type :input)
                    :value $ aget
                      unsafe-coerce (.-target event) JsObject
                      , |value
                    :checked $ .-checked
                      unsafe-coerce (.-target event) JsObject
                  |change $ {} (:type :change)
                    :value $ aget
                      unsafe-coerce (.-target event) JsObject
                      , |value
                  |focus $ {} (:type :focus)
                assoc :original-event event
                assoc :event event
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Map)
              :args $ [] 'Dynamic
              :features $ #{} :js-ffi
        |event->prop $ %{} :CodeEntry (:doc "|Converts an event keyword (e.g. :click) to a prop name string (e.g. 'onclick').")
          :code $ quote
            defn event->prop (x)
              str |on $ turn-string x
          :examples $ []
            quote $ event->prop :click
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'Dynamic
        |event->string $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn event->string (x)
              &str:slice (turn-string x) 3
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'Dynamic
        |get-style-value $ %{} :CodeEntry (:doc "|Formats a style value for a given property. Adds px to numeric values when the property expects units, and returns an empty string for nil so DOM updates and SSR output can clear the declaration safely.")
          :code $ quote
            defn get-style-value (x prop)
              cond
                  string? x
                  , x
                (tag? x) (turn-string x)
                (number? x)
                  if (contains? unitless-props prop) (str x) (str x |px)
                (nil? x) |
                true $ str x
          :examples $ []
            quote $ assert= |10px (get-style-value 10 |width)
            quote $ assert= |1 (get-style-value 1 |opacity)
            quote $ assert= | (get-style-value nil |width)
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'Dynamic 'String
        |hsl $ %{} :CodeEntry (:doc "|Generates HSL color string. Arguments: h, s (percent), l (percent), optional alpha (0-1).")
          :code $ quote
            defn hsl (h s l ? arg)
              hint-fn $ {} (:return 'String)
              let
                  a $ either arg 1
                str "|hsl(" h |, s |%, l |%, a "|)"
          :examples $ []
            quote $ hsl 200 80 50
            quote $ hsl 0 100 50 0.5
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'Number 'Number 'Number 'Number
        |map-keyboard-event $ %{} :CodeEntry (:doc "|Extracts key information from a JavaScript KeyboardEvent.")
          :code $ quote
            defn map-keyboard-event (event)
              {}
                :key $ .-key event
                :code $ .-code event
                :ctrl? $ .-ctrlKey event
                :meta? $ .-metaKey event
                :alt? $ .-altKey event
                :shift? $ .-shiftKey event
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Map)
              :args $ [] 'Dynamic
        |mute-element $ %{} :CodeEntry (:doc "|Recursively remove event handlers from a component or element tree.\n\nThis is used in SSR-related flows where the initial HTML should not carry live client event functions.")
          :code $ quote
            defn mute-element (element)
              if (component? element) (update element :tree mute-element)
                -> element
                  assoc :event $ {}
                  update :children $ fn (children)
                    -> children $ map
                      fn (entry)
                        let
                            k $ option:unwrap (first entry)
                            child $ option:unwrap (last entry)
                          [] k $ mute-element child
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic
        |prop->attr $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn prop->attr (x)
              when (includes? x |?) (println "|[Respo] warning: property includes `?` in" x)
              case-default x x (|class-name |class) (|tab-index |tabindex) (|read-only |readonly) (|spell-check |spellcheck)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String
        |purify-element $ %{} :CodeEntry (:doc "|Recursively normalize a component or element tree into serializable data.\n\nEvent handlers are purified, component wrappers are unwrapped to their rendered tree, and children are processed recursively. This is useful before HTML serialization or DOM comparison.")
          :code $ quote
            defn purify-element (markup)
              cond
                  nil? markup
                  , nil
                (component? markup)
                  purify-element $ &let
                    t $ &struct:get markup :tree
                    when (nil? t) (raise |tree-is-empty)
                    , t
                (element? markup)
                  -> markup (assoc :ref nil)
                    assoc :event $ purify-events (&struct:get markup :event)
                    assoc :children $ -> (&struct:get markup :children)
                      map $ fn (pair)
                        let
                            k $ option:unwrap (first pair)
                            child $ option:unwrap (last pair)
                          [] k $ purify-element child
                true $ do (js/console.warn |Unknown-markup-during-purify: markup) nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic
        |purify-events $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn purify-events (events)
              reduce (&map:to-list events) ([])
                fn (acc pair)
                  let
                      event-name $ option:unwrap (first pair)
                      handler $ option:unwrap (last pair)
                    if (some? handler) (conj acc event-name) acc
          :examples $ []
          :schema $ :: 'Fn
            {}
              :args $ [] (:: 'Map 'Tag 'Dynamic)
              :return $ :: 'List 'Tag
        |text->html $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn text->html (x)
              if (nil? x) | $ -> (str x) (.replace |> |&gt;) (.replace |< |&lt;)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'Dynamic
        |unitless-props $ %{} :CodeEntry (:doc "|gemini suggested from popular libs\n")
          :code $ quote
            def unitless-props $ {} (|animationDelay true) (|animationDuration true) (|animationIterationCount true) (|aspectRatio true) (|borderImageOutset true) (|borderImageSlice true) (|borderImageWidth true) (|boxFlex true) (|boxFlexGroup true) (|boxOrdinalGroup true) (|columnCount true) (|columns true) (|fillOpacity true) (|flex true) (|flexGrow true) (|flexNegative true) (|flexPositive true) (|flexShrink true) (|floodOpacity true) (|fontSizeAdjust true) (|fontWeight true) (|gridArea true) (|gridColumn true) (|gridColumnEnd true) (|gridColumnSpan true) (|gridColumnStart true) (|gridRow true) (|gridRowEnd true) (|gridRowSpan true) (|gridRowStart true) (|lineClamp true) (|lineHeight true) (|opacity true) (|order true) (|orphans true) (|stopOpacity true) (|strokeDasharray true) (|strokeDashoffset true) (|strokeMiterlimit true) (|strokeOpacity true) (|strokeWidth true) (|tabSize true) (|transitionDelay true) (|transitionDuration true) (|widows true) (|zIndex true) (|zoom true)
          :examples $ []
          :schema $ :: 'Map
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.util.format $ :require
            respo.util.detect :refer $ component? element?
    |respo.util.list $ %{} :FileEntry
      :defs $ {}
        |map-with-idx $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn map-with-idx (xs f)
              assert (fn? f) "|expects function"
              assert (list? xs) "|expects list"
              map-indexed xs $ fn (idx x)
                [] idx $ f x
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'List)
              :args $ [] 'List 'Fn
        |pick-attrs $ %{} :CodeEntry (:doc "|Extracts HTML attributes from a properties map, filtering out internal keys like :on, :event, :style.")
          :code $ quote
            defn pick-attrs (props)
              if (nil? props) ([])
                -> props (&map:dissoc :on) (&map:dissoc :style) (&map:dissoc :ref) (&map:to-list)
                  filter $ fn (pair)
                    let
                        k $ option:unwrap (nth pair 0)
                        v $ option:unwrap (nth pair 1)
                      and (some? v)
                        not $ starts-with? (turn-string k) |on-
                  sort $ fn (x y)
                    &compare
                      option:unwrap $ nth x 0
                      option:unwrap $ nth y 0
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'List)
              :args $ [] 'Map
        |pick-event $ %{} :CodeEntry (:doc "|Extracts event listeners from a properties map. Handles both :on map and on-* keys.")
          :code $ quote
            defn pick-event (props)
              if (nil? props) ({})
                merge
                  either (&map:get props :on) ({})
                  -> props $ map-kv
                    fn (k v)
                      if
                        and
                          starts-with? (turn-string k) |on-
                          some? v
                        []
                          turn-tag $ &str:slice (turn-string k) 3
                          , v
                        , nil
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Map)
              :args $ [] 'Map
        |val-exists? $ %{} :CodeEntry (:doc "|Predicate to check if a key-value pair has a non-nil value.")
          :code $ quote
            defn val-exists? (pair)
              some? $ last pair
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Bool)
              :args $ [] 'Dynamic
        |val-of-first $ %{} :CodeEntry (:doc "|Extracts the value (second item) from the first entry of a list.")
          :code $ quote
            defn val-of-first (x)
              option:unwrap $ last
                option:unwrap $ first x
          :examples $ []
            quote $ val-of-first
                [] :a 1
                [] :b 2
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'List
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo.util.list $ :require
            respo.util.detect :refer $ component? element?
