
{} (:package |respo)
  :configs $ {} (:init-fn |respo.main/main!) (:reload-fn |respo.main/reload!)
    :modules $ [] |memof/compact.cirru |lilac/compact.cirru |calcit-test/compact.cirru
    :version |0.14.35
  :entries $ {}
  :files $ {}
    |respo.schema $ {}
      :ns $ quote (ns respo.schema)
      :defs $ {}
        |Effect $ quote (defrecord Effect :name :coord :args :method)
        |Component $ quote (defrecord Component :name :effects :tree)
        |Element $ quote (defrecord Element :name :coord :attrs :style :event :children)
        |effect $ quote
          def effect $ {} (:name nil) (:respo-node :effect)
            :coord $ []
            :args $ []
            :method $ fn (props args)
              ; args $ [] action parent at-place?
        |cache-info $ quote
          def cache-info $ {} (:value nil) (:initial-loop nil) (:last-hit nil) (:hit-times 0)
    |respo.app.comp.container $ {}
      :ns $ quote
        ns respo.app.comp.container $ :require
          respo.core :refer $ defcomp div span <> >> a
          respo.app.comp.todolist :refer $ comp-todolist
          respo.comp.space :refer $ =<
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (store)
            let
                states $ :states store
              div
                {} $ :style style-global
                comp-todolist states $ :tasks store
                div
                  {} $ :style style-states
                  <> $ str "|states: "
                    pr-str $ :states store
        |style-global $ quote
          def style-global $ {} (:font-family |Avenir,Verdana)
        |style-states $ quote
          def style-states $ {} (:padding 8)
    |respo.app.schema $ {}
      :ns $ quote (ns respo.app.schema)
      :defs $ {}
        |task $ quote
          def task $ {} (:id nil) (:text |) (:done? false)
        |store $ quote
          def store $ {}
            :tasks $ []
            :states $ {}
            :cursor $ []
    |respo.util.dom $ {}
      :ns $ quote
        ns respo.util.dom $ :require
          respo.util.list :refer $ val-of-first
      :defs $ {}
        |text-width $ quote
          defn text-width (content font-size font-family)
            if (some? shared-canvas-context)
              do
                set! (.-font shared-canvas-context) (str font-size "|px " font-family)
                .-width $ .!measureText shared-canvas-context content
              , nil
        |compare-to-dom! $ quote
          defn compare-to-dom! (vdom element)
            ; println "\"compare" (:name vdom)
              map :name $ vals (:children vdom)
            ; js/console.log element
            let
                virtual-name $ turn-string (:name vdom)
                real-name $ .!toLowerCase (.-tagName element)
              when (not= virtual-name real-name)
                js/console.warn "\"SSR checking: tag names do not match:"
                  pr-str $ dissoc vdom :children
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
                    js/console.log "\"virtual:" $ -> vdom :children (map last) (map :name) pr-str
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
        |shared-canvas-context $ quote
          def shared-canvas-context $ if
            and (exists? js/window) (exists? js/document)
            .!getContext (js/document.createElement |canvas) |2d
            , nil
    |respo.app.core $ {}
      :ns $ quote
        ns respo.app.core $ :require
          respo.app.comp.container :refer $ comp-container
          respo.core :refer $ render! realize-ssr!
          respo.app.schema :as schema
          respo.app.updater :refer $ updater
      :defs $ {}
        |render-app! $ quote
          defn render-app! (mount-target)
            render! mount-target (comp-container @*store) dispatch!
        |*store $ quote (defatom *store schema/store)
        |dispatch! $ quote
          defn dispatch! (op op-data) (; println op op-data)
            let
                store $ updater @*store op op-data (generate-id!)
              reset! *store store
        |handle-ssr! $ quote
          defn handle-ssr! (mount-target)
            realize-ssr! mount-target (comp-container @*store) dispatch!
    |respo.render.patch $ {}
      :ns $ quote
        ns respo.render.patch $ :require
          respo.util.format :refer $ dashed->camel event->prop get-style-value
          respo.render.dom :refer $ make-element style->string
          respo.schema.op :as op
      :defs $ {}
        |replace-prop $ quote
          defn replace-prop (target op)
            let[] (p prop-value) op $ let
                prop-name $ dashed->camel (turn-string p)
              if (identical? prop-name |value)
                if
                  not= prop-value $ .-value target
                  aset target prop-name prop-value
                aset target prop-name prop-value
        |add-element $ quote
          defn add-element (target op listener-builder coord)
            let
                new-element $ make-element op listener-builder coord
              -> (.-parentElement target) (.!insertBefore new-element target)
        |run-effect $ quote
          defn run-effect (target method coord)
            if (some? target) (method target) (js/console.warn "\"Unknown effects target:" coord)
        |add-prop $ quote
          defn add-prop (target op)
            let-sugar
                  [] p prop-value
                  , op
                prop-name $ dashed->camel (turn-string p)
              case-default prop-name (aset target prop-name prop-value)
                |style $ aset target prop-name (style->string prop-value)
        |replace-element $ quote
          defn replace-element (target op listener-builder coord)
            let
                new-element $ make-element op listener-builder coord
              -> (.-parentElement target) (.!insertBefore new-element target)
              .!remove target
        |add-event $ quote
          defn add-event (target event-name listener-builder coord)
            &let
              event-prop $ event->prop event-name
              aset target event-prop $ fn (event)
                  listener-builder event-name
                  , event coord
                .!stopPropagation event
        |add-style $ quote
          defn add-style (target op)
            let-sugar
                  [] p v
                  , op
                style-name $ dashed->camel (turn-string p)
                style-value $ get-style-value v style-name
              -> (.-style target) (aset style-name style-value)
        |find-target $ quote
          defn find-target (root coord)
            if (empty? coord) root $ let
                index $ first coord
                child $ aget (.-children root) index
              if (some? child)
                recur child $ rest coord
                , nil
        |rm-event $ quote
          defn rm-event (target event-name)
            &let
              event-prop $ event->prop event-name
              aset target event-prop nil
        |rm-style $ quote
          defn rm-style (target op)
            &let
              style-name $ dashed->camel (turn-string op)
              -> (.-style target) (aset style-name nil)
        |replace-style $ quote
          defn replace-style (target op)
            let-sugar
                  [] p v
                  , op
                style-name $ dashed->camel (turn-string p)
              -> (.-style target)
                aset style-name $ get-style-value v (dashed->camel style-name)
        |rm-element $ quote
          defn rm-element (target op)
            if (some? target) (.!remove target) (js/console.warn "|Respo: Element already removed! Probably by :inner-text.")
        |apply-dom-changes $ quote
          defn apply-dom-changes (changes mount-point listener-builder)
            let
                root $ .-firstElementChild mount-point
              &doseq (op changes)
                assert "\"4 items" $ = 4 (count op)
                let-sugar
                      [] op-type coord n-coord op-data
                      , op
                    target $ find-target root n-coord
                  case-default op-type (println "|not implemented:" op-type n-coord op-data)
                    op/replace-prop $ replace-prop target op-data
                    op/add-prop $ add-prop target op-data
                    op/rm-prop $ rm-prop target op-data
                    op/add-style $ add-style target op-data
                    op/replace-style $ replace-style target op-data
                    op/rm-style $ rm-style target op-data
                    op/set-event $ add-event target op-data listener-builder coord
                    op/rm-event $ rm-event target op-data
                    op/add-element $ add-element target op-data listener-builder coord
                    op/rm-element $ rm-element target op-data
                    op/replace-element $ replace-element target op-data listener-builder coord
                    op/append-element $ append-element target op-data listener-builder coord
                    op/effect-mount $ run-effect target op-data n-coord
                    op/effect-unmount $ run-effect target op-data n-coord
                    op/effect-update $ run-effect target op-data n-coord
                    op/effect-before-update $ run-effect target op-data n-coord
        |append-element $ quote
          defn append-element (target op listener-builder coord)
            &let
              new-element $ make-element op listener-builder coord
              .!appendChild target new-element
        |rm-prop $ quote
          defn rm-prop (target op)
            let
                k $ dashed->camel (turn-string op)
              aset target k nil
    |respo.render.dom $ {}
      :ns $ quote
        ns respo.render.dom $ :require
          respo.util.format :refer $ dashed->camel event->prop get-style-value
          respo.util.detect :refer $ component?
      :defs $ {}
        |style->string $ quote
          defn style->string (styles)
            apply-args ("\"" styles)
              fn (acc xs)
                if (empty? xs) acc $ let
                    entry $ first xs
                    k $ first entry
                    style-name $ turn-string k
                    v $ get-style-value (last entry) style-name
                  recur (str acc style-name |: v |;) (rest xs)
        |make-element $ quote
          defn make-element (virtual-element listener-builder coord)
            assert "\"coord is required" $ some? coord
            if (component? virtual-element)
              make-element (&record:get virtual-element :tree) listener-builder $ conj coord (&record:get virtual-element :name)
              let
                  tag-name $ turn-string (&record:get virtual-element :name)
                  attrs $ &record:get virtual-element :attrs
                  style $ &record:get virtual-element :style
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
                &doseq (entry attrs)
                  let
                      k $ dashed->camel
                        turn-string $ first entry
                      v $ last entry
                    if (some? v) (aset element k v)
                &doseq (entry style)
                  let
                      style-name $ turn-string (first entry)
                      k $ dashed->camel style-name
                      v $ last entry
                    aset (.-style element) k $ get-style-value v k
                &doseq
                  entry $ &record:get virtual-element :event
                  let
                      event-name $ first entry
                      name-in-string $ event->prop event-name
                    aset element name-in-string $ fn (event)
                        listener-builder event-name
                        , event coord
                      .!stopPropagation event
                &doseq (child-element child-elements)
                  if (some? child-element) (.!appendChild element child-element)
                , element
    |respo.schema.op $ {}
      :ns $ quote (ns respo.schema.op)
      :defs $ {}
        |replace-prop $ quote (def replace-prop 11)
        |add-element $ quote (def add-element 0)
        |add-prop $ quote (def add-prop 10)
        |replace-element $ quote (def replace-element 1)
        |add-style $ quote (def add-style 20)
        |set-event $ quote (def set-event 30)
        |rm-event $ quote (def rm-event 32)
        |rm-style $ quote (def rm-style 22)
        |effect-mount $ quote (def effect-mount 41)
        |replace-style $ quote (def replace-style 21)
        |rm-element $ quote (def rm-element 2)
        |append-element $ quote (def append-element 3)
        |effect-unmount $ quote (def effect-unmount 44)
        |rm-prop $ quote (def rm-prop 12)
        |effect-update $ quote (def effect-update 43)
        |effect-before-update $ quote (def effect-before-update 42)
    |respo.test.comp.todolist $ {}
      :ns $ quote
        ns respo.test.comp.todolist $ :require
          respo.test.comp.task :refer $ comp-task
          respo.core :refer $ defcomp div list->
      :defs $ {}
        |comp-todolist $ quote
          defcomp comp-todolist (tasks)
            list->
              {} $ :style style-todolist
              ->
                either tasks $ []
                map $ fn (task)
                  [] (:id task) (comp-task task)
        |style-todolist $ quote
          def style-todolist $ {} (:color :blue) (:font-family "|\"微软雅黑\", Verdana")
    |respo.controller.client $ {}
      :ns $ quote
        ns respo.controller.client $ :require
          respo.render.patch :refer $ apply-dom-changes
          respo.util.format :refer $ event->edn
          respo.render.dom :refer $ make-element
      :defs $ {}
        |build-listener $ quote
          defn build-listener (event-name deliver-event)
            fn (event coord)
              let
                  simple-event $ event->edn event
                deliver-event coord event-name simple-event
        |patch-instance! $ quote
          defn patch-instance! (changes mount-point deliver-event)
            let
                listener-builder $ fn (event-name) (build-listener event-name deliver-event)
              apply-dom-changes changes mount-point listener-builder
        |activate-instance! $ quote
          defn activate-instance! (entire-dom mount-point deliver-event)
            let
                listener-builder $ fn (event-name) (build-listener event-name deliver-event)
              set! (.-innerHTML mount-point) |
              .!appendChild mount-point $ make-element entire-dom listener-builder ([])
    |respo.app.comp.task $ {}
      :ns $ quote
        ns respo.app.comp.task $ :require
          respo.core :refer $ defcomp div input span button <> defeffect
          respo.util.format :refer $ hsl
          respo.comp.space :refer $ =<
          respo.comp.inspect :refer $ comp-inspect
          respo.app.style.widget :as widget
      :defs $ {}
        |comp-task $ quote
          defcomp comp-task (states task)
            let
                cursor $ :cursor states
                state $ either (:data states) |
              [] (effect-log task)
                div
                  {} $ :style style-task
                  comp-inspect |Task task $ {} (:left 200)
                  button $ {}
                    :style $ merge style-done
                      {} $ "\"background-color"
                        if (:done? task) (hsl 200 20 80) (hsl 200 80 70)
                    :on-click $ fn (e d!)
                      d! :toggle $ :id task
                  =< 8 nil
                  input $ {}
                    :value $ :text task
                    :style widget/input
                    :on-input $ fn (e d!)
                      let
                          task-id $ :id task
                          text $ :value e
                        d! :update $ {} (:id task-id) (:text text)
                  =< 8 nil
                  input $ {} (:value state) (:style widget/input)
                    :on-input $ fn (e d!)
                      d! cursor $ :value e
                  =< 8 nil
                  div
                    {} (:style widget/button)
                      :on-click $ fn (e d!)
                        d! :remove $ :id task
                    <> |Remove
                  =< 8 nil
                  div ({}) (<> state)
        |effect-log $ quote
          defeffect effect-log (task) (action parent at-place?) (; js/console.log "\"Task effect" action at-place?)
            case-default action nil
              :mount $ let
                  x0 $ js/Math.random
                ; println "\"Stored" x0
                , nil
              :update (; println "\"read") nil
              :unmount (; println "\"read") nil
        |style-done $ quote
          def style-done $ {} (:width 32) (:height 32) (:outline :none) (:border :none) (:vertical-align :middle)
        |style-task $ quote
          def style-task $ {} (:display :flex) (:padding "|4px 0px")
    |respo.app.comp.wrap $ {}
      :ns $ quote
        ns respo.app.comp.wrap $ :require
          respo.core :refer $ defcomp div
      :defs $ {}
        |comp-wrap $ quote
          defcomp comp-wrap (x)
            div ({}) x
    |respo.app.comp.zero $ {}
      :ns $ quote
        ns respo.app.comp.zero $ :require
          respo.core :refer $ defcomp div
      :defs $ {}
        |comp-zero $ quote
          defcomp comp-zero () $ div
            {} $ :inner-text 0
    |respo.app.comp.todolist $ {}
      :ns $ quote
        ns respo.app.comp.todolist $ :require
          respo.core :refer $ defcomp div span input <> list-> defeffect >>
          respo.util.format :refer $ hsl
          respo.app.comp.task :refer $ comp-task
          respo.comp.space :refer $ =<
          respo.comp.inspect :refer $ comp-inspect
          respo.app.comp.zero :refer $ comp-zero
          respo.app.comp.wrap :refer $ comp-wrap
          respo.util.dom :refer $ text-width
          respo.app.style.widget :as widget
          memof.alias :refer $ memof-call
      :defs $ {}
        |style-panel $ quote
          def style-panel $ {} (:display :flex) (:margin-bottom 4)
        |style-toolbar $ quote
          def style-toolbar $ {} (:display :flex) (:flex-direction :row) (:justify-content :start) (:padding "\"4px 0") (:white-space :nowrap)
        |comp-todolist $ quote
          defcomp comp-todolist (states tasks)
            let
                cursor $ either (:cursor states) ([])
                state $ either (:data states) initial-state
              [] (effect-focus)
                div
                  {} $ :style style-root
                  comp-inspect |States state $ {} (:left |80px)
                  div
                    {} $ :style style-panel
                    input $ {} (:placeholder "\"Text")
                      :value $ :draft state
                      :style $ merge widget/input
                        {} $ :width
                          &max 200 $ + 24
                            text-width (:draft state) 16 |BlinkMacSystemFont
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :draft (:value e)
                      :on-focus on-focus
                    =< 8 nil
                    span
                      {} (:style widget/button)
                        :on-click $ fn (e d!)
                          d! :add $ :draft state
                          d! cursor $ assoc state :draft |
                      span $ {} (:on-click nil) (:inner-text "\"Add")
                    =< 8 nil
                    span $ {} (:inner-text |Clear) (:style widget/button)
                      :on-click $ fn (e d!) (d! :clear nil)
                    =< 8 nil
                    div ({})
                      div
                        {} (:style widget/button) (:on-click on-test)
                        <> "|heavy tasks"
                  list->
                    {} (:class-name |task-list) (:style style-list)
                    -> tasks .to-list .reverse $ map
                      fn (task)
                        let
                            task-id $ :id task
                          [] task-id $ memof-call comp-task (>> states task-id) task
                  if
                    > (count tasks) 0
                    div
                      {} (:spell-check true) (:style style-toolbar)
                      div
                        {} (:style widget/button)
                          :on-click $ if
                            not $ :locked? state
                            fn (e d!) (d! :clear nil)
                        <> |Clear2
                      =< 8 nil
                      div
                        {} (:style widget/button)
                          :on-click $ fn (e d!)
                            d! cursor $ update state :locked? not
                        <> $ str |Lock? (:locked? state)
                      =< 8 nil
                      comp-wrap $ comp-zero
                  comp-inspect |Tasks tasks $ {} (:left 500) (:top 20)
        |try-test! $ quote
          defn try-test! (dispatch! acc)
            let
                started $ js/Date.now
              dispatch! :clear nil
              loop
                  x 20
                dispatch! :add |empty
                if (> x 0)
                  recur $ dec x
              loop
                  x 20
                dispatch! :hit-first $ js/Math.random
                if (> x 0)
                  recur $ dec x
              dispatch! :clear nil
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
        |initial-state $ quote
          def initial-state $ {} (:draft |) (:locked? false)
        |on-test $ quote
          defn on-test (e dispatch!) (println "|trigger test!")
            try-test! dispatch! $ []
        |on-focus $ quote
          defn on-focus (e dispatch!) (println "|Just focused~")
        |effect-focus $ quote
          defeffect effect-focus () (action parent at-place?) (js/console.log "\"todolist effect:" action)
        |number-order $ quote
          defn number-order (a b)
            if (&< a b) -1 $ if (&> a b) 1 0
        |style-list $ quote
          def style-list $ {} (:color :black)
            :background-color $ hsl 120 20 98
        |style-root $ quote
          def style-root $ {} (:color :black)
            :background-color $ hsl 120 20 98
            :line-height |24px
            "\"font-size" 16
            :padding 10
            :font-family "|\"微软雅黑\", Verdana"
    |respo.comp.space $ {}
      :ns $ quote
        ns respo.comp.space $ :require
          respo.core :refer $ div defcomp
      :defs $ {}
        |style-space $ quote
          def style-space $ {} (:height 1) (:width 1) (:display :inline-block)
        |comp-space $ quote
          defcomp comp-space (w h)
            div $ {}
              :style $ if (some? w) (assoc style-space :width w) (assoc style-space :height h)
        |=< $ quote
          defn =< (w x) (comp-space w x)
    |respo.render.effect $ {}
      :ns $ quote
        ns respo.render.effect $ :require (respo.schema.op :as op)
          respo.util.detect :refer $ component? element? =seq
          respo.util.list :refer $ val-of-first
      :defs $ {}
        |collect-mounting $ quote
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
                        collect! op/effect-mount next-coord n-coord $ fn (target)
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
        |collect-unmounting $ quote
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
                        collect! op/effect-unmount new-coord n-coord $ fn (target)
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
        |collect-updating $ quote
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
                      collect!
                        if (= :update action) op/effect-update op/effect-before-update
                        , next-coord n-coord $ fn (target)
                          method (:args new-effect) ([] action target)
    |respo.util.list $ {}
      :ns $ quote
        ns respo.util.list $ :require
          respo.util.detect :refer $ component? element?
      :defs $ {}
        |val-exists? $ quote
          defn val-exists? (pair)
            some? $ last pair
        |pick-attrs $ quote
          defn pick-attrs (props)
            if (nil? props) ([])
              -> props (dissoc :on) (dissoc :event) (dissoc :style) (.to-list)
                filter $ fn (pair)
                  let
                      k $ nth pair 0
                      v $ nth pair 1
                    not $ starts-with? (turn-string k) "\"on-"
                sort $ fn (x y)
                  &compare (first x) (first y)
        |pick-event $ quote
          defn pick-event (props)
            if (nil? props) ({})
              merge
                either (:on props) ({})
                -> props $ map-kv
                  fn (k v)
                    if
                      starts-with? (turn-string k) |on-
                      []
                        turn-keyword $ &str:slice (turn-string k) 3
                        , v
                      , nil
        |map-with-idx $ quote
          defn map-with-idx (xs f)
            assert (fn? f) "|expects function"
            assert (list? xs) "|expects list"
            map-indexed xs $ fn (idx x)
              [] idx $ f x
        |val-of-first $ quote
          defn val-of-first (x)
            last $ first x
    |respo.controller.resolve $ {}
      :ns $ quote
        ns respo.controller.resolve $ :require
          respo.util.detect :refer $ component? element?
      :defs $ {}
        |build-deliver-event $ quote
          defn build-deliver-event (*global-element *dispatch-fn)
            fn (coord event-name simple-event) (; echo "\"event coord" coord)
              let
                  target-element $ find-event-target @*global-element coord event-name
                  target-listener $ if (some? target-element)
                    get (:event target-element) event-name
                    do (js/console.warn "\"found no element" coord event-name) nil
                  dispatch-wrap $ fn (op data)
                    let
                        dispatch! $ deref *dispatch-fn
                      if (list? op)
                        dispatch! :states $ [] op data
                        dispatch! op data
                if (some? target-listener)
                  do (; println "|listener found:" coord event-name) (target-listener simple-event dispatch-wrap)
                  ; println "|found no listener:" coord event-name
        |find-event-target $ quote
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
              ; println "|target element:" $ pr-str event-name
              if
                and element-exists? $ some?
                  get (:event target-element) event-name
                , target-element $ if (empty? coord) nil
                  if element-exists?
                    recur element
                      slice coord 0 $ - (count coord) 1
                      , event-name
                    , nil
        |get-markup-at $ quote
          defn get-markup-at (markup coord)
            ; println |markup: $ pr-str coord
            if (empty? coord) markup $ if (component? markup)
              recur (:tree markup) (rest coord)
              let
                  coord-head $ first coord
                  child-pair $ find (:children markup)
                    fn (child-entry)
                      = (get child-entry 0) coord-head
                if (some? child-pair)
                  get-markup-at (get child-pair 1) (rest coord)
                  raise $ str "|child not found:" coord
                    map (:children markup) first
    |respo.util.detect $ {}
      :ns $ quote
        ns respo.util.detect $ :require (respo.schema :as schema)
      :defs $ {}
        |=seq $ quote
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
        |effect? $ quote
          defn effect? (x)
            and (record? x) (&record:matches? schema/Effect x)
        |element? $ quote
          defn element? (x)
            if (record? x) (&record:matches? schema/Element x) false
        |component? $ quote
          defn component? (x)
            if (record? x) (&record:matches? schema/Component x) false
    |respo.util.format $ {}
      :ns $ quote
        ns respo.util.format $ :require
          respo.util.detect :refer $ component? element?
      :defs $ {}
        |event->string $ quote
          defn event->string (x)
            &str:slice (turn-string x) 3
        |text->html $ quote
          defn text->html (x)
            if (some? x)
              -> (str x) (.replace |> |&gt;) (.replace |< |&lt;)
              , nil
        |hsl $ quote
          defn hsl (h s l ? arg)
            let
                a $ either arg 1
              str "\"hsl(" h "\"," s "\"%," l "\"%," a "\")"
        |event->edn $ quote
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
        |purify-events $ quote
          defn purify-events (events)
            reduce events ([])
              fn (acc pair)
                if
                  some? $ last pair
                  conj acc $ first pair
                  , acc
        |event->prop $ quote
          defn event->prop (x)
            str |on $ turn-string x
        |mute-element $ quote
          defn mute-element (element)
            if (component? element) (update element :tree mute-element)
              -> element
                assoc :event $ {}
                update :children $ fn (children)
                  -> children $ map
                    fn (entry)
                      [] (first entry)
                        mute-element $ last entry
        |prop->attr $ quote
          defn prop->attr (x)
            when (includes? x "\"?") (println "\"[Respo] warning: property includes `?` in" x)
            case-default x x (|class-name |class) (|tab-index |tabindex) (|read-only |readonly)
        |get-style-value $ quote
          defn get-style-value (x prop)
            cond
                string? x
                , x
              (keyword? x) (turn-string x)
              (number? x)
                if (.!test pattern-non-dimension-props prop) (str x) (str x "\"px")
              true $ str x
        |dashed->camel $ quote
          defn dashed->camel (x)
            .!replace x dashed-letter-pattern $ fn (cc pos prop)
              .!toUpperCase $ aget cc 1
        |purify-element $ quote
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
        |pattern-non-dimension-props $ quote
          def pattern-non-dimension-props $ new js/RegExp "\"acit|ex(?:s|g|n|p|$)|rph|grid|ows|mnc|ntw|ine[ch]|zoo|^ord|itera" "\"i"
        |map-keyboard-event $ quote
          defn map-keyboard-event (event)
            {}
              :key $ .-key event
              :code $ .-code event
              :ctrl? $ .-ctrlKey event
              :meta? $ .-metaKey event
              :alt? $ .-altKey event
              :shift? $ .-shiftKey event
        |dashed-letter-pattern $ quote
          def dashed-letter-pattern $ new js/RegExp "\"-[a-z]" "\"g"
    |respo.render.diff $ {}
      :ns $ quote
        ns respo.render.diff $ :require
          respo.util.format :refer $ purify-element
          respo.util.detect :refer $ component? element?
          respo.schema.op :as op
          respo.render.effect :refer $ collect-mounting collect-updating collect-unmounting
          respo.util.list :refer $ val-of-first
      :defs $ {}
        |find-children-diffs $ quote
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
                    collect! op/append-element new-coord n-coord element
                    collect-mounting collect! coord (conj n-coord index) element true
                    recur collect! coord n-coord (inc index) ([]) (rest new-children)
                (and (not was-empty?) now-empty?)
                  let
                      pair $ first old-children
                      k $ first pair
                      new-coord $ conj coord k
                      new-n-coord $ conj n-coord index
                    collect-unmounting collect! coord new-n-coord (last pair) true
                    collect! op/rm-element new-coord new-n-coord nil
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
                      = x1 y1
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
                        collect! op/add-element new-coord new-n-coord element
                        collect-mounting collect! coord new-n-coord (val-of-first new-children) true
                        recur collect! coord n-coord (inc index) old-children new-follows
                    (and (not x1-remains?) y1-existed?)
                      let
                          pair $ first old-children
                          k $ first pair
                          new-coord $ conj coord k
                          new-n-coord $ conj n-coord index
                        collect-unmounting collect! coord new-n-coord (last pair) true
                        collect! op/rm-element new-coord new-n-coord nil
                        recur collect! coord n-coord index old-follows new-children
                    true $ let
                        xi $ index-of new-keys x1
                        yi $ index-of old-keys y1
                        first-old-entry $ first old-children
                        first-new-entry $ first new-children
                        new-n-coord $ conj n-coord index
                      ; println |index: xi yi
                      if (<= xi yi)
                        let
                            new-element $ val-of-first new-children
                            new-coord $ conj coord y1
                          collect! op/add-element new-coord new-n-coord new-element
                          collect-mounting collect! coord new-n-coord new-element true
                          recur collect! coord n-coord (inc index) old-children new-follows
                        do
                          collect-unmounting collect! coord new-n-coord (val-of-first old-children) true
                          collect! op/rm-element (conj coord x1) new-n-coord nil
                          recur collect! coord n-coord index old-follows new-children
        |find-style-diffs $ quote
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
                    collect! op/add-style c-coord coord entry
                    recur collect! c-coord coord old-style follows
                (and (not was-empty?) now-empty?)
                  let
                      entry $ first old-style
                      follows $ rest old-style
                    collect! op/rm-style c-coord coord $ first entry
                    recur collect! c-coord coord follows new-style
                true $ let
                    old-entry $ first old-style
                    new-entry $ first new-style
                    old-follows $ rest old-style
                    new-follows $ rest new-style
                  case-default
                    &compare (first old-entry) (first new-entry)
                    println "\"[Respo] unknown compare result for style keys"
                    -1 $ do
                      collect! op/rm-style c-coord coord $ first old-entry
                      recur collect! c-coord coord old-follows new-style
                    1 $ do (collect! op/add-style c-coord coord new-entry) (recur collect! c-coord coord old-style new-follows)
                    0 $ do
                      if
                        not $ identical? (last old-entry) (last new-entry)
                        collect! op/replace-style c-coord coord new-entry
                      recur collect! c-coord coord old-follows new-follows
        |find-element-diffs $ quote
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
                  do (collect! op/replace-element coord n-coord new-tree) nil
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
                          &doseq (event-name added-events) (collect! op/set-event coord n-coord event-name)
                          &doseq (event-name removed-events) (collect! op/rm-event coord n-coord event-name)
                    let
                        old-children $ &record:get old-tree :children
                        new-children $ &record:get new-tree :children
                      find-children-diffs collect! coord n-coord 0 old-children new-children
              true $ js/console.warn "\"Diffing unknown params" old-tree new-tree
        |find-props-diffs $ quote
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
                    collect! op/add-prop coord n-coord $ first new-props
                    recur collect! coord n-coord old-props $ rest new-props
                (and (not was-empty?) now-empty?)
                  do
                    collect! op/rm-prop coord n-coord $ first (first old-props)
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
                  case-default (&compare old-k new-k) (println "\"[Respo] unknown result")
                    -1 $ do (collect! op/rm-prop coord n-coord old-k) (recur collect! coord n-coord old-follows new-props)
                    1 $ do (collect! op/add-prop coord n-coord new-pair) (recur collect! coord n-coord old-props new-follows)
                    0 $ do
                      if (not= old-v new-v) (collect! op/replace-prop coord n-coord new-pair)
                      recur collect! coord n-coord old-follows new-follows
    |respo.render.html $ {}
      :ns $ quote
        ns respo.render.html $ :require
          respo.util.format :refer $ prop->attr purify-element mute-element text->html get-style-value dashed->camel
          respo.util.detect :refer $ component? element?
      :defs $ {}
        |element->string $ quote
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
                props-in-string $ props->string tailored-props
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
        |style->string $ quote
          defn style->string (styles)
            -> styles
              map $ fn (entry)
                let
                    k $ first entry
                    style-name $ turn-string k
                    v $ get-style-value (last entry) (dashed->camel style-name)
                  str style-name |: (escape-html v) |;
              join-str |
        |entry->string $ quote
          defn entry->string (entry)
            let
                k $ first entry
                v $ last entry
              str
                prop->attr $ turn-string k
                , |= $ .escape
                  cond
                      = k :style
                      style->string v
                    (bool? v) (str v)
                    (number? v) (str v)
                    (keyword? v) (turn-string v)
                    (string? v) (escape-html v)
                    true $ str v
        |props->string $ quote
          defn props->string (props)
            -> props (.to-list)
              filter $ fn (pair)
                let
                    k $ first pair
                    v $ last pair
                  and (some? v)
                    not $ starts-with? (turn-string k) |on-
              map entry->string
              join-str "| "
        |make-string $ quote
          defn make-string (element)
            element->string $ purify-element (mute-element element)
        |escape-html $ quote
          defn escape-html (text)
            if (nil? text) "\"" $ -> text (.replace "|\"" |&quot;) (.replace |< |&lt;) (.replace |> |&gt;) (.replace &newline "\"&#13;&#10;")
        |self-closing $ quote
          def self-closing $ #{} "\"area" "\"base" "\"br" "\"col" "\"embed" "\"hr" "\"img" "\"input" "\"link" "\"meta" "\"param" "\"source" "\"track" "\"wbr"
    |respo.core $ {}
      :ns $ quote
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
          memof.alias :refer $ tick-calling-loop! reset-calling-caches!
      :defs $ {}
        |defcomp $ quote
          defmacro defcomp (comp-name params & body)
            assert "\"expected symbol of comp-name" $ symbol? comp-name
            assert "\"expected list for params" $ list? params
            assert "\"some component retured" $ &> (count body) 0
            quasiquote $ defn ~comp-name (~ params)
              extract-effects-list $ %{} schema/Component
                :effects $ []
                :name $ ~ (turn-keyword comp-name)
                :tree $ do (~@ body)
        |div $ quote
          defn div (props & children) (create-element :div props & children)
        |img $ quote
          defn img (props & children) (create-element :img props & children)
        |pre $ quote
          defn pre (props & children) (create-element :pre props & children)
        |body $ quote
          defn body (props & children) (create-element :body props & children)
        |code $ quote
          defn code (props & children) (create-element :code props & children)
        |head $ quote
          defn head (props & children) (create-element :head props & children)
        |html $ quote
          defn html (props & children)
            create-element :html props & $ map children confirm-child
        |link $ quote
          defn link (props & children) (create-element :link props & children)
        |span $ quote
          defn span (props & children) (create-element :span props & children)
        |create-element $ quote
          defn create-element (tag-name props & children)
            ; assert
              str "|For rendering lists, please use list-> , got: " $ pr-str children
              and
                > (count children) 0
                not $ any? list? children
            let
                attrs $ pick-attrs props
                styles $ ->
                  either (:style props) ({})
                  .to-list
                  sort $ fn (x y)
                    &compare (first x) (first y)
                event $ pick-event props
                children-nodes $ -> children
                  map-indexed $ fn (idx item) (confirm-child item) ([] idx item)
                  filter val-exists?
              %{} schema/Element (:name tag-name) (:coord nil) (:attrs attrs) (:style styles) (:event event) (:children children-nodes)
        |defeffect $ quote
          defmacro defeffect (effect-name args params & body)
            assert "\"args in symbol" $ and (list? args) (every? args symbol?)
            assert "\"params like [action el at-place?]" $ and (list? params) (every? params symbol?)
            let
                args-var $ gensym "\"args"
                params-var $ gensym "\"params"
              quasiquote $ defn ~effect-name ~args
                %{} schema/Effect
                  :name $ ~ (turn-keyword effect-name)
                  :coord $ []
                  :args $ [] ~@args
                  :method $ fn (~args-var ~params-var)
                    let[] ~args ~args-var $ let[] ~params ~params-var
                      ~@ $ if (empty? body)
                        quasiquote $ echo "\"WARNING:" ~effect-name "\"lack code for handling effects!" 
                        , body
        |textarea $ quote
          defn textarea (props & children)
            create-element :textarea props & $ map children confirm-child
        |mount-app! $ quote
          defn mount-app! (target element *dispatch-fn)
            ; assert "|1st argument should be an element" $ or (nil? target) (instance? element-type target)
            ; assert "|2nd argument should be a component" $ component? element
            let
                deliver-event $ build-deliver-event *global-element *dispatch-fn
                *changes $ do
                  reset! *dom-changes $ []
                  , *dom-changes
                collect! $ fn (op coord n-coord v)
                  swap! *changes conj $ [] op coord n-coord v
              ; println "|mount app"
              activate-instance! element target deliver-event
              collect-mounting collect! ([]) ([]) element true
              patch-instance! @*changes target deliver-event
              reset! *global-element element
        |blockquote $ quote
          defn blockquote (props & children) (create-element :blockquote props & children)
        |defplugin $ quote
          defmacro defplugin (x params & body)
            assert "\"expected symbol" $ symbol? x
            assert "\"expected params" $ list? params
            assert "\"expected some result" $ > (count body) 0
            quasiquote $ defn ~x ~params ~@body
        |*rerender-changes $ quote
          defatom *rerender-changes $ []
        |input $ quote
          defn input (props & children) (create-element :input props & children)
        |style $ quote
          defn style (props & children) (create-element :style props & children)
        |title $ quote
          defn title (props & children) (create-element :title props & children)
        |confirm-child $ quote
          defn confirm-child (x)
            assert "\"Invalid data in elements tree: " $ or (nil? x) (element? x) (component? x)
            , x
        |*dispatch-fn $ quote (defatom *dispatch-fn nil)
        |<> $ quote
          defn <> (content ? arg)
            let
                style arg
              span $ {} (:inner-text content) (:style style)
        |>> $ quote
          defn >> (states k)
            let
                parent-cursor $ either (:cursor states) ([])
                branch $ either (get states k) ({})
              assoc branch :cursor $ conj parent-cursor k
        |h1 $ quote
          defn h1 (props & children) (create-element :h1 props & children)
        |h2 $ quote
          defn h2 (props & children) (create-element :h2 props & children)
        |h3 $ quote
          defn h3 (props & children) (create-element :h3 props & children)
        |h4 $ quote
          defn h4 (props & children) (create-element :h4 props & children)
        |li $ quote
          defn li (props & children) (create-element :li props & children)
        |create-list-element $ quote
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
        |rerender-app! $ quote
          defn rerender-app! (target element *dispatch-fn) (tick-calling-loop!)
            let
                deliver-event $ build-deliver-event *global-element *dispatch-fn
                *changes $ do
                  reset! *rerender-changes $ []
                  , *rerender-changes
                collect! $ fn (op coord n-coord v)
                  swap! *changes conj $ [] op coord n-coord v
              ; println @*global-element
              find-element-diffs collect! ([]) ([]) @*global-element element
              if-let (logger @*changes-logger) (logger @*global-element element @*changes)
              ; js/console.log |Changes: @*changes
              patch-instance! @*changes target deliver-event
              reset! *global-element element
        |clear-cache! $ quote
          defn clear-cache! () $ reset-calling-caches!
        |*changes-logger $ quote (defatom *changes-logger nil)
        |extract-effects-list $ quote
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
        |realize-ssr! $ quote
          defn realize-ssr! (target element dispatch!)
            assert (instance? element-type target) "|1st argument should be an element"
            assert (component? element) "|2nd argument should be a component"
            let
                app-element $ .-firstElementChild target
                *changes $ do
                  reset! *rerender-changes $ []
                  , *rerender-changes
                collect! $ fn (op coord n-coord v)
                  swap! *changes conj $ [] op coord n-coord v
                deliver-event $ build-deliver-event *global-element dispatch!
              if (nil? app-element) (raise "\"Detected no element from SSR!")
              compare-to-dom! (purify-element element) app-element
              collect-mounting collect! ([]) ([]) element true
              patch-instance! @*changes target deliver-event
              reset! *global-element $ mute-element element
        |*global-element $ quote (defatom *global-element nil)
        |element-type $ quote
          def element-type $ if (exists? js/Element) js/Element js/Error
        |button $ quote
          defn button (props & children)
            create-element :button props & $ map children confirm-child
        |confirm-child-pair $ quote
          defn confirm-child-pair (pair)
            assert "\"expected pair" $ and (list? pair)
              &= 2 $ count pair
            &let
              x $ nth pair 1
              assert "\"Invalid data in elements tree: " $ or (nil? x) (element? x) (component? x)
            , pair
        |*dom-changes $ quote
          defatom *dom-changes $ []
        |list-> $ quote
          defn list-> (props children) (create-list-element :div props children)
        |option $ quote
          defn option (props & children) (create-element :option props & children)
        |script $ quote
          defn script (props & children) (create-element :script props & children)
        |select $ quote
          defn select (props & children) (create-element :select props & children)
        |a $ quote
          defn a (props & children) (create-element :a props & children)
        |render! $ quote
          defn render! (target markup dispatch!) (reset! *dispatch-fn dispatch!)
            if (some? @*global-element) (rerender-app! target markup *dispatch-fn) (mount-app! target markup *dispatch-fn)
    |respo.main $ {}
      :ns $ quote
        ns respo.main $ :require
          respo.core :refer $ *changes-logger clear-cache!
          respo.app.core :refer $ render-app! *store
          respo.app.core :refer $ handle-ssr!
      :defs $ {}
        |mount-target $ quote
          def mount-target $ if (exists? js/document) (.querySelector js/document |.app) nil
        |save-store! $ quote
          defn save-store! () $ js/window.localStorage.setItem |respo.calcit
            format-cirru-edn $ :tasks @*store
        |main! $ quote
          defn main! () (; handle-ssr! mount-target) (load-console-formatter!)
            if-let
              raw $ js/window.localStorage.getItem |respo.calcit
              swap! *store assoc :tasks $ parse-cirru-edn raw
            render-app! mount-target
            add-watch *store :rerender $ fn (store prev) (render-app! mount-target)
            ; reset! *changes-logger $ fn (old-tree new-tree changes)
              js/console.log $ to-js-data changes
            println |Loaded. $ js/performance.now
            aset js/window |onbeforeunload $ fn (event) (save-store!)
        |reload! $ quote
          defn reload! () (remove-watch *store :rerender) (clear-cache!) (render-app! mount-target)
            add-watch *store :rerender $ fn (store prev) (render-app! mount-target)
            js/console.log "|code updated."
    |respo.app.style.widget $ {}
      :ns $ quote
        ns respo.app.style.widget $ :require
          respo.util.format :refer $ hsl
      :defs $ {}
        |input $ quote
          def input $ {} (:font-size |16px) (:line-height |24px) (:padding "|0px 8px") (:outline :none) (:min-width |300px)
            :background-color $ hsl 0 0 94
            :border :none
        |button $ quote
          def button $ {} (:display :inline-block) (:padding "\"0 6px 0 6px") (:font-family |Avenir,Verdana) (:cursor :pointer)
            :background-color $ hsl 0 80 70
            :color $ hsl 0 0 100
            :height 28
            :line-height "\"28px"
    |respo.comp.inspect $ {}
      :ns $ quote
        ns respo.comp.inspect $ :require
          respo.core :refer $ defcomp pre <>
      :defs $ {}
        |comp-inspect $ quote
          defcomp comp-inspect (tip data style)
            pre $ {}
              :inner-text $ str tip "|: " (grab-info data)
              :style $ merge style-data style
              :on-click $ fn (e d!)
                if (some? js/window.devtoolsFormatters) (js/console.log data)
                  js/console.log $ to-js-data data
        |grab-info $ quote
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
              (keyword? data) (str data)
              (bool? data) (str data)
              (fn? data) |Fn
              true $ pr-str data
        |style-data $ quote
          def style-data $ {} (:position :absolute) (:background-color "\"hsl(240,100%,0%)") (:color :white) (:opacity 0.2) (:font-size |12px) (:font-family |Avenir,Verdana) (:line-height "\"1.4em") (:padding "|2px 6px") (:border-radius |4px) (:max-width 160) (:max-height 32) (:white-space :normal) (:overflow :ellipsis) (:cursor :default)
    |respo.app.updater $ {}
      :ns $ quote
        ns respo.app.updater $ :require
          respo.cursor :refer $ update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op-type op-data op-id) (; println store op-type op-data)
            case-default op-type
              do (println "\"Unknown op" op-type) store
              :states $ update-states store op-data
              :add $ update store :tasks
                fn (tasks)
                  conj tasks $ {} (:text op-data) (:id op-id) (:done? false)
              :remove $ update store :tasks
                fn (tasks)
                  -> tasks $ filter
                    fn (task)
                      not $ = (:id task) op-data
              :clear $ assoc store :tasks ([])
              :update $ update store :tasks
                fn (tasks)
                  let
                      task-id $ :id op-data
                      text $ :text op-data
                    -> tasks $ map
                      fn (task)
                        if
                          = (:id task) task-id
                          assoc task :text text
                          , task
              :hit-first $ -> store
                update-in ([] :tasks 0)
                  fn (task) (assoc task :text op-data)
              :toggle $ update store :tasks
                fn (tasks)
                  let
                      task-id op-data
                    -> tasks $ map
                      fn (task)
                        if
                          = (:id task) task-id
                          update task :done? not
                          , task
    |respo.cursor $ {}
      :ns $ quote (ns respo.cursor)
      :defs $ {}
        |update-states $ quote
          defn update-states (store pair)
            let
                cursor $ get pair 0
                new-state $ get pair 1
              assoc-in store
                concat ([] :states) cursor $ [] :data
                , new-state
    |respo.test.comp.task $ {}
      :ns $ quote
        ns respo.test.comp.task $ :require
          respo.util.format :refer $ hsl
          respo.core :refer $ defcomp div span
      :defs $ {}
        |comp-task $ quote
          defcomp comp-task (task)
            div ({})
              span $ {}
                :inner-text $ :text task
    |respo.test.html $ {}
      :ns $ quote
        ns respo.test.html $ :require
          calcit-test.core :refer $ deftest is testing
          respo.core :refer $ html head title script div link textarea body
          respo.render.html :refer $ make-string
      :defs $ {}
        |run-tests $ quote
          defn run-tests () (html-quote-test) (nil-prop-test) (simple-html-test) (textarea-test)
        |html-test $ quote
          deftest html-test $ let
              todo-demo $ comp-todolist todolist-store
            testing "|test generated HTML from component" $ is
              = (slurp |test/examples/demo.html) (make-string todo-demo)
        |textarea-test $ quote
          deftest textarea-test $ let
              piece $ textarea
                {} $ :value "|a\nb\nc\n\"\nd"
            testing "|test generated HTML from component" $ is
              = "|<textarea value=\"a&#13;&#10;b&#13;&#10;c&#13;&#10;&quot;&#13;&#10;d\">a&#13;&#10;b&#13;&#10;c&#13;&#10;&quot;&#13;&#10;d</textarea>" $ make-string piece
        |todolist-store $ quote
          def todolist-store $ []
            {} (:id 101) (:text |101)
            {} (:id 102) (:text |102)
        |html-quote-test $ quote
          deftest html-quote-test $ let
              tree-demo $ div
                {} (:value "|a\"b\"c") (:x |y)
                  :style $ {} (:content "|d\"e\"f")
            testing "|HTML contains quotes" $ is
              = (slurp |test/examples/quote.html) (make-string tree-demo)
        |simple-html-test $ quote
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
        |slurp $ quote
          defmacro slurp (file-path) (read-file file-path)
        |nil-prop-test $ quote
          deftest nil-prop-test $ let
              piece $ script
                {} (:src "\"a.js") (:defer nil)
            testing "|test generate script with nil" $ is
              = "|<script src=\"a.js\"></script>" $ make-string piece
    |respo.test.main $ {}
      :ns $ quote
        ns respo.test.main $ :require (respo.test.html :as html)
          calcit-test.core :refer $ deftest testing is
          respo.util.list :refer $ pick-attrs pick-event
      :defs $ {}
        |test-pick-attrs $ quote
          deftest test-pick-attrs $ is
            =
              pick-attrs $ {} (:value |string)
                :on-click $ fn () nil
              [] $ [] :value |string
        |test-pick-event $ quote
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
        |main! $ quote
          defn main! () (html/run-tests) (test-pick-attrs) (test-pick-event)
        |reload! $ quote
          defn reload! () $ println "\"reload."
