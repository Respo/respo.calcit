
{} (:package |respo)
  :configs $ {} (:init-fn |respo.main/main!) (:reload-fn |respo.main/reload!) (:version |0.16.21)
    :modules $ [] |memof/ |lilac/ |calcit-test/
  :entries $ {}
  :files $ {}
    |respo.app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (store)
              let
                  states $ :states store
                div
                  {} (; :class-name highlight-defcomp) (:class-name style-global)
                  comp-todolist states $ :tasks store
                  div
                    {} $ :style style-states
                    <> $ str "|states: "
                      to-lispy-string $ :states store
                  comp-global-keydown
                    {} $ :disabled-commands (#{} "\"s" "\"p")
                    fn (e d!) (js/console.log "\"keydown" e)
                  comp-global-keyup
                    {} $ :disabled-commands (#{} "\"s" "\"p")
                    fn (e d!) (js/console.log "\"keyup" e)
          :examples $ []
        |style-global $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-global $ {}
              "\"&" $ {} (:font-family |Avenir,Verdana)
              "\"&" $ {} ('contained "\"@media only screen and (max-width: 600px)")
                :background-color $ hsl 0 0 90
          :examples $ []
        |style-states $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-states $ {} (:padding 8)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.app.comp.container $ :require
            respo.core :refer $ defcomp div span <> >> a
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo.app.comp.todolist :refer $ comp-todolist
            respo.comp.space :refer $ =<
            respo.comp.global-keydown :refer $ comp-global-keydown comp-global-keyup
            respo.comp.inspect :refer $ highlight-defcomp
        :examples $ []
    |respo.app.comp.task $ %{} :FileEntry
      :defs $ {}
        |comp-task $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-task (states task)
              let
                  cursor $ :cursor states
                  state $ either (:data states) |
                [] (effect-log task)
                  div
                    {} $ :class-name style-task
                    comp-inspect |Task task $ {} (:left 200)
                    button $ {} (:class-name style-done)
                      :style $ {}
                        :background-color $ if (:done? task) (hsl 200 20 80) (hsl 200 80 70)
                      :on-click $ fn (e d!)
                        d! $ : toggle (:id task)
                    =< 8 nil
                    input $ {}
                      :value $ :text task
                      :class-name widget/style-input
                      :on-input $ fn (e d!)
                        let
                            task-id $ :id task
                            text $ :value e
                          d! $ : update task-id text
                    =< 8 nil
                    input $ {} (:value state) (:class-name widget/style-input)
                      :on-input $ fn (e d!)
                        d! cursor $ :value e
                    =< 8 nil
                    div
                      {} (:class-name widget/style-button)
                        :on-click $ fn (e d!)
                          d! :remove $ :id task
                      <> |Remove
                    =< 8 nil
                    div ({}) (<> state)
          :examples $ []
        |effect-log $ %{} :CodeEntry (:doc |)
          :code $ quote
            defeffect effect-log (task) (action parent at-place?) (; js/console.log "\"Task effect" action at-place?)
              case-default action nil
                :mount $ let
                    x0 $ js/Math.random
                  ; println "\"Stored" x0
                  , nil
                :update (; println "\"read") nil
                :unmount (; println "\"read") nil
          :examples $ []
        |style-done $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-done $ {}
              :& $ {} (:width 32) (:height 32) (:outline :none) (:border :none) (:vertical-align :middle) (:cursor :pointer)
          :examples $ []
        |style-task $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-task $ {}
              "\"&" $ {} (:display :flex) (:padding "|4px 0px")
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.app.comp.task $ :require
            respo.core :refer $ defcomp div input span button <> defeffect
            respo.util.format :refer $ hsl
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo.app.style.widget :as widget
            respo.css :refer $ defstyle
        :examples $ []
    |respo.app.comp.todolist $ %{} :FileEntry
      :defs $ {}
        |comp-todolist $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-todolist (states tasks)
              let
                  cursor $ either (:cursor states) ([])
                  state $ either (:data states) initial-state
                [] (effect-focus)
                  div
                    {} (:class-name style-todo-root) (:data-name "\"todolist")
                    ; a $ {} (; :href "\"A") (; :class-name "\"B") (; :inner-text "\"C") (; :height "\"100px")
                    comp-inspect |States state $ {} (:left |80px)
                    div
                      {} $ :style style-panel
                      input $ {} (:placeholder "\"Text")
                        :value $ :draft state
                        :class-name widget/style-input
                        :style $ {}
                          :width $ &max 200
                            + 24 $ text-width (:draft state) 16 |BlinkMacSystemFont
                        :on-input $ fn (e d!)
                          d! $ :: :states-merge cursor state
                            {} $ :draft (:value e)
                        :on-focus on-focus
                      =< 8 nil
                      span
                        {} (:class-name widget/style-button)
                          :on-click $ fn (e d!)
                            d! $ : add (:draft state)
                            d! cursor $ assoc state :draft |
                        span $ {} (:on-click nil) (:inner-text "\"Add")
                      =< 8 nil
                      span $ {} (:inner-text |Clear) (:class-name widget/style-button)
                        :on-click $ fn (e d!)
                          d! $ :: :clear
                      =< 8 nil
                      div ({})
                        div
                          {} (:class-name widget/style-button) (:on-click on-test)
                          <> "|heavy tasks" style-bold!
                    list->
                      {} (:class-name |task-list) (:style style-list)
                      -> tasks .to-list .reverse $ map
                        fn (task)
                          let
                              task-id $ :id task
                            [] task-id $ memof1-call-by task-id comp-task (>> states task-id) task
                    if
                      > (count tasks) 0
                      div
                        {} (:spell-check true) (:class-name style-toolbar)
                        div
                          {} (:class-name widget/style-button)
                            :on-click $ if
                              not $ :locked? state
                              fn (e d!)
                                d! $ : clear
                          <> |Clear2
                        =< 8 nil
                        div
                          {} (:class-name widget/style-button)
                            :on-click $ fn (e d!)
                              d! cursor $ update state :locked? not
                          <>
                            str-spaced |Lock? $ :locked? state
                            {} $ :font-size 13
                        =< 8 nil
                        comp-wrap $ comp-zero
                    comp-inspect |Tasks tasks $ {} (:left 500) (:top 20)
          :examples $ []
        |effect-focus $ %{} :CodeEntry (:doc |)
          :code $ quote
            defeffect effect-focus () (action parent at-place?) (js/console.log "\"todolist effect:" action)
          :examples $ []
        |initial-state $ %{} :CodeEntry (:doc |)
          :code $ quote
            def initial-state $ {} (:draft |) (:locked? false)
          :examples $ []
        |number-order $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn number-order (a b)
              if (&< a b) -1 $ if (&> a b) 1 0
          :examples $ []
        |on-focus $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-focus (e dispatch!) (println "|Just focused~")
          :examples $ []
        |on-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-test (e dispatch!) (println "|trigger test!")
              try-test! dispatch! $ []
          :examples $ []
        |style-bold! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-bold! $ {}
              "\"&" $ {} (:font-weight "\"bold !important")
          :examples $ []
        |style-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-list $ {} (:color :black)
              :background-color $ hsl 120 20 98
          :examples $ []
        |style-panel $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-panel $ {} (:display :flex) (:margin-bottom 4)
          :examples $ []
        |style-todo-root $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-todo-root $ {}
              "\"&" $ {} (:color :black)
                :background-color $ hsl 120 20 98
                :line-height |24px
                "\"font-size" 16
                :padding 10
                :font-family "|\"微软雅黑\", Verdana"
          :examples $ []
        |style-toolbar $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-toolbar $ {}
              "\"&" $ {} (:display :flex) (:flex-direction :row) (:justify-content :start) (:padding "\"4px 0") (:white-space :nowrap)
          :examples $ []
        |try-test! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn try-test! (dispatch! acc)
              let
                  started $ js/Date.now
                dispatch! $ :: :clear
                loop
                    x 20
                  dispatch! :add |empty
                  if (> x 0)
                    recur $ dec x
                loop
                    x 20
                  dispatch! $ : hit-first (js/Math.random)
                  if (> x 0)
                    recur $ dec x
                dispatch! $ :: :clear
                loop
                    x 10
                  dispatch! :add "|only 10 items"
                  if (> x 0)
                    recur $ dec x
                let
                    cost $ - (js/Date.now) started
                  if
                    < (count acc) 40
                    js/setTimeout
                      fn () $ try-test! dispatch! (conj acc cost)
                      , 0
                    println |result: $ sort acc number-order
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.app.comp.todolist $ :require
            respo.core :refer $ defcomp div span input <> list-> defeffect >> a
            respo.util.format :refer $ hsl
            respo.app.comp.task :refer $ comp-task
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo.app.comp.zero :refer $ comp-zero
            respo.app.comp.wrap :refer $ comp-wrap
            respo.util.dom :refer $ text-width
            respo.app.style.widget :as widget
            memof.once :refer $ memof1-call-by
            respo.css :refer $ defstyle
        :examples $ []
    |respo.app.comp.wrap $ %{} :FileEntry
      :defs $ {}
        |comp-wrap $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-wrap (x)
              div ({}) x
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.app.comp.wrap $ :require
            respo.core :refer $ defcomp div
        :examples $ []
    |respo.app.comp.zero $ %{} :FileEntry
      :defs $ {}
        |comp-zero $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-zero () $ div
              {} $ :inner-text 0
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.app.comp.zero $ :require
            respo.core :refer $ defcomp div
        :examples $ []
    |respo.app.core $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *store schema/store)
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op ? op-data)
              if dev? $ js/console.log op op-data
              let
                  store $ updater @*store op (generate-id!)
                reset! *store store
          :examples $ []
        |handle-ssr! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn handle-ssr! (mount-target)
              realize-ssr! mount-target (comp-container @*store) dispatch!
          :examples $ []
        |new-fn $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn new-fn () $ println |hello
          :examples $ []
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! (mount-target)
              render! mount-target (comp-container @*store) dispatch!
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.app.core $ :require
            respo.app.comp.container :refer $ comp-container
            respo.core :refer $ render! realize-ssr!
            respo.schema :refer $ dev?
            respo.app.schema :as schema
            respo.app.updater :refer $ updater
        :examples $ []
    |respo.app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :tasks $ []
              :states $ {}
              :cursor $ []
          :examples $ []
        |task $ %{} :CodeEntry (:doc |)
          :code $ quote
            def task $ {} (:id nil) (:text |) (:done? false)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns respo.app.schema)
        :examples $ []
    |respo.app.style.widget $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |)
          :code $ quote
            def button $ {} (:display :inline-block) (:padding "\"0 6px 0 6px") (:font-family |Avenir,Verdana) (:cursor :pointer)
              :background-color $ hsl 0 80 70.9
              :color $ hsl 0 0 100
              :height 28
              :line-height "\"28px"
              :transition-duration "\"200ms"
          :examples $ []
        |style-button $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-button $ {} (:& button)
              "\"&:hover" $ {} (:transform "\"scale(1.04)")
          :examples $ []
        |style-input $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-input $ {}
              "\"&" $ {} (:font-size |16px) (:line-height |24px) (:padding "|0px 8px") (:outline :none) (:min-width |300px)
                :background-color $ hsl 0 0 94
                :border :none
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.app.style.widget $ :require
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
        :examples $ []
    |respo.app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id) (; println store op)
              tag-match op
                  :states cursor s
                  update-states store cursor s
                (:states-kv cursor k v) (update-states-kv store cursor k v)
                (:states-merge cursor s o) (update-states-merge store cursor s o)
                (:add text)
                  update store :tasks $ fn (tasks)
                    conj tasks $ {} (:text text) (:id op-id) (:done? false)
                (:remove task-id)
                  update store :tasks $ fn (tasks)
                    -> tasks $ filter
                      fn (task)
                        not $ = (:id task) task-id
                (:clear)
                  assoc store :tasks $ []
                (:update task-id text)
                  update store :tasks $ fn (tasks)
                    -> tasks $ map
                      fn (task)
                        if
                          = (:id task) task-id
                          assoc task :text text
                          , task
                (:hit-first rd)
                  -> store $ update-in ([] :tasks 0)
                    fn (task) (assoc task :text rd)
                (:toggle task-id)
                  update store :tasks $ fn (tasks)
                    -> tasks $ map
                      fn (task)
                        if
                          = (:id task) task-id
                          update task :done? not
                          , task
                _ $ do (eprintln "\"Unknown op:" op) store
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.app.updater $ :require
            respo.cursor :refer $ update-states update-states-kv update-states-merge
        :examples $ []
    |respo.comp.global-keydown $ %{} :FileEntry
      :defs $ {}
        |comp-global-keydown $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-global-keydown (options on-event) (; "\"dirty solution: proxy window keydown event to a `<span/>`, comes with some restrictions. however Respo does not allow effects to modify states.")
              [] (effect-listen-keyboard options "\"keydown")
                span $ {}
                  :on-keydown $ fn (e d!) (on-event e d!)
          :examples $ []
        |comp-global-keyup $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-global-keyup (options on-event) (; "\"dirty solution: proxy window keydown event to a `<span/>`, comes with some restrictions. however Respo does not allow effects to modify states.")
              [] (effect-listen-keyboard options "\"keyup")
                span $ {}
                  :on-keyup $ fn (e d!) (on-event e d!)
          :examples $ []
        |dirty-field $ %{} :CodeEntry (:doc |)
          :code $ quote (def dirty-field "\"_global_listener")
          :examples $ []
        |effect-listen-keyboard $ %{} :CodeEntry (:doc |)
          :code $ quote
            defeffect effect-listen-keyboard (options event-name) (action el at?)
              cond
                  or (= action :mount) (= action :update)
                  let
                      disabled-commands $ noted "\"copied event does not support `event.preventDefault()`, so we need to pass a set of configs"
                        either (:disabled-commands options) (#{} "\"p" "\"s")
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
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.comp.global-keydown $ :require
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input a list->
        :examples $ []
    |respo.comp.inspect $ %{} :FileEntry
      :defs $ {}
        |comp-inspect $ %{} :CodeEntry (:doc "|put a label in tag with absolute position, click it to print data.\n\n3 parameters are,\n- `tip` a string of comment,\n- `data` Calcit data to inspect, which will be printed in Console,\n- `style` string of className, or hashmap of styles")
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
        |highlight-defcomp $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle highlight-defcomp $ {}
              "\"& *" $ {}
                :outline $ str "\"1px dashed " (hsl 200 40 50 0.5)
          :examples $ []
        |style-data $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-data $ {}
              "\"&" $ {} (:position :absolute) (:background-color "\"hsl(240,100%,0%)") (:color :white) (:opacity 0.2) (:font-size |12px) (:font-family |Avenir,Verdana) (:line-height "\"1.4em") (:padding "|2px 6px") (:border-radius |4px) (:max-width 160) (:max-height 32) (:white-space :normal) (:text-overflow :ellipsis) (:cursor :default)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.comp.inspect $ :require
            respo.core :refer $ defcomp pre <>
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
        :examples $ []
    |respo.comp.space $ %{} :FileEntry
      :defs $ {}
        |=< $ %{} :CodeEntry (:doc "|insert a tiny space, horizontally or verticaly.\n\n- `8 nil` for horizontal width 8px,\n- `nil 8` for vertical height 8px.\n")
          :code $ quote
            defn =< (w x) (comp-space w x)
          :examples $ []
            quote $ =< 8 nil
            quote $ =< nil 16
            quote $ =< 12 nil
        |comp-space $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-space (w h)
              div $ {} (:class-name style-space)
                :style $ if (some? w) (&{} :width w) (&{} :height h)
          :examples $ []
        |style-space $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-space $ {}
              :& $ {} (:height 1) (:width 1) (:display :inline-block)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.comp.space $ :require
            respo.core :refer $ div defcomp
            respo.css :refer $ defstyle
        :examples $ []
    |respo.controller.client $ %{} :FileEntry
      :defs $ {}
        |activate-instance! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn activate-instance! (entire-dom mount-point deliver-event)
              let
                  listener-builder $ fn (event-name) (build-listener event-name deliver-event)
                set! (.-innerHTML mount-point) |
                .!appendChild mount-point $ make-element entire-dom listener-builder ([])
          :examples $ []
        |build-listener $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn build-listener (event-name deliver-event)
              fn (event coord)
                let
                    simple-event $ event->edn event
                  deliver-event coord event-name simple-event
          :examples $ []
        |patch-instance! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn patch-instance! (changes mount-point deliver-event)
              let
                  listener-builder $ fn (event-name) (build-listener event-name deliver-event)
                apply-dom-changes changes mount-point listener-builder
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.controller.client $ :require
            respo.render.patch :refer $ apply-dom-changes
            respo.util.format :refer $ event->edn
            respo.render.dom :refer $ make-element
        :examples $ []
    |respo.controller.resolve $ %{} :FileEntry
      :defs $ {}
        |build-deliver-event $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn build-deliver-event (*global-element *dispatch-fn)
              fn (coord event-name simple-event) (; echo "\"event coord" coord)
                let
                    target-element $ find-event-target @*global-element coord event-name
                    target-listener $ if (some? target-element)
                      get (:event target-element) event-name
                      do (js/console.warn "\"found no element" coord event-name) nil
                    dispatch-wrap $ fn (op ? data)
                      let
                          dispatch! $ deref *dispatch-fn
                        if (list? op)
                          dispatch! $ : states op data
                          if (tag? op)
                            dispatch! $ :: op data
                            dispatch! op
                  if (some? target-listener)
                    do (; println "|listener found:" coord event-name) (target-listener simple-event dispatch-wrap)
                    ; println "|found no listener:" coord event-name
          :examples $ []
        |find-event-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn find-event-target (element coord event-name) (; echo "\"looking for" coord event-name)
              assert "\"element cannot be nil" $ some? element
              assert "\"coord cannot be nil" $ some? coord
              let
                  target-element $ let
                      m $ get-markup-at element coord
                    apply-args
                        get-markup-at element coord
                      fn (m)
                        if (component? m)
                          recur $ :tree m
                          , m
                  element-exists? $ some? target-element
                ; println "|target element:" $ to-lispy-string event-name
                if
                  and element-exists? $ some?
                    get (:event target-element) event-name
                  , target-element $ if (empty? coord) nil
                    if element-exists?
                      recur element
                        slice coord 0 $ - (count coord) 1
                        , event-name
                      , nil
          :examples $ []
        |get-markup-at $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-markup-at (markup coord)
              ; println |markup: $ to-lispy-string coord
              list-match coord
                () markup
                (coord-head cs)
                  if (component? markup)
                    recur (:tree markup) cs
                    let
                        child-pair $ find (:children markup)
                          fn (child-entry)
                            = (get child-entry 0) coord-head
                      if (some? child-pair)
                        get-markup-at (get child-pair 1) cs
                        raise $ str "|child not found:" coord
                          map (:children markup) first
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.controller.resolve $ :require
            respo.util.detect :refer $ component? element?
        :examples $ []
    |respo.core $ %{} :FileEntry
      :defs $ {}
        |*changes-logger $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *changes-logger nil)
          :examples $ []
        |*dispatch-fn $ %{} :CodeEntry (:doc "|internal atom storing the dispatch function. used to handle events and state updates throughout the application.")
          :code $ quote (defatom *dispatch-fn nil)
          :examples $ []
        |*global-element $ %{} :CodeEntry (:doc "|internal atom storing the current virtual DOM tree. used by render! to track and update the application state.")
          :code $ quote (defatom *global-element nil)
          :examples $ []
        |<> $ %{} :CodeEntry (:doc "|create a text node using span element. first argument is the text content. optional second argument is style (hashmap) or class-name (string).")
          :code $ quote
            defn <> (content ? style)
              if (string? style)
                span $ {} (:inner-text content) (:class-name style)
                span $ {} (:inner-text content) (:style style)
          :examples $ []
        |>> $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn >> (states k)
              let
                  parent-cursor $ either (:cursor states) ([])
                  branch $ either (get states k) ({})
                assoc branch :cursor $ conj parent-cursor k
          :examples $ []
        |a $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn a (props & children) (create-element :a props & children)
          :examples $ []
        |blockquote $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn blockquote (props & children) (create-element :blockquote props & children)
          :examples $ []
        |body $ %{} :CodeEntry (:doc "|create a body element with properties and children. first argument is a hashmap for properties, rest arguments are children elements.")
          :code $ quote
            defn body (props & children) (create-element :body props & children)
          :examples $ []
            quote $ body ({})
              div ({}) (<> |Content)
            quote $ body
              {} $ :style
                {} $ :margin |0
        |button $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn button (props & children)
              create-element :button props & $ map children confirm-child
          :examples $ []
        |clear-cache! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn clear-cache! () $ reset-memof1-caches!
          :examples $ []
        |code $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn code (props & children) (create-element :code props & children)
          :examples $ []
        |confirm-child $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn confirm-child (x)
              assert "\"Invalid data in elements tree: " $ or (nil? x) (element? x) (component? x)
              , x
          :examples $ []
        |confirm-child-pair $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn confirm-child-pair (pair)
              assert "\"expected pair" $ and (list? pair)
                &= 2 $ count pair
              &let
                x $ nth pair 1
                assert "\"Invalid data in elements tree: " $ or (nil? x) (element? x) (component? x)
              , pair
          :examples $ []
        |create-element $ %{} :CodeEntry (:doc "|create a virtual DOM element with tag name, properties and children. used internally by element macros like div, span, etc.")
          :code $ quote
            defn create-element (tag-name props & children)
              ; assert
                str "|For rendering lists, please use list-> , got: " $ to-lispy-string children
                and
                  &> (count children) 0
                  not $ any? list? children
              let
                  attrs $ pick-attrs props
                  styles $ ->
                    either (get props :style) ({})
                    &map:to-list
                    sort $ fn (x y)
                      &compare (nth x 0) (nth y 0)
                  event $ pick-event props
                  children-nodes $ -> children
                    map-indexed $ fn (idx item) (confirm-child item) ([] idx item)
                    filter val-exists?
                %{} schema/Element (:name tag-name) (:coord nil) (:attrs attrs) (:style styles) (:event event) (:children children-nodes)
          :examples $ []
            quote $ create-element :div ({})
            quote $ create-element :span
              {} $ :class-name |text
            quote $ create-element :a
              {} $ :href |/home
              <> |Home
        |create-list-element $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn create-list-element (tag-name props child-map)
              let
                  attrs $ pick-attrs props
                  styles $ -> props (:style)
                    either $ {}
                    .to-list
                    sort $ fn (x y)
                      &compare (first x) (first y)
                  event $ pick-event props
                %{} schema/Element (:name tag-name) (:coord nil) (:attrs attrs) (:style styles) (:event event)
                  :children $ map child-map confirm-child-pair
          :examples $ []
        |decorate-defcomp $ %{} :CodeEntry (:doc "|detect root element under component and add `data-defcomp` mark")
          :code $ quote
            defn decorate-defcomp (c name)
              update c :tree $ fn (tree)
                if (&record:matches? tree schema/Element)
                  update tree :attrs $ fn (attrs)
                    conj attrs $ [] :data-comp name
                  , tree
          :examples $ []
        |defcomp $ %{} :CodeEntry (:doc "|Respo component can be plain functions. However `defcomp` is provided as a macro to transform effects into component effects, and it returns component instead of element.\n\nparameters are:\n\n- component name\n- a list of params\n- spreading argument of body, last item used as returned value")
          :code $ quote
            defmacro defcomp (comp-name params & body)
              assert "\"expected symbol of comp-name" $ symbol? comp-name
              assert "\"expected list for params" $ list? params
              assert "\"some component retured" $ &> (count body) 0
              quasiquote $ defn ~comp-name (~ params)
                decorate-defcomp
                  extract-effects-list $ %{} schema/Component
                    :effects $ []
                    :name $ ~ (turn-tag comp-name)
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
        |defeffect $ %{} :CodeEntry (:doc "|a macro for defining a effect. if returns an function.\n\nparameters:\n\n- effect name\n- list of arguments\n- list of effect lifecycle arguments\n  - action name\n  - element that take place\n  - boolean if happen at current element\n- spreading arguments of body\n")
          :code $ quote
            defmacro defeffect (effect-name args params & body)
              assert "\"args in symbol" $ and (list? args) (every? args symbol?)
              assert "\"params like [action el at-place?]" $ and (list? params) (every? params symbol?)
              let
                  args-var $ gensym "\"args"
                  params-var $ gensym "\"params"
                quasiquote $ defn ~effect-name ~args
                  %{} schema/Effect
                    :name $ ~ (turn-tag effect-name)
                    :coord $ []
                    :args $ [] ~@args
                    :method $ fn (~args-var ~params-var)
                      let[] ~args ~args-var $ let[] ~params ~params-var
                        ~@ $ if (empty? body)
                          quasiquote $ println "\"WARNING:" ~effect-name "\"lack code for handling effects!"
                          , body
          :examples $ []
        |defplugin $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro defplugin (x params & body)
              assert "\"expected symbol" $ symbol? x
              assert "\"expected params" $ list? params
              assert "\"expected some result" $ > (count body) 0
              quasiquote $ defn ~x ~params ~@body
          :examples $ []
        |div $ %{} :CodeEntry (:doc "|create a div element with properties and children. first argument is a hashmap for properties like :class-name, :style, :on. rest arguments are children elements.")
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
        |element-type $ %{} :CodeEntry (:doc |)
          :code $ quote
            def element-type $ if (exists? js/Element) js/Element js/Error
          :examples $ []
        |extract-effects-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn extract-effects-list (markup)
              &let
                markup-tree $ :tree markup
                cond
                    nil? markup-tree
                    assoc markup :tree $ span nil
                  (list? markup-tree)
                    let
                        node-tree $ find markup-tree
                          fn (x)
                            and (record? x)
                              or (component? x) (element? x)
                        effects-list $ -> markup-tree (filter effect?)
                      -> markup (assoc :tree node-tree) (assoc :effects effects-list)
                  true markup
          :examples $ []
        |h1 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn h1 (props & children) (create-element :h1 props & children)
          :examples $ []
        |h2 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn h2 (props & children) (create-element :h2 props & children)
          :examples $ []
        |h3 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn h3 (props & children) (create-element :h3 props & children)
          :examples $ []
        |h4 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn h4 (props & children) (create-element :h4 props & children)
          :examples $ []
        |h5 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn h5 (props & children) (create-element :h5 props & children)
          :examples $ []
        |h6 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn h6 (props & children) (create-element :h6 props & children)
          :examples $ []
        |head $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn head (props & children) (create-element :head props & children)
          :examples $ []
        |hr $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn hr (props) (create-element :hr props)
          :examples $ []
        |html $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn html (props & children)
              create-element :html props & $ map children confirm-child
          :examples $ []
        |img $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn img (props & children) (create-element :img props & children)
          :examples $ []
        |input $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn input (props & children) (create-element :input props & children)
          :examples $ []
        |li $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn li (props & children) (create-element :li props & children)
          :examples $ []
        |link $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn link (props & children) (create-element :link props & children)
          :examples $ []
        |list-> $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn list-> (props children) (create-list-element :div props children)
          :examples $ []
        |mount-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn mount-app! (target element *dispatch-fn)
              ; assert "|1st argument should be an element" $ or (nil? target) (instance? element-type target)
              ; assert "|2nd argument should be a component" $ component? element
              let
                  deliver-event $ build-deliver-event *global-element *dispatch-fn
                  *changes $ atom ([])
                  collect! $ fn (op) (swap! *changes conj op)
                ; println "|mount app"
                activate-instance! element target deliver-event
                collect-mounting collect! ([]) ([]) element true
                patch-instance! @*changes target deliver-event
                reset! *global-element element
          :examples $ []
        |ol $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn ol (props & children) (create-element :ol props & children)
          :examples $ []
        |option $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn option (props & children) (create-element :option props & children)
          :examples $ []
        |p $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn p (props & children) (create-element :p props & children)
          :examples $ []
        |pre $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn pre (props & children) (create-element :pre props & children)
          :examples $ []
        |realize-ssr! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn realize-ssr! (target element dispatch!)
              assert (instance? element-type target) "|1st argument should be an element"
              assert (component? element) "|2nd argument should be a component"
              let
                  app-element $ .-firstElementChild target
                  *changes $ atom ([])
                  collect! $ fn (op coord n-coord v)
                    swap! *changes conj $ [] op coord n-coord v
                  deliver-event $ build-deliver-event *global-element dispatch!
                if (nil? app-element) (raise "\"Detected no element from SSR!")
                compare-to-dom! (purify-element element) app-element
                collect-mounting collect! ([]) ([]) element true
                patch-instance! @*changes target deliver-event
                reset! *global-element $ mute-element element
          :examples $ []
        |render! $ %{} :CodeEntry (:doc "|sync virtual DOM to real DOM. newly creating for the first time, and diff/patch for reset of calls:\n\ntakes arguments:\n- `target`, the mount point,\n- `markup` which is the virtual DOM,\n- `dispatch!` the dispatcher function for handling actions.")
          :code $ quote
            defn render! (target markup dispatch!) (reset! *dispatch-fn dispatch!)
              if (some? @*global-element) (rerender-app! target markup *dispatch-fn) (mount-app! target markup *dispatch-fn)
          :examples $ []
        |rerender-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn rerender-app! (target element *dispatch-fn)
              let
                  deliver-event $ build-deliver-event *global-element *dispatch-fn
                  *changes $ atom ([])
                  collect! $ fn (op) (swap! *changes conj op)
                ; println @*global-element
                find-element-diffs collect! ([]) ([]) @*global-element element
                if-let (logger @*changes-logger) (logger @*global-element element @*changes)
                ; js/console.log |Changes: @*changes
                patch-instance! @*changes target deliver-event
                reset! *global-element element
          :examples $ []
        |script $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn script (props & children) (create-element :script props & children)
          :examples $ []
        |select $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn select (props & children) (create-element :select props & children)
          :examples $ []
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
        |strong $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn strong (props & children) (create-element :strong props & children)
          :examples $ []
        |style $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn style (props & children) (create-element :style props & children)
          :examples $ []
        |textarea $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn textarea (props & children)
              create-element :textarea props & $ map children confirm-child
          :examples $ []
        |title $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn title (props & children) (create-element :title props & children)
          :examples $ []
        |ul $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn ul (props & children) (create-element :ul props & children)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc "|provide core APIs for Respo, many of them are elements. if expected element is not defined yet, use `create-element :tag-name ...` to use it dynamically.\n")
        :code $ quote
          ns respo.core $ :require
            respo.controller.resolve :refer $ build-deliver-event
            respo.render.diff :refer $ find-element-diffs
            respo.render.effect :refer $ collect-mounting
            respo.util.format :refer $ purify-element mute-element
            respo.controller.client :refer $ activate-instance! patch-instance!
            respo.util.list :refer $ pick-attrs pick-event val-exists?
            respo.util.detect :refer $ component? element? effect?
            respo.schema :as schema
            respo.util.dom :refer $ compare-to-dom!
            memof.once :refer $ reset-memof1-caches!
        :examples $ []
    |respo.css $ %{} :FileEntry
      :defs $ {}
        |*style-caches $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *style-caches $ {}
          :examples $ []
        |*style-list-in-nodejs $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *style-list-in-nodejs $ []
          :examples $ []
        |create-style! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn create-style! (style-name rules)
              assert "\"expected rules in map" $ map? rules
              if (contains? @*style-caches style-name)
                if
                  = rules $ get-in @*style-caches ([] style-name :rules)
                  , style-name $ let
                      style-el $ get-in @*style-caches ([] style-name :el)
                      css-block $ render-css-block style-name rules
                    set! (.-innerHTML style-el) css-block
                    swap! *style-caches assoc-in ([] style-name :rules) rules
                    , style-name
                let
                    css-block $ render-css-block style-name rules
                  if nodejs? (swap! *style-list-in-nodejs conj css-block)
                    let
                        style-el $ js/document.createElement "\"style"
                      set! (.-innerHTML style-el) css-block
                      set! (.-id style-el) style-name
                      js/document.head.appendChild style-el
                      swap! *style-caches assoc style-name $ {} (:rules rules) (:el style-el)
                  , style-name
          :examples $ []
        |defstyle $ %{} :CodeEntry (:doc "|a macro for turning CSS rules into className, and only works for JavaScript.\n\nuse `defstyle` like:\n\n```cirru\ndefstyle style-demo $ {}\n  |& $ {} (:color :red)\n  \"|&:hover\" $ {}\n    :background-color :blue\n```\n\nwhere `&` refers to current element.\n\nIn the rules, it's nested hashmaps. `|&` and `|&:hover` are CSS queries. and in nested hashmaps there are CSS properties defined in calcit data.\n")
          :code $ quote
            defmacro defstyle (style-name rules)
              assert "\"expected symbol of style-name" $ symbol? style-name
              if-let
                query0 $ &list:nth rules 1
                assert "\"expected rule 0 to be hashmap or symbol, use `defstyle` like:\n\n```cirru\ndefstyle style-demo $ {}\n  |& $ {}\n    :color :red\n```\n\nwhere `&` refers to current element.\n" $ if-let
                  rule0 $ &list:nth query0 1
                  or (symbol? rule0)
                    and (list? rule0)
                      &let
                        h $ &list:nth rule0 0
                        or (&= '{} h) (&= 'merge h)
              if-let
                query1 $ &list:nth rules 2
                assert "\"expected rule 1 to be hashmap or symbol, use `defstyle` like:\n\n```cirru\ndefstyle style-demo $ {}\n  |& $ {} (:color :red)\n  \"|&:hover\" $ {}\n    :background-color :blue\n```\n\nwhere `&` refers to current element" $ if-let
                  rule1 $ &list:nth query1 1
                  or (symbol? rule1)
                    and (list? rule1)
                      &let
                        h $ &list:nth rule1 0
                        or (&= '{} h) (&= 'merge h)
              let
                  style-name-str $ str
                    -> (turn-string style-name) (&str:replace "\"!" "\"_EX_") (&str:replace "\"?" "\"_QU_")
                    , "\"__"
                      ->
                        :ns $ &extract-code-into-edn style-name
                        turn-string
                        &str:replace "\"." "\"_"
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
        |nodejs? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def nodejs? $ and (exists? js/process) (= js/process.release.name "\"node")
          :examples $ []
        |render-css-block $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-css-block (style-name rules)
              -> rules
                .map-list $ fn (pair)
                  let
                      k $ turn-string (nth pair 0)
                      v $ nth pair 1
                    assert "\"expected rule name in string" $ string? k
                    assert "\"expected rule styles in map" $ map? v
                    let
                        class-rule $ str "\"." style-name
                        rule-name $ -> k (.!replace "\"$0" class-rule) (.!replace "\"&" class-rule)
                        contained $ get v 'contained
                        css-line $ style->string (.to-list v)
                      if (some? contained) (str contained "\" {" &newline rule-name "\" {" &newline css-line &newline "\"}" &newline "\"}") (str rule-name "\" {" &newline css-line &newline "\"}")
                .to-list
                .join-str $ str &newline &newline
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.css $ :require
            respo.render.dom :refer $ style->string
        :examples $ []
    |respo.cursor $ %{} :FileEntry
      :defs $ {}
        |update-states $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn update-states (store cursor new-state)
              assoc-in store
                concat ([] :states) cursor $ [] :data
                , new-state
          :examples $ []
        |update-states-kv $ %{} :CodeEntry (:doc "|a quick dirty trick to partially update component state.\n\nnotice: need to handle empty state manually.")
          :code $ quote
            defn update-states-kv (store cursor k v)
              update-in store
                concat ([] :states) cursor $ [] :data
                fn (s)
                  if (map? s) (assoc s k v)
                    do (js/console.warn "\":states-kv expected hashmap, got:" s) s
          :examples $ []
        |update-states-merge $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn update-states-merge (store cursor state0 changes)
              update-in store
                concat ([] :states) cursor $ [] :data
                fn (s)
                  if (nil? s)
                    noted "\"merge base initial state" $ merge state0 changes
                    if (map? s)
                      noted "\"merge base latest state" $ merge s changes
                      do (js/console.warn "\"unknown data to merge:" s) s
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns respo.cursor)
        :examples $ []
    |respo.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () (; handle-ssr! mount-target) (load-console-formatter!)
              if-let
                raw $ js/window.localStorage.getItem |respo.calcit
                swap! *store assoc :tasks $ parse-cirru-edn raw
              render-app! mount-target
              add-watch *store :rerender $ fn (store prev) (render-app! mount-target)
              ; reset! *changes-logger $ fn (old-tree new-tree changes) (js/console.log "\"Patch" changes)
              println |Loaded. $ js/performance.now
              set! js/window.onbeforeunload $ fn (event) (save-store!)
          :examples $ []
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ if (exists? js/document) (js/document.querySelector |.app) nil
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload () $ if (nil? build-errors)
              do (remove-watch *store :rerender) (clear-cache!) (render-app! mount-target)
                add-watch *store :rerender $ fn (store prev) (render-app! mount-target)
                hud! "\"ok~" "\"Ok"
                js/console.log "|code updated."
              hud! "\"error" build-errors
          :examples $ []
        |save-store! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn save-store! () $ js/window.localStorage.setItem |respo.calcit
              format-cirru-edn $ :tasks @*store
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.main $ :require
            respo.core :refer $ *changes-logger clear-cache!
            respo.app.core :refer $ render-app! *store
            respo.app.core :refer $ handle-ssr!
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
        :examples $ []
    |respo.render.diff $ %{} :FileEntry
      :defs $ {}
        |detect-keys-dup $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn detect-keys-dup (child-keys)
              let
                  size $ count child-keys
                  last-pos $ dec size
                if (> size 1)
                  apply-args (0 1)
                    fn (p q)
                      if
                        &= (nth child-keys p) (nth child-keys q)
                        do
                          eprintln "\"duplicated key" $ nth child-keys p
                          , true
                        if (&< q last-pos)
                          recur p $ inc q
                          let
                              p-next $ inc p
                            if (&< p-next last-pos)
                              recur p-next $ inc p-next
                              , false
          :examples $ []
        |find-children-diffs $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn find-children-diffs (collect! coord n-coord index old-children new-children) (; js/console.log "|diff children:" n-coord index old-children new-children)
              let
                  was-empty? $ empty? old-children
                  now-empty? $ empty? new-children
                cond
                    and was-empty? now-empty?
                    , nil
                  (and was-empty? (not now-empty?))
                    let
                        pair $ first new-children
                        k $ first pair
                        element $ last pair
                        new-coord $ conj coord k
                      collect! $ :: :append-element new-coord n-coord element
                      collect-mounting collect! coord (conj n-coord index) element true
                      recur collect! coord n-coord (inc index) ([]) (rest new-children)
                  (and (not was-empty?) now-empty?)
                    let
                        pair $ first old-children
                        k $ first pair
                        new-coord $ conj coord k
                        new-n-coord $ conj n-coord index
                      collect-unmounting collect! coord new-n-coord (last pair) true
                      collect! $ :: :rm-element new-coord new-n-coord nil
                      recur collect! coord n-coord index (rest old-children) ([])
                  true $ let
                      old-keys $ -> old-children (take 16) (map first)
                      new-keys $ -> new-children (take 16) (map first)
                      x1 $ first old-keys
                      y1 $ first new-keys
                      match-x1 $ fn (x) (= x x1)
                      match-y1 $ fn (x) (= x y1)
                      x1-remains? $ any? new-keys match-x1
                      y1-existed? $ any? old-keys match-y1
                      old-follows $ rest old-children
                      new-follows $ rest new-children
                    if (nil? y1) (js/console.warn "\"nil key is bad in Respo")
                    ; println "\"compare:" x1 new-keys x1-remains? y1 y1-existed? old-keys
                    cond
                        &= x1 y1
                        let
                            old-element $ val-of-first old-children
                            new-element $ val-of-first new-children
                          find-element-diffs collect! (conj coord x1) (conj n-coord index) old-element new-element
                          recur collect! coord n-coord (inc index) old-follows new-follows
                      (and x1-remains? (not y1-existed?))
                        let
                            pair $ first new-children
                            k $ first pair
                            element $ last pair
                            new-coord $ conj coord k
                            new-n-coord $ conj n-coord index
                          collect! $ :: :add-element new-coord new-n-coord element
                          collect-mounting collect! coord new-n-coord (val-of-first new-children) true
                          recur collect! coord n-coord (inc index) old-children new-follows
                      (and (not x1-remains?) y1-existed?)
                        let
                            pair $ first old-children
                            k $ first pair
                            new-coord $ conj coord k
                            new-n-coord $ conj n-coord index
                          collect-unmounting collect! coord new-n-coord (last pair) true
                          collect! $ :: :rm-element new-coord new-n-coord nil
                          recur collect! coord n-coord index old-follows new-children
                      true $ let
                          xi $ index-of new-keys x1
                          yi $ index-of old-keys y1
                          first-old-entry $ first old-children
                          first-new-entry $ first new-children
                          new-n-coord $ conj n-coord index
                        ; println |index: xi yi
                        if (&<= xi yi)
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
        |find-element-diffs $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn find-element-diffs (collect! coord n-coord old-tree new-tree) (; js/console.log "|element diffing:" n-coord old-tree new-tree) (; echo "\"element coord" coord)
              cond
                  identical? old-tree new-tree
                  , nil
                (and (component? old-tree) (component? new-tree))
                  let
                      next-coord $ conj coord (&record:get new-tree :name)
                    if
                      = (&record:get old-tree :name) (&record:get new-tree :name)
                      do (collect-updating collect! :before-update coord n-coord old-tree new-tree)
                        find-element-diffs collect! next-coord n-coord (:tree old-tree) (:tree new-tree)
                        collect-updating collect! :update coord n-coord old-tree new-tree
                      do (collect-unmounting collect! coord n-coord old-tree true)
                        find-element-diffs collect! next-coord n-coord (:tree old-tree) (:tree new-tree)
                        collect-mounting collect! coord n-coord new-tree true
                (and (component? old-tree) (element? new-tree))
                  do
                    collect-unmounting collect!
                      conj coord $ &record:get old-tree :name
                      , n-coord old-tree true
                    recur collect! coord n-coord (:tree old-tree) new-tree
                (and (element? old-tree) (component? new-tree))
                  let
                      new-coord $ conj coord (&record:get new-tree :name)
                    do
                      find-element-diffs collect! new-coord n-coord old-tree $ :tree new-tree
                      collect-mounting collect! coord n-coord new-tree true
                (and (element? old-tree) (element? new-tree))
                  if
                    not= (&record:get old-tree :name) (&record:get new-tree :name)
                    do
                      collect! $ :: :replace-element coord n-coord new-tree
                      , nil
                    do
                      find-props-diffs collect! coord n-coord (&record:get old-tree :attrs) (&record:get new-tree :attrs)
                      let
                          old-style $ &record:get old-tree :style
                          new-style $ &record:get new-tree :style
                        if (not= old-style new-style) (find-style-diffs collect! coord n-coord old-style new-style)
                      let
                          old-events $ keys-non-nil
                            either (&record:get old-tree :event) ({})
                          new-events $ keys-non-nil
                            either (&record:get new-tree :event) ({})
                        when (not= old-events new-events)
                          let
                              added-events $ difference new-events old-events
                              removed-events $ difference old-events new-events
                            &doseq (event-name added-events)
                              collect! $ :: :set-event coord n-coord event-name
                            &doseq (event-name removed-events)
                              collect! $ :: :rm-event coord n-coord event-name
                      let
                          old-children $ &record:get old-tree :children
                          new-children $ &record:get new-tree :children
                        if
                          and dev? $ detect-keys-dup (map new-children first)
                          js/console.error "\"Parent that has dups" new-tree
                        find-children-diffs collect! coord n-coord 0 old-children new-children
                true $ js/console.warn "\"Diffing unknown params" old-tree new-tree
          :examples $ []
        |find-props-diffs $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn find-props-diffs (collect! coord n-coord old-props new-props)
              ; js/console.log "|find props:" n-coord old-props new-props (count old-props) (count new-props)
              let
                  was-empty? $ empty? old-props
                  now-empty? $ empty? new-props
                cond
                    and was-empty? now-empty?
                    , nil
                  (and was-empty? (not now-empty?))
                    do
                      collect! $ :: :add-prop coord n-coord (first new-props)
                      recur collect! coord n-coord old-props $ rest new-props
                  (and (not was-empty?) now-empty?)
                    do
                      collect! $ :: :rm-prop coord n-coord
                        first $ first old-props
                      recur collect! coord n-coord (rest old-props) new-props
                  true $ let
                      old-pair $ first old-props
                      new-pair $ first new-props
                      old-k $ first old-pair
                      old-v $ last old-pair
                      new-k $ first new-pair
                      new-v $ last new-pair
                      old-follows $ rest old-props
                      new-follows $ rest new-props
                    ; js/console.log old-k new-k old-v new-v
                    case-default (&compare old-k new-k) (eprintln "\"[Respo] unknown compare result for props keys")
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
          :examples $ []
        |find-style-diffs $ %{} :CodeEntry (:doc |)
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
                        entry $ first new-style
                        follows $ rest new-style
                      collect! $ :: :add-style c-coord coord entry
                      recur collect! c-coord coord old-style follows
                  (and (not was-empty?) now-empty?)
                    let
                        entry $ first old-style
                        follows $ rest old-style
                      collect! $ :: :rm-style c-coord coord (first entry)
                      recur collect! c-coord coord follows new-style
                  true $ let
                      old-entry $ first old-style
                      new-entry $ first new-style
                      old-follows $ rest old-style
                      new-follows $ rest new-style
                    case-default
                      &compare (first old-entry) (first new-entry)
                      eprintln "\"[Respo] unknown compare result for style keys"
                      -1 $ do
                        collect! $ :: :rm-style c-coord coord (first old-entry)
                        recur collect! c-coord coord old-follows new-style
                      1 $ do
                        collect! $ :: :add-style c-coord coord new-entry
                        recur collect! c-coord coord old-style new-follows
                      0 $ do
                        if
                          not $ identical? (last old-entry) (last new-entry)
                          collect! $ :: :replace-style c-coord coord new-entry
                        recur collect! c-coord coord old-follows new-follows
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.render.diff $ :require
            respo.util.format :refer $ purify-element
            respo.util.detect :refer $ component? element?
            respo.render.effect :refer $ collect-mounting collect-updating collect-unmounting
            respo.util.list :refer $ val-of-first
            respo.schema :refer $ dev?
        :examples $ []
    |respo.render.dom $ %{} :FileEntry
      :defs $ {}
        |make-element $ %{} :CodeEntry (:doc "|internal function to create a DOM element from a virtual element. handles properties, styles, events, and recursively creates child elements.")
          :code $ quote
            defn make-element (virtual-element listener-builder coord)
              assert "\"coord is required" $ some? coord
              if (component? virtual-element)
                make-element (&record:get virtual-element :tree) listener-builder $ conj coord (&record:get virtual-element :name)
                let
                    tag-name $ turn-string (&record:get virtual-element :name)
                    attrs $ &record:get virtual-element :attrs
                    style $ &record:get virtual-element :style
                    events $ &record:get virtual-element :event
                    children $ &record:get virtual-element :children
                    element $ js/document.createElement tag-name
                    child-elements $ -> children
                      map $ fn (pair)
                        assert "\"expect pair of key/element" $ and (list? pair)
                          &= 2 $ count pair
                        let[] (k child) pair
                          when (nil? k) (js/console.warn "\"nil key is bad for Respo")
                          when (some? child)
                            make-element child listener-builder $ conj coord k
                  each attrs $ fn (entry)
                    let
                        prop-str $ turn-string (first entry)
                        v $ last entry
                      if (.!startsWith prop-str "\"data-")
                        -> element .-dataset $ js-set (.!slice prop-str 5) v
                        let
                            k $ dashed->camel prop-str
                          if (some? v) (aset element k v)
                  each style $ fn (entry)
                    let
                        style-name $ turn-string (first entry)
                        k $ dashed->camel style-name
                        v $ last entry
                      aset (.-style element) k $ get-style-value v k
                  &doseq (entry events)
                    let
                        event-name $ first entry
                        name-in-string $ event->prop event-name
                      aset element name-in-string $ fn (event)
                          listener-builder event-name
                          , event coord
                        .!stopPropagation event
                  each child-elements $ fn (child-element)
                    if (some? child-element) (.!appendChild element child-element)
                  , element
          :examples $ []
        |style->string $ %{} :CodeEntry (:doc "|this functions is used inside DOM operations, inserting styles into a `<style>` element. to render to HTML, use `style->html` instead")
          :code $ quote
            defn style->string (styles)
              apply-args ("\"" styles)
                fn (acc xs)
                  if (empty? xs) acc $ let
                      entry $ first xs
                      k $ first entry
                    if (symbol? k)
                      recur acc $ rest xs
                      let
                          style-name $ turn-string k
                          v $ get-style-value (last entry) style-name
                        recur (str acc style-name |: v |;) (rest xs)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.render.dom $ :require
            respo.util.format :refer $ dashed->camel event->prop get-style-value
            respo.util.detect :refer $ component?
        :examples $ []
    |respo.render.effect $ %{} :FileEntry
      :defs $ {}
        |collect-mounting $ %{} :CodeEntry (:doc "|internal function to collect mounting effects from component tree. recursively traverses the virtual DOM and collects effect:mount callbacks.")
          :code $ quote
            defn collect-mounting (collect! coord n-coord tree at-place?)
              cond
                  component? tree
                  let
                      effects $ :effects tree
                      next-coord $ conj coord (:name tree)
                    when
                      not $ empty? effects
                      &doseq (effect effects)
                        let
                            method $ :method effect
                          collect! $ :: :effect-mount next-coord n-coord
                            fn (target)
                              method (:args effect) ([] :mount target at-place?)
                    recur collect! next-coord n-coord (:tree tree) false
                (element? tree)
                  apply-args
                      :children tree
                      , 0
                    fn (children idx)
                      when
                        not $ empty? children
                        let
                            pair $ first children
                            k $ first pair
                          collect-mounting collect! (conj coord k) (conj n-coord idx) (last pair) false
                        recur (rest children) (inc idx)
                true $ js/console.warn "\"Unknown entry for mounting:" tree
          :examples $ []
        |collect-unmounting $ %{} :CodeEntry (:doc "|internal function to collect unmounting effects from component tree. recursively traverses the virtual DOM and collects effect:unmount callbacks.")
          :code $ quote
            defn collect-unmounting (collect! coord n-coord tree at-place?)
              cond
                  component? tree
                  let
                      effects $ :effects tree
                      new-coord $ conj coord (:name tree)
                    collect-unmounting collect! new-coord n-coord (:tree tree) false
                    when
                      not $ empty? effects
                      &doseq (effect effects)
                        let
                            method $ :method effect
                          collect! $ :: :effect-unmount new-coord n-coord
                            fn (target)
                              method (:args effect) ([] :unmount target at-place?)
                (element? tree)
                  loop
                      children $ :children tree
                      idx 0
                    when
                      not $ empty? children
                      let
                          pair $ first children
                          k $ first pair
                        collect-unmounting collect! (conj coord k) (conj n-coord idx) (last pair) false
                      recur (rest children) (inc idx)
                true $ js/console.warn "\"Unknown entry for unmounting:" tree
          :examples $ []
        |collect-updating $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn collect-updating (collect! action coord n-coord old-tree new-tree)
              assert "\"expects component" $ component? new-tree
              let
                  effects $ :effects new-tree
                  next-coord $ conj coord (:name new-tree)
                when
                  not $ empty? effects
                  ; js/console.log "\"collect update" n-coord $ :effects new-tree
                  &doseq
                    idx $ range (count effects)
                    let
                        old-effect $ get-in old-tree ([] :effects idx)
                        new-effect $ get effects idx
                        method $ :method new-effect
                      ; println old-effect new-effect
                      when
                        not $ =seq (:args new-effect) (:args old-effect)
                        collect! $ ::
                          if (= :update action) :effect-update :effect-before-update
                          , next-coord n-coord
                            fn (target)
                              method (:args new-effect) ([] action target)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.render.effect $ :require (respo.schema.op :as op)
            respo.util.detect :refer $ component? element? =seq
            respo.util.list :refer $ val-of-first
        :examples $ []
    |respo.render.html $ %{} :FileEntry
      :defs $ {}
        |element->string $ %{} :CodeEntry (:doc "|which is actually `element->html`")
          :code $ quote
            defn element->string (element)
              let
                  tag-name $ turn-string (:name element)
                  attrs $ pairs-map (:attrs element)
                  styles $ either (:style element) ({})
                  text-inside $ if
                    = (:name element) :textarea
                    escape-html $ :value attrs
                    either (:innerHTML attrs)
                      text->html $ :inner-text attrs
                  tailored-props $ &let
                    props $ -> attrs (dissoc :innerHTML) (dissoc :inner-text)
                    if (empty? styles) props $ assoc props :style styles
                  props-in-string $ props->html tailored-props
                if (&set:includes? self-closing tag-name)
                  str |< tag-name
                    if (blank? props-in-string) | "| "
                    , props-in-string "| >"
                  &let
                    children $ -> (:children element)
                      map $ fn (entry)
                        let
                            child $ last entry
                          element->string child
                    str |< tag-name
                      if (blank? props-in-string) "\"" "| " |
                      , props-in-string |>
                        either text-inside $ join-str children |
                        , |</ tag-name |>
          :examples $ []
        |entry->html $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn entry->html (entry)
              let
                  k $ first entry
                  v $ last entry
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
        |escape-html $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn escape-html (text)
              if (nil? text) "\"" $ -> text (.replace "|\"" |&quot;) (.replace |< |&lt;) (.replace |> |&gt;) (.replace &newline "\"&#13;&#10;")
          :examples $ []
        |make-string $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn make-string (element)
              element->string $ purify-element (mute-element element)
          :examples $ []
        |props->html $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn props->html (props)
              -> props (.to-list)
                filter $ fn (pair)
                  let
                      k $ first pair
                      v $ last pair
                    and (some? v)
                      not $ starts-with? (turn-string k) |on-
                .sort-by first
                map entry->html
                join-str "| "
          :examples $ []
        |self-closing $ %{} :CodeEntry (:doc |)
          :code $ quote
            def self-closing $ #{} "\"area" "\"base" "\"br" "\"col" "\"embed" "\"hr" "\"img" "\"input" "\"link" "\"meta" "\"param" "\"source" "\"track" "\"wbr"
          :examples $ []
        |style->html $ %{} :CodeEntry (:doc "|this function is intended for HTML rendering since it escaped characters.")
          :code $ quote
            defn style->html (styles)
              -> styles
                map $ fn (entry)
                  let
                      k $ first entry
                      style-name $ turn-string k
                      v $ get-style-value (last entry) (dashed->camel style-name)
                    str style-name |: (escape-html v) |;
                join-str |
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.render.html $ :require
            respo.util.format :refer $ prop->attr purify-element mute-element text->html get-style-value dashed->camel
            respo.util.detect :refer $ component? element?
        :examples $ []
    |respo.render.patch $ %{} :FileEntry
      :defs $ {}
        |add-element $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn add-element (target op listener-builder coord)
              let
                  new-element $ make-element op listener-builder coord
                -> (.-parentElement target) (.!insertBefore new-element target)
          :examples $ []
        |add-event $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn add-event (target event-name listener-builder coord)
              &let
                event-prop $ event->prop event-name
                aset target event-prop $ fn (event)
                    listener-builder event-name
                    , event coord
                  .!stopPropagation event
          :examples $ []
        |add-prop $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn add-prop (target p prop-value)
              let
                  prop-str $ turn-string p
                if (.!startsWith prop-str "\"data-")
                  -> target .-dataset $ js-set (.!slice prop-str 5) prop-value
                  let
                      prop-name $ dashed->camel prop-str
                    case-default prop-name (js-set target prop-name prop-value)
                      |style $ js-set target prop-name (style->string prop-value)
          :examples $ []
        |add-style $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn add-style (target p v)
              let
                  style-name $ dashed->camel (turn-string p)
                  style-value $ get-style-value v style-name
                -> (.-style target) (aset style-name style-value)
          :examples $ []
        |append-element $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn append-element (target op listener-builder coord)
              &let
                new-element $ make-element op listener-builder coord
                .!appendChild target new-element
          :examples $ []
        |apply-dom-changes $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn apply-dom-changes (changes mount-point listener-builder)
              let
                  root $ .-firstElementChild mount-point
                &doseq (op changes)
                  let-sugar
                      n-coord $ nth op 2
                      target $ find-target root n-coord
                    tag-match op
                        :replace-prop _coord _n-coord op-data
                        replace-prop target (nth op-data 0) (nth op-data 1)
                      (:add-prop _coord _n-coord op-data)
                        add-prop target (nth op-data 0) (nth op-data 1)
                      (:rm-prop _coord _n-coord op-data) (rm-prop target op-data)
                      (:add-style _coord _n-coord op-data)
                        add-style target (nth op-data 0) (nth op-data 1)
                      (:replace-style _coord _n-coord op-data)
                        replace-style target (nth op-data 0) (nth op-data 1)
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
                      _ $ eprintln "|not implemented:" op
          :examples $ []
        |find-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn find-target (root coord)
              list-match coord
                () root
                (index xss)
                  if-let
                    child $ aget (.-children root) index
                    recur child xss
          :examples $ []
        |replace-element $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn replace-element (target op listener-builder coord)
              let
                  new-element $ make-element op listener-builder coord
                -> (.-parentElement target) (.!insertBefore new-element target)
                .!remove target
          :examples $ []
        |replace-prop $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn replace-prop (target p prop-value)
              let
                  prop-str $ turn-string p
                if (.!startsWith prop-str "\"data-")
                  let
                      name $ .!slice prop-str 5
                    if
                      not= prop-value $ -> target .-dataset (aget name)
                      -> target .-dataset $ js-set name prop-value
                  let
                      prop-name $ dashed->camel prop-str
                    if (identical? prop-name |value)
                      if
                        not= prop-value $ .-value target
                        js-set target prop-name prop-value
                      js-set target prop-name prop-value
          :examples $ []
        |replace-style $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn replace-style (target p v)
              let
                  style-name $ dashed->camel (turn-string p)
                -> (.-style target)
                  aset style-name $ get-style-value v style-name
          :examples $ []
        |rm-element $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn rm-element (target op)
              if (some? target) (.!remove target) (js/console.warn "|Respo: Element already removed! Probably by :inner-text.")
          :examples $ []
        |rm-event $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn rm-event (target event-name)
              &let
                event-prop $ event->prop event-name
                js-set target event-prop nil
          :examples $ []
        |rm-prop $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn rm-prop (target op)
              case-default op
                let
                    prop-str $ turn-string op
                  if (.!startsWith prop-str "\"data-")
                    -> target .-dataset $ js-delete (.!slice prop-str 5)
                    let
                        k $ dashed->camel prop-str
                        ; ks $ prop->attr prop-str
                      aset target k nil
                :class-name $ .!removeAttribute target "\"class"
                :href $ .!removeAttribute target "\"href"
                :inner-text $ set! (.-innerText target) "\""
                :innerHTML $ set! (.-innerHTML target) "\""
                :checked $ set! (.-checked target) false
                :disabled $ set! (.-disabled target) false
                :selected $ set! (.-selected target) false
          :examples $ []
        |rm-style $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn rm-style (target op)
              &let
                style-name $ dashed->camel (turn-string op)
                -> (.-style target) (js-set style-name nil)
          :examples $ []
        |run-effect $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-effect (target method coord)
              if (some? target) (method target) (js/console.warn "\"Unknown effects target:" coord)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.render.patch $ :require
            respo.util.format :refer $ dashed->camel event->prop get-style-value prop->attr
            respo.render.dom :refer $ make-element style->string
            respo.schema.op :as op
        :examples $ []
    |respo.schema $ %{} :FileEntry
      :defs $ {}
        |Component $ %{} :CodeEntry (:doc |)
          :code $ quote (defrecord Component :name :effects :tree)
          :examples $ []
        |Effect $ %{} :CodeEntry (:doc |)
          :code $ quote (defrecord Effect :name :coord :args :method)
          :examples $ []
        |Element $ %{} :CodeEntry (:doc |)
          :code $ quote (defrecord Element :name :coord :attrs :style :event :children)
          :examples $ []
        |cache-info $ %{} :CodeEntry (:doc |)
          :code $ quote
            def cache-info $ {} (:value nil) (:initial-loop nil) (:last-hit nil) (:hit-times 0)
          :examples $ []
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ &= "\"dev" (get-env "\"mode" "\"release")
          :examples $ []
        |effect $ %{} :CodeEntry (:doc |)
          :code $ quote
            def effect $ {} (:name nil) (:respo-node :effect)
              :coord $ []
              :args $ []
              :method $ fn (props args)
                ; args $ [] action parent at-place?
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns respo.schema)
        :examples $ []
    |respo.test.comp.task $ %{} :FileEntry
      :defs $ {}
        |comp-task $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-task (task)
              div ({})
                span $ {}
                  :inner-text $ :text task
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.test.comp.task $ :require
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp div span
        :examples $ []
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
        |style-todolist $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-todolist $ {} (:color :blue) (:font-family "|\"微软雅黑\", Verdana")
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.test.comp.todolist $ :require
            respo.test.comp.task :refer $ comp-task
            respo.core :refer $ defcomp div list->
        :examples $ []
    |respo.test.html $ %{} :FileEntry
      :defs $ {}
        |html-quote-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest html-quote-test $ let
                tree-demo $ div
                  {} (:value "|a\"b\"c") (:x |y)
                    :style $ {} (:content "|d\"e\"f")
              testing "|HTML contains quotes" $ is
                = (slurp |test/examples/quote.html) (make-string tree-demo)
          :examples $ []
        |html-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest html-test $ let
                todo-demo $ comp-todolist todolist-store
              testing "|test generated HTML from component" $ is
                = (slurp |test/examples/demo.html) (make-string todo-demo)
          :examples $ []
        |nil-prop-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest nil-prop-test $ let
                piece $ script
                  {} (:src "\"a.js") (:defer nil)
              testing "|test generate script with nil" $ is
                = "|<script src=\"a.js\"></script>" $ make-string piece
          :examples $ []
        |run-tests $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-tests () (html-quote-test) (nil-prop-test) (simple-html-test) (textarea-test)
          :examples $ []
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
        |slurp $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro slurp (file-path) (read-file file-path)
          :examples $ []
        |textarea-test $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest textarea-test $ let
                piece $ textarea
                  {} $ :value "|a\nb\nc\n\"\nd"
              testing "|test generated HTML from component" $ is
                = "|<textarea value=\"a&#13;&#10;b&#13;&#10;c&#13;&#10;&quot;&#13;&#10;d\">a&#13;&#10;b&#13;&#10;c&#13;&#10;&quot;&#13;&#10;d</textarea>" $ make-string piece
          :examples $ []
        |todolist-store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def todolist-store $ []
              {} (:id 101) (:text |101)
              {} (:id 102) (:text |102)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.test.html $ :require
            calcit-test.core :refer $ deftest is testing
            respo.core :refer $ html head title script div link textarea body
            respo.render.html :refer $ make-string
        :examples $ []
    |respo.test.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () (html/run-tests) (test-pick-attrs) (test-pick-event)
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ println "\"reload."
          :examples $ []
        |test-pick-attrs $ %{} :CodeEntry (:doc |)
          :code $ quote
            deftest test-pick-attrs $ is
              =
                pick-attrs $ {} (:value |string)
                  :on-click $ fn () nil
                [] $ [] :value |string
          :examples $ []
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
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.test.main $ :require (respo.test.html :as html)
            calcit-test.core :refer $ deftest testing is
            respo.util.list :refer $ pick-attrs pick-event
        :examples $ []
    |respo.util.detect $ %{} :FileEntry
      :defs $ {}
        |=seq $ %{} :CodeEntry (:doc |)
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
        |component? $ %{} :CodeEntry (:doc "|check if value is a Respo component. returns true for component records, false otherwise.")
          :code $ quote
            defn component? (x)
              if (record? x) (&record:matches? schema/Component x) false
          :examples $ []
            quote $ component?
              defcomp comp-demo () $ div ({})
            quote $ component?
              div $ {}
            quote $ component? nil
        |effect? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn effect? (x)
              and (record? x) (&record:matches? schema/Effect x)
          :examples $ []
        |element? $ %{} :CodeEntry (:doc "|check if value is a Respo element. returns true for element records, false otherwise.")
          :code $ quote
            defn element? (x)
              if (record? x) (&record:matches? schema/Element x) false
          :examples $ []
            quote $ element?
              div $ {}
            quote $ element?
              span $ {} (:inner-text |text)
            quote $ element? nil
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.util.detect $ :require (respo.schema :as schema)
        :examples $ []
    |respo.util.dom $ %{} :FileEntry
      :defs $ {}
        |compare-to-dom! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn compare-to-dom! (vdom element)
              ; println "\"compare" (:name vdom)
                map :name $ vals (:children vdom)
              ; js/console.log element
              let
                  virtual-name $ turn-string (:name vdom)
                  real-name $ .!toLowerCase (.-tagName element)
                when (not= virtual-name real-name)
                  js/console.warn "\"SSR checking: tag names do not match:"
                    to-lispy-string $ dissoc vdom :children
                    , element
              if
                not=
                  count $ :children vdom
                  .-length $ .-children element
                let
                    maybe-html $ :innerHTML
                      pairs-map $ :attrs vdom
                  if (some? maybe-html)
                    when
                      = maybe-html $ .-innerHTML element
                      js/console.warn "\"SSR checking: noticed dom containing innerHTML:" element
                    do (js/console.error "\"SSR checking: children sizes do not match!")
                      js/console.log "\"virtual:" $ -> vdom :children (map last) (map :name) to-lispy-string
                      js/console.log "\"real:" $ .-children element
                let
                    real-children $ .-children element
                  loop
                      acc 0
                      other-children $ :children vdom
                    when
                      not $ empty? other-children
                      compare-to-dom! (val-of-first other-children) (aget real-children acc)
                      recur (inc acc) (rest other-children)
          :examples $ []
        |shared-canvas-context $ %{} :CodeEntry (:doc |)
          :code $ quote
            def shared-canvas-context $ if
              and (exists? js/window) (exists? js/document)
              .!getContext (js/document.createElement |canvas) |2d
              , nil
          :examples $ []
        |text-width $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn text-width (content font-size font-family)
              if (some? shared-canvas-context)
                do
                  set! (.-font shared-canvas-context) (str font-size "|px " font-family)
                  .-width $ .!measureText shared-canvas-context content
                , nil
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.util.dom $ :require
            respo.util.list :refer $ val-of-first
        :examples $ []
    |respo.util.format $ %{} :FileEntry
      :defs $ {}
        |dashed->camel $ %{} :CodeEntry (:doc "|convert dashed-case CSS property names to camelCase. e.g. \"background-color\" -> \"backgroundColor\".")
          :code $ quote
            defn dashed->camel (x)
              .!replace x dashed-letter-pattern $ fn (cc pos prop)
                .!toUpperCase $ aget cc 1
          :examples $ []
            quote $ dashed->camel |background-color
            quote $ dashed->camel |font-size
            quote $ dashed->camel |margin-top
        |dashed-letter-pattern $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dashed-letter-pattern $ new js/RegExp "\"-[a-z]" "\"g"
          :examples $ []
        |event->edn $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn event->edn (event) (; js/console.log "\"simplify event:" event)
              ->
                case-default (.-type event)
                  {}
                    :type $ .-type event
                    :msg $ str "|Unhandled event: " (.-type event)
                  "\"click" $ {} (:type :click)
                  "\"keydown" $ merge (map-keyboard-event event)
                    {} (:type :keydown)
                      :key-code $ .-keyCode event
                      :keycode $ .-keyCode event
                  "\"keypress" $ merge (map-keyboard-event event)
                    {} $ :type :keypress
                  "\"keyup" $ merge (map-keyboard-event event)
                    {} $ :type :keyup
                  "\"input" $ {} (:type :input)
                    :value $ aget (.-target event) "\"value"
                    :checked $ -> event .-target .-checked
                  "\"change" $ {} (:type :change)
                    :value $ aget (.-target event) |value
                  "\"focus" $ {} (:type :focus)
                assoc :original-event event
                assoc :event event
          :examples $ []
        |event->prop $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn event->prop (x)
              str |on $ turn-string x
          :examples $ []
        |event->string $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn event->string (x)
              &str:slice (turn-string x) 3
          :examples $ []
        |get-style-value $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-style-value (x prop)
              cond
                  string? x
                  , x
                (tag? x) (turn-string x)
                (number? x)
                  if (contains? unitless-props prop) (str x) (str x "\"px")
                (nil? x) nil
                true $ str x
          :examples $ []
        |hsl $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn hsl (h s l ? arg)
              let
                  a $ either arg 1
                str "\"hsl(" h "\"," s "\"%," l "\"%," a "\")"
          :examples $ []
        |map-keyboard-event $ %{} :CodeEntry (:doc |)
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
        |mute-element $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn mute-element (element)
              if (component? element) (update element :tree mute-element)
                -> element
                  assoc :event $ {}
                  update :children $ fn (children)
                    -> children $ map
                      fn (entry)
                        [] (first entry)
                          mute-element $ last entry
          :examples $ []
        |prop->attr $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn prop->attr (x)
              when (includes? x "\"?") (println "\"[Respo] warning: property includes `?` in" x)
              case-default x x (|class-name |class) (|tab-index |tabindex) (|read-only |readonly)
          :examples $ []
        |purify-element $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn purify-element (markup)
              cond
                  nil? markup
                  , nil
                (component? markup)
                  purify-element $ &let
                    t $ :tree markup
                    when (nil? t) (raise "\"tree is empty")
                    , t
                (element? markup)
                  -> markup (update :event purify-events)
                    update :children $ fn (children)
                      -> children $ map
                        fn (pair)
                          let
                              k $ first pair
                              child $ last pair
                            [] k $ purify-element child
                true $ do (js/console.warn "\"Unknown markup during purify:" markup) nil
          :examples $ []
        |purify-events $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn purify-events (events)
              reduce events ([])
                fn (acc pair)
                  if
                    some? $ last pair
                    conj acc $ first pair
                    , acc
          :examples $ []
        |text->html $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn text->html (x)
              if (some? x)
                -> (str x) (.replace |> |&gt;) (.replace |< |&lt;)
                , nil
          :examples $ []
        |unitless-props $ %{} :CodeEntry (:doc "|gemini suggested from popular libs\n")
          :code $ quote
            def unitless-props $ {} (|animationDelay true) (|animationDuration true) (|animationIterationCount true) (|aspectRatio true) (|borderImageOutset true) (|borderImageSlice true) (|borderImageWidth true) (|boxFlex true) (|boxFlexGroup true) (|boxOrdinalGroup true) (|columnCount true) (|columns true) (|fillOpacity true) (|flex true) (|flexGrow true) (|flexNegative true) (|flexPositive true) (|flexShrink true) (|floodOpacity true) (|fontSizeAdjust true) (|fontWeight true) (|gridArea true) (|gridColumn true) (|gridColumnEnd true) (|gridColumnSpan true) (|gridColumnStart true) (|gridRow true) (|gridRowEnd true) (|gridRowSpan true) (|gridRowStart true) (|lineClamp true) (|lineHeight true) (|opacity true) (|order true) (|orphans true) (|stopOpacity true) (|strokeDasharray true) (|strokeDashoffset true) (|strokeMiterlimit true) (|strokeOpacity true) (|strokeWidth true) (|tabSize true) (|transitionDelay true) (|transitionDuration true) (|widows true) (|zIndex true) (|zoom true)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.util.format $ :require
            respo.util.detect :refer $ component? element?
        :examples $ []
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
        |pick-attrs $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn pick-attrs (props)
              if (nil? props) ([])
                -> props (&map:dissoc :on) (&map:dissoc :event) (&map:dissoc :style) (&map:to-list)
                  filter $ fn (pair)
                    let
                        k $ nth pair 0
                        v $ nth pair 1
                      not $ starts-with? (turn-string k) "\"on-"
                  sort $ fn (x y)
                    &compare (nth x 0) (nth y 0)
          :examples $ []
        |pick-event $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn pick-event (props)
              if (nil? props) ({})
                merge
                  either (&map:get props :on) ({})
                  -> props $ map-kv
                    fn (k v)
                      if
                        starts-with? (turn-string k) |on-
                        []
                          turn-tag $ &str:slice (turn-string k) 3
                          , v
                        , nil
          :examples $ []
        |val-exists? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn val-exists? (pair)
              some? $ last pair
          :examples $ []
        |val-of-first $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn val-of-first (x)
              last $ first x
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo.util.list $ :require
            respo.util.detect :refer $ component? element?
        :examples $ []
