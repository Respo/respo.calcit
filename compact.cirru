
{} (:package |respo)
  :configs $ {} (:init-fn |respo.main/main!) (:reload-fn |respo.main/reload!)
    :modules $ [] |memof/compact.cirru |lilac/compact.cirru |calcit-test/compact.cirru
    :version |0.14.18
  :files $ {}
    |respo.app.style.widget $ {}
      :ns $ quote
        ns respo.app.style.widget $ :require
          [] respo.util.format :refer $ [] hsl
      :defs $ {}
        |button $ quote
          def button $ {} (:display :inline-block) (:padding "\"0 6px 0 6px") (:font-family |Avenir,Verdana) (:cursor :pointer)
            :background-color $ hsl 0 80 70
            :color $ hsl 0 0 100
            :height 28
            :line-height "\"28px"
        |input $ quote
          def input $ {} (:font-size |16px) (:line-height |24px) (:padding "|0px 8px") (:outline :none) (:min-width |300px)
            :background-color $ hsl 0 0 94
            :border :none
      :proc $ quote ()
    |respo.app.comp.wrap $ {}
      :ns $ quote
        ns respo.app.comp.wrap $ :require
          [] respo.core :refer $ [] defcomp div
      :defs $ {}
        |comp-wrap $ quote
          defcomp comp-wrap (x)
            div ({}) x
      :proc $ quote ()
    |respo.app.comp.container $ {}
      :ns $ quote
        ns respo.app.comp.container $ :require
          [] respo.core :refer $ [] defcomp div span <> >> a
          [] respo.app.comp.todolist :refer $ [] comp-todolist
          [] respo.comp.space :refer $ [] =<
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
      :proc $ quote ()
    |respo.render.html $ {}
      :ns $ quote
        ns respo.render.html $ :require
          [] respo.util.format :refer $ [] prop->attr purify-element mute-element ensure-string text->html get-style-value dashed->camel
          [] respo.util.detect :refer $ [] component? element?
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
                tailored-props $ -> attrs (dissoc :innerHTML) (dissoc :inner-text)
                    fn (props)
                      if (empty? styles) props $ assoc props :style styles
                props-in-string $ props->string tailored-props
                children $ ->> (:children element)
                  map $ fn (entry)
                    let
                        child $ last entry
                      element->string child
              str |< tag-name
                if
                  > (count props-in-string) 0
                  , "| " |
                , props-in-string |>
                  either text-inside $ join-str | children
                  , |</ tag-name |>
        |entry->string $ quote
          defn entry->string (entry)
            let
                k $ first entry
                v $ last entry
              str
                prop->attr $ turn-string k
                , |= $ escape
                  cond
                      = k :style
                      style->string v
                    (bool? v) (str v)
                    (number? v) (str v)
                    (keyword? v) (turn-string v)
                    (string? v) (escape-html v)
                    true $ str v
        |escape-html $ quote
          defn escape-html (text)
            if (nil? text) "\"" $ -> text (replace "|\"" |&quot;) (replace |< |&lt;) (replace |> |&gt;) (replace &newline "\"&#13;&#10;")
        |make-string $ quote
          defn make-string (element)
            element->string $ purify-element (mute-element element)
        |props->string $ quote
          defn props->string (props)
            ->> props (to-pairs)
              filter $ fn (pair)
                let
                    k $ first pair
                    v $ last pair
                  and (some? v)
                    not $ re-matches |^:on-.+ (str k)
              map entry->string
              join-str "| "
        |style->string $ quote
          defn style->string (styles)
            ->> styles
              map $ fn (entry)
                let
                    k $ first entry
                    style-name $ turn-string k
                    v $ get-style-value (last entry) (dashed->camel style-name)
                  str style-name |: (escape-html v) |;
              join-str |
      :proc $ quote ()
    |respo.main $ {}
      :ns $ quote
        ns respo.main $ :require
          [] respo.core :refer $ [] *changes-logger clear-cache!
          [] respo.app.core :refer $ [] render-app! *store
          [] respo.app.core :refer $ [] handle-ssr!
      :defs $ {}
        |main! $ quote
          defn main! () (; handle-ssr! mount-target) (load-console-formatter!)
            let
                raw $ .getItem js/window.localStorage |respo.calcit
              if (some? raw)
                swap! *store assoc :tasks $ extract-cirru-edn (js/JSON.parse raw)
              render-app! mount-target
              add-watch *store :rerender $ fn (store prev) (render-app! mount-target)
              ; reset! *changes-logger $ fn (old-tree new-tree changes)
                js/console.log $ to-js-data changes
              println |Loaded. $ .now js/performance
            aset js/window |onbeforeunload $ fn (event) (save-store!)
        |mount-target $ quote
          def mount-target $ if (exists? js/document) (.querySelector js/document |.app) nil
        |reload! $ quote
          defn reload! () (remove-watch *store :rerender) (clear-cache!) (render-app! mount-target)
            add-watch *store :rerender $ fn (store prev) (render-app! mount-target)
            .log js/console "|code updated."
        |save-store! $ quote
          defn save-store! () $ .setItem js/window.localStorage |respo.calcit
            js/JSON.stringify $ to-cirru-edn (:tasks @*store)
      :proc $ quote ()
    |respo.util.format $ {}
      :ns $ quote
        ns respo.util.format $ :require
          [] respo.util.detect :refer $ [] component? element?
      :defs $ {}
        |prop->attr $ quote
          defn prop->attr (x)
            when (includes? x "\"?") (println "\"[Respo] warning: property includes `?` in" x)
            case x (|class-name |class) (|tab-index |tabindex) (|read-only |readonly) (x x)
        |event->prop $ quote
          defn event->prop (x)
            str |on $ turn-string x
        |ensure-string $ quote
          defn ensure-string (x)
            cond
                string? x
                , x
              (keyword? x) (turn-string x)
              true $ str x
        |event->string $ quote
          defn event->string (x)
            substr (turn-string x) 3
        |dashed->camel $ quote
          defn dashed->camel (x) (dashed->camel-iter | x false)
        |purify-events $ quote
          defn purify-events (events)
            ->> events (to-pairs)
              filter $ fn (pair)
                let
                    k $ first pair
                    v $ first pair
                  some? v
              map first
        |hsl $ quote
          defn hsl (h s l ? arg)
            let
                a $ either arg 1
              str "\"hsl(" h "\"," s "\"%," l "\"%," a "\")"
        |event->edn $ quote
          defn event->edn (event) (; .log js/console "\"simplify event:" event)
            ->
              case (.-type event)
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
                (.-type event)
                  {}
                    :type $ .-type event
                    :msg $ str "|Unhandled event: " (.-type event)
              assoc :original-event event
              assoc :event event
        |dashed->camel-iter $ quote
          defn dashed->camel-iter (acc piece promoted?)
            if (= piece |) acc $ let
                cursor $ get piece 0
                piece-followed $ substr piece 1
              if (= cursor |-) (recur acc piece-followed true)
                recur
                  str acc $ if promoted? (upper-case cursor) cursor
                  , piece-followed false
        |upper-case $ quote
          defn upper-case (x)
            if
              > (count x) 0
              let
                  code $ .charCodeAt x 0
                if
                  and (>= code 97) (<= code 122)
                  js/String.fromCharCode $ - code 32
                  , x
              , x
        |get-style-value $ quote
          defn get-style-value (x prop)
            cond
                string? x
                , x
              (keyword? x) (turn-string x)
              (number? x)
                if (.test pattern-non-dimension-props prop) (str x) (str x "\"px")
              true $ str x
        |mute-element $ quote
          defn mute-element (element)
            if (component? element) (update element :tree mute-element)
              -> element
                update :event $ fn (events) ({})
                update :children $ fn (children)
                  ->> children $ map
                    fn (entry)
                      [] (first entry)
                        mute-element $ last entry
        |map-keyboard-event $ quote
          defn map-keyboard-event (event)
            {}
              :key $ .-key event
              :code $ .-code event
              :ctrl? $ .-ctrlKey event
              :meta? $ .-metaKey event
              :alt? $ .-altKey event
              :shift? $ .-shiftKey event
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
                    ->> children $ map
                      fn (pair)
                        let
                            k $ first pair
                            child $ last pair
                          [] k $ purify-element child
              true $ do (js/console.warn "\"Unknown markup during purify:" markup) nil
        |pattern-non-dimension-props $ quote
          def pattern-non-dimension-props $ new js/RegExp "\"acit|ex(?:s|g|n|p|$)|rph|grid|ows|mnc|ntw|ine[ch]|zoo|^ord|itera" "\"i"
        |text->html $ quote
          defn text->html (x)
            if (some? x)
              -> (str x) (replace |> |&gt;) (replace |< |&lt;)
              , nil
      :proc $ quote ()
    |respo.app.updater $ {}
      :ns $ quote
        ns respo.app.updater $ :require
          [] respo.cursor :refer $ [] update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op-type op-data op-id) (; println store op-type op-data)
            case op-type
              :states $ update-states store op-data
              :add $ update store :tasks
                fn (tasks)
                  conj tasks $ {} (:text op-data) (:id op-id) (:done? false)
              :remove $ update store :tasks
                fn (tasks)
                  ->> tasks $ filter
                    fn (task)
                      not $ = (:id task) op-data
              :clear $ assoc store :tasks ([])
              :update $ update store :tasks
                fn (tasks)
                  let
                      task-id $ :id op-data
                      text $ :text op-data
                    ->> tasks $ map
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
                    ->> tasks $ map
                      fn (task)
                        if
                          = (:id task) task-id
                          update task :done? not
                          , task
              op-type store
      :proc $ quote ()
    |respo.render.dom $ {}
      :ns $ quote
        ns respo.render.dom $ :require
          [] respo.util.format :refer $ [] dashed->camel event->prop ensure-string get-style-value
          [] respo.util.detect :refer $ [] component?
      :defs $ {}
        |make-element $ quote
          defn make-element (virtual-element listener-builder coord)
            assert "\"coord is required" $ some? coord
            if (component? virtual-element)
              make-element (:tree virtual-element) listener-builder $ conj coord (:name virtual-element)
              let
                  tag-name $ turn-string (:name virtual-element)
                  attrs $ :attrs virtual-element
                  style $ :style virtual-element
                  children $ :children virtual-element
                  element $ .createElement js/document tag-name
                  child-elements $ ->> children
                    map $ fn (pair)
                      let[] (k child) pair $ when (some? child)
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
                    aset (aget element |style) k $ get-style-value v k
                &doseq
                  event-name $ keys (:event virtual-element)
                  let
                      name-in-string $ event->prop event-name
                    ; println |listener: event-name name-in-string
                    aset element name-in-string $ fn (event)
                        listener-builder event-name
                        , event coord
                      .stopPropagation event
                &doseq (child-element child-elements)
                  if (some? child-element) (.appendChild element child-element)
                , element
        |style->string $ quote
          defn style->string (styles)
            ->> styles
              map $ fn (entry)
                let
                    k $ first entry
                    style-name $ turn-string k
                    v $ get-style-value (last entry)
                  str style-name |: v |;
              join-str |
      :proc $ quote ()
    |respo.app.core $ {}
      :ns $ quote
        ns respo.app.core $ :require
          [] respo.app.comp.container :refer $ [] comp-container
          [] respo.core :refer $ [] render! realize-ssr!
          [] respo.app.schema :as schema
          [] respo.app.updater :refer $ [] updater
          [] respo.util.id :refer $ [] get-id!
      :defs $ {}
        |*store $ quote (defatom *store schema/store)
        |dispatch! $ quote
          defn dispatch! (op op-data) (; println op op-data)
            let
                store $ updater @*store op op-data (get-id!)
              reset! *store store
        |handle-ssr! $ quote
          defn handle-ssr! (mount-target)
            realize-ssr! mount-target (comp-container @*store) dispatch!
        |render-app! $ quote
          defn render-app! (mount-target)
            render! mount-target (comp-container @*store) dispatch!
      :proc $ quote ()
    |respo.test.comp.todolist $ {}
      :ns $ quote
        ns respo.test.comp.todolist $ :require
          [] respo.test.comp.task :refer $ [] comp-task
          [] respo.core :refer $ [] defcomp div list->
      :defs $ {}
        |comp-todolist $ quote
          defcomp comp-todolist (tasks)
            list->
              {} $ :style style-todolist
              ->>
                either tasks $ []
                map $ fn (task)
                  [] (:id task) (comp-task task)
        |style-todolist $ quote
          def style-todolist $ {} (:color :blue) (:font-family "|\"微软雅黑\", Verdana")
      :proc $ quote ()
    |respo.app.comp.zero $ {}
      :ns $ quote
        ns respo.app.comp.zero $ :require
          [] respo.core :refer $ [] defcomp div
      :defs $ {}
        |comp-zero $ quote
          defcomp comp-zero () $ div
            {} $ :inner-text 0
      :proc $ quote ()
    |respo.util.list $ {}
      :ns $ quote
        ns respo.util.list $ :require
          [] respo.util.detect :refer $ [] component? element?
          [] respo.util.comparator :refer $ [] compare-xy
      :defs $ {}
        |filter-first $ quote
          defn filter-first (f xs)
            first $ filter
              fn (x) (f x)
              either xs $ []
        |map-val $ quote
          defn map-val (f xs)
            assert (fn? f) "\"expects f to be a function"
            assert
              or (map? xs) (sequential? xs) (nil? xs)
              , "\"expects xs to be a collection"
            map
              fn
                  [] k v
                [] k $ f v
              , xs
        |map-with-idx $ quote
          defn map-with-idx (f xs)
            assert (fn? f) "|expects function"
            assert (list? xs) "|expects list"
            map-indexed
              fn (idx x)
                [] idx $ f x
              , xs
        |pick-attrs $ quote
          defn pick-attrs (props)
            if (nil? props) ([])
              ->>
                -> props (dissoc :on) (dissoc :event) (dissoc :style)
                to-pairs
                filter $ fn (pair)
                  let
                      k $ get pair 0
                      v $ get pair 1
                    not $ starts-with? (turn-string k) "\"on-"
                sort $ fn (x y)
                  compare-xy (first x) (first y)
        |pick-event $ quote
          defn pick-event (props)
            if (nil? props) ({})
              merge
                either (:on props) ({})
                ->> props (to-pairs)
                  filter $ fn (pair)
                    let
                        k $ get pair 0
                        v $ get pair 1
                      re-matches |on-\w+ $ turn-string k
                  map $ fn (pair)
                    let
                        k $ get pair 0
                        v $ get pair 1
                      []
                        turn-keyword $ substr (turn-string k) 3
                        , v
                  pairs-map
        |val-exists? $ quote
          defn val-exists? (pair)
            some? $ last pair
        |val-of-first $ quote
          defn val-of-first (x)
            last $ first x
        |detect-func-in-map? $ quote
          defn detect-func-in-map? (params)
            if
              or
                not $ map? params
                empty? params
              , false $ let
                  ps $ to-pairs params
                  p0 $ first ps
                if
                  fn? $ last p0
                  , true $ recur
                    pairs-map $ rest ps
      :proc $ quote ()
    |respo.app.schema $ {}
      :ns $ quote (ns respo.app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :tasks $ []
            :states $ {}
            :cursor $ []
        |task $ quote
          def task $ {} (:id nil) (:text |) (:done? false)
      :proc $ quote ()
    |respo.render.effect $ {}
      :ns $ quote
        ns respo.render.effect $ :require ([] respo.schema.op :as op)
          [] respo.util.detect :refer $ [] component? element? =seq
          [] respo.util.list :refer $ [] val-of-first
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
                        collect! $ [] op/effect-mount next-coord n-coord
                          fn (target)
                            method (:args effect) ([] :mount target at-place?)
                  recur collect! next-coord n-coord (:tree tree) false
              (element? tree)
                loop
                    children $ :children tree
                    idx 0
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
                        collect! $ [] op/effect-unmount new-coord n-coord
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
                      collect! $ []
                        if (= :update action) op/effect-update op/effect-before-update
                        , next-coord n-coord
                          fn (target)
                            method (:args new-effect) ([] action target)
      :proc $ quote ()
    |respo.controller.client $ {}
      :ns $ quote
        ns respo.controller.client $ :require
          [] respo.render.patch :refer $ [] apply-dom-changes
          [] respo.util.format :refer $ [] event->edn
          [] respo.render.dom :refer $ [] make-element
      :defs $ {}
        |activate-instance! $ quote
          defn activate-instance! (entire-dom mount-point deliver-event)
            let
                listener-builder $ fn (event-name) (build-listener event-name deliver-event)
              aset mount-point |innerHTML |
              .appendChild mount-point $ make-element entire-dom listener-builder ([])
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
      :proc $ quote ()
    |respo.util.id $ {}
      :ns $ quote (ns respo.util.id)
      :defs $ {}
        |*cached-id $ quote (defatom *cached-id 0)
        |get-id! $ quote
          defn get-id! () (swap! *cached-id inc) (str "\"id-" @*cached-id)
      :proc $ quote ()
    |respo.render.diff $ {}
      :ns $ quote
        ns respo.render.diff $ :require
          [] respo.util.format :refer $ [] purify-element
          [] respo.util.detect :refer $ [] component? element?
          [] respo.schema.op :as op
          [] respo.util.comparator :refer $ [] compare-xy
          [] respo.render.effect :refer $ [] collect-mounting collect-updating collect-unmounting
          [] respo.util.list :refer $ [] val-of-first
      :defs $ {}
        |find-children-diffs $ quote
          defn find-children-diffs (collect! coord n-coord index old-children new-children) (; .log js/console "|diff children:" n-coord index old-children new-children)
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
                    collect! $ [] op/append-element new-coord n-coord element
                    collect-mounting collect! coord (conj n-coord index) element true
                    recur collect! coord n-coord (inc index) ([]) (rest new-children)
                (and (not was-empty?) now-empty?)
                  let
                      pair $ first old-children
                      k $ first pair
                      new-coord $ conj coord k
                      new-n-coord $ conj n-coord index
                    collect-unmounting collect! coord new-n-coord (last pair) true
                    collect! $ [] op/rm-element new-coord new-n-coord nil
                    recur collect! coord n-coord index (rest old-children) ([])
                true $ let
                    old-keys $ map first (take 16 old-children)
                    new-keys $ map first (take 16 new-children)
                    x1 $ first old-keys
                    y1 $ first new-keys
                    match-x1 $ fn (x) (= x x1)
                    match-y1 $ fn (x) (= x y1)
                    x1-remains? $ any? match-x1 new-keys
                    y1-existed? $ any? match-y1 old-keys
                    old-follows $ rest old-children
                    new-follows $ rest new-children
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
                        collect! $ [] op/add-element new-coord new-n-coord element
                        collect-mounting collect! coord new-n-coord (val-of-first new-children) true
                        recur collect! coord n-coord (inc index) old-children new-follows
                    (and (not x1-remains?) y1-existed?)
                      let
                          pair $ first old-children
                          k $ first pair
                          new-coord $ conj coord k
                          new-n-coord $ conj n-coord index
                        collect-unmounting collect! coord new-n-coord (last pair) true
                        collect! $ [] op/rm-element new-coord new-n-coord nil
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
                          collect! $ [] op/add-element new-coord new-n-coord new-element
                          collect-mounting collect! coord new-n-coord new-element true
                          recur collect! coord n-coord (inc index) old-children new-follows
                        do
                          collect-unmounting collect! coord new-n-coord (val-of-first old-children) true
                          collect! $ [] op/rm-element (conj coord x1) new-n-coord nil
                          recur collect! coord n-coord index old-follows new-children
        |find-element-diffs $ quote
          defn find-element-diffs (collect! coord n-coord old-tree new-tree) (; .log js/console "|element diffing:" n-coord old-tree new-tree) (; echo "\"element coord" coord)
            cond
                identical? old-tree new-tree
                , nil
              (and (component? old-tree) (component? new-tree))
                let
                    next-coord $ conj coord (:name new-tree)
                  if
                    = (:name old-tree) (:name new-tree)
                    do (collect-updating collect! :before-update coord n-coord old-tree new-tree)
                      find-element-diffs collect! next-coord n-coord (:tree old-tree) (:tree new-tree)
                      collect-updating collect! :update coord n-coord old-tree new-tree
                    do (collect-unmounting collect! coord n-coord old-tree true)
                      find-element-diffs collect! next-coord n-coord (:tree old-tree) (:tree new-tree)
                      collect-mounting collect! coord n-coord new-tree true
              (and (component? old-tree) (element? new-tree))
                do
                  collect-unmounting collect!
                    conj coord $ :name old-tree
                    , n-coord old-tree true
                  recur collect! coord n-coord (:tree old-tree) new-tree
              (and (element? old-tree) (component? new-tree))
                let
                    new-coord $ conj coord (:name new-tree)
                  do
                    find-element-diffs collect! new-coord n-coord old-tree $ :tree new-tree
                    collect-mounting collect! coord n-coord new-tree true
              (and (element? old-tree) (element? new-tree))
                if
                  /= (:name old-tree) (:name new-tree)
                  do
                    collect! $ [] op/replace-element coord n-coord new-tree
                    , nil
                  do
                    find-props-diffs collect! coord n-coord (:attrs old-tree) (:attrs new-tree)
                    let
                        old-style $ :style old-tree
                        new-style $ :style new-tree
                      if (/= old-style new-style) (find-style-diffs collect! coord n-coord old-style new-style)
                    let
                        old-events $ keys-non-nil
                          either (:event old-tree) ({})
                        new-events $ keys-non-nil
                          either (:event new-tree) ({})
                      when (/= old-events new-events)
                        let
                            added-events $ difference new-events old-events
                            removed-events $ difference old-events new-events
                          &doseq (event-name added-events)
                            collect! $ [] op/set-event coord n-coord event-name
                          &doseq (event-name removed-events)
                            collect! $ [] op/rm-event coord n-coord event-name
                    let
                        old-children $ :children old-tree
                        new-children $ :children new-tree
                      find-children-diffs collect! coord n-coord 0 old-children new-children
              true $ js/console.warn "\"Diffing unknown params" old-tree new-tree
        |find-props-diffs $ quote
          defn find-props-diffs (collect! coord n-coord old-props new-props)
            ; .log js/console "|find props:" n-coord old-props new-props (count old-props) (count new-props)
            let
                was-empty? $ empty? old-props
                now-empty? $ empty? new-props
              cond
                  and was-empty? now-empty?
                  , nil
                (and was-empty? (not now-empty?))
                  do
                    collect! $ [] op/add-prop coord n-coord (first new-props)
                    recur collect! coord n-coord old-props $ rest new-props
                (and (not was-empty?) now-empty?)
                  do
                    collect! $ [] op/rm-prop coord n-coord
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
                  ; .log js/console old-k new-k old-v new-v
                  case (compare-xy old-k new-k)
                    -1 $ do
                      collect! $ [] op/rm-prop coord n-coord old-k
                      recur collect! coord n-coord old-follows new-props
                    1 $ do
                      collect! $ [] op/add-prop coord n-coord new-pair
                      recur collect! coord n-coord old-props new-follows
                    0 $ do
                      if (/= old-v new-v)
                        collect! $ [] op/replace-prop coord n-coord new-pair
                      recur collect! coord n-coord old-follows new-follows
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
                    collect! $ [] op/add-style c-coord coord entry
                    recur collect! c-coord coord old-style follows
                (and (not was-empty?) now-empty?)
                  let
                      entry $ first old-style
                      follows $ rest old-style
                    collect! $ [] op/rm-style c-coord coord (first entry)
                    recur collect! c-coord coord follows new-style
                true $ let
                    old-entry $ first old-style
                    new-entry $ first new-style
                    old-follows $ rest old-style
                    new-follows $ rest new-style
                  case
                    compare-xy (first old-entry) (first new-entry)
                    -1 $ do
                      collect! $ [] op/rm-style c-coord coord (first old-entry)
                      recur collect! c-coord coord old-follows new-style
                    1 $ do
                      collect! $ [] op/add-style c-coord coord new-entry
                      recur collect! c-coord coord old-style new-follows
                    0 $ do
                      if
                        not $ identical? (last old-entry) (last new-entry)
                        collect! $ [] op/replace-style c-coord coord new-entry
                      recur collect! c-coord coord old-follows new-follows
        |keys-non-nil $ quote
          defn keys-non-nil (m)
            #{} & $ ->> m (to-pairs)
              filter $ fn (pair)
                some? $ last pair
              map first
      :proc $ quote ()
    |respo.test.html $ {}
      :ns $ quote
        ns respo.test.html $ :require
          [] calcit-test.core :refer $ [] deftest is testing
          [] respo.core :refer $ [] html head title script div link textarea body
          [] respo.render.html :refer $ [] make-string
      :defs $ {}
        |html-quote-test $ quote
          deftest html-quote-test $ let
              tree-demo $ div
                {} (:value "|a\"b\"c") (:x |y)
                  :style $ {} (:content "|d\"e\"f")
            testing "|HTML contains quotes" $ is
              = (slurp |test/examples/quote.html) (make-string tree-demo)
        |html-test $ quote
          deftest html-test $ let
              todo-demo $ comp-todolist todolist-store
            testing "|test generated HTML from component" $ is
              = (slurp |test/examples/demo.html) (make-string todo-demo)
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
        |nil-prop-test $ quote
          deftest nil-prop-test $ let
              piece $ script
                {} (:src "\"a.js") (:defer nil)
            testing "|test generate script with nil" $ is
              = "|<script src=\"a.js\"></script>" $ make-string piece
        |run-tests $ quote
          defn run-tests () (html-quote-test) (nil-prop-test) (simple-html-test) (textarea-test)
      :proc $ quote
          defn main! () $ run-tests
    |respo.schema.op $ {}
      :ns $ quote (ns respo.schema.op)
      :defs $ {}
        |rm-event $ quote (def rm-event 32)
        |replace-style $ quote (def replace-style 21)
        |replace-element $ quote (def replace-element 1)
        |append-element $ quote (def append-element 3)
        |set-event $ quote (def set-event 30)
        |rm-prop $ quote (def rm-prop 12)
        |effect-mount $ quote (def effect-mount 41)
        |add-prop $ quote (def add-prop 10)
        |replace-prop $ quote (def replace-prop 11)
        |effect-update $ quote (def effect-update 43)
        |effect-before-update $ quote (def effect-before-update 42)
        |add-style $ quote (def add-style 20)
        |rm-style $ quote (def rm-style 22)
        |effect-unmount $ quote (def effect-unmount 44)
        |rm-element $ quote (def rm-element 2)
        |add-element $ quote (def add-element 0)
      :proc $ quote ()
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
      :proc $ quote ()
    |respo.render.patch $ {}
      :ns $ quote
        ns respo.render.patch $ :require
          [] respo.util.format :refer $ [] dashed->camel event->prop ensure-string get-style-value
          [] respo.render.dom :refer $ [] make-element style->string
          [] respo.schema.op :as op
      :defs $ {}
        |rm-event $ quote
          defn rm-event (target event-name)
            let
                event-prop $ event->prop event-name
              aset target event-prop nil
        |replace-style $ quote
          defn replace-style (target op)
            let[] (p v) op $ let
                style-name $ dashed->camel (turn-string p)
                style-value $ ensure-string v
              aset (.-style target) style-name style-value
        |replace-element $ quote
          defn replace-element (target op listener-builder coord)
            let
                new-element $ make-element op listener-builder coord
                parent-element $ .-parentElement target
              .insertBefore parent-element new-element target
              .remove target
        |append-element $ quote
          defn append-element (target op listener-builder coord)
            let
                new-element $ make-element op listener-builder coord
              .appendChild target new-element
        |add-event $ quote
          defn add-event (target event-name listener-builder coord)
            let
                event-prop $ event->prop event-name
              aset target event-prop $ fn (event)
                  listener-builder event-name
                  , event coord
                .stopPropagation event
        |rm-prop $ quote
          defn rm-prop (target op)
            let
                k $ dashed->camel (turn-string op)
              aset target k nil
        |add-prop $ quote
          defn add-prop (target op)
            let[] (p prop-value) op $ let
                prop-name $ dashed->camel (turn-string p)
              case prop-name
                |style $ aset target prop-name (style->string prop-value)
                prop-name $ aset target prop-name prop-value
        |replace-prop $ quote
          defn replace-prop (target op)
            let[] (p prop-value) op $ let
                prop-name $ dashed->camel (turn-string p)
              if (= prop-name |value)
                if
                  /= prop-value $ .-value target
                  aset target prop-name prop-value
                aset target prop-name prop-value
        |apply-dom-changes $ quote
          defn apply-dom-changes (changes mount-point listener-builder)
            let
                root $ .-firstElementChild mount-point
              &doseq (op changes)
                assert "\"4 items" $ = 4 (count op)
                let
                    op-type $ get op 0
                    coord $ get op 1
                    n-coord $ get op 2
                    op-data $ get op 3
                    target $ find-target root n-coord
                  cond
                      = op-type op/replace-prop
                      replace-prop target op-data
                    (= op-type op/add-prop) (add-prop target op-data)
                    (= op-type op/rm-prop) (rm-prop target op-data)
                    (= op-type op/add-style) (add-style target op-data)
                    (= op-type op/replace-style) (replace-style target op-data)
                    (= op-type op/rm-style) (rm-style target op-data)
                    (= op-type op/set-event) (add-event target op-data listener-builder coord)
                    (= op-type op/rm-event) (rm-event target op-data)
                    (= op-type op/add-element) (add-element target op-data listener-builder coord)
                    (= op-type op/rm-element) (rm-element target op-data)
                    (= op-type op/replace-element) (replace-element target op-data listener-builder coord)
                    (= op-type op/append-element) (append-element target op-data listener-builder coord)
                    (= op-type op/effect-mount) (run-effect target op-data n-coord)
                    (= op-type op/effect-unmount) (run-effect target op-data n-coord)
                    (= op-type op/effect-update) (run-effect target op-data n-coord)
                    (= op-type op/effect-before-update) (run-effect target op-data n-coord)
                    true $ println "|not implemented:" op-type n-coord op-data
        |add-style $ quote
          defn add-style (target op)
            let[] (p v) op $ let
                style-name $ dashed->camel (turn-string p)
                style-value $ get-style-value v style-name
              aset (.-style target) style-name style-value
        |rm-style $ quote
          defn rm-style (target op)
            let
                style-name $ dashed->camel (turn-string op)
              aset (.-style target) style-name nil
        |run-effect $ quote
          defn run-effect (target op-data coord)
            if (some? target) (op-data target)
              js/console.warn "\"Unknown effects target:" $ pr-str coord
        |rm-element $ quote
          defn rm-element (target op)
            if (some? target) (.remove target) (.warn js/console "|Respo: Element already removed! Probably by :inner-text.")
        |find-target $ quote
          defn find-target (root coord)
            cond
                empty? coord
                , root
              true $ let
                  index $ first coord
                  child $ aget (.-children root) index
                if (some? child)
                  recur child $ rest coord
                  , nil
        |add-element $ quote
          defn add-element (target op listener-builder coord)
            let
                new-element $ make-element op listener-builder coord
                parent-element $ .-parentElement target
              .insertBefore parent-element new-element target
      :proc $ quote ()
    |respo.app.comp.todolist $ {}
      :ns $ quote
        ns respo.app.comp.todolist $ :require
          [] respo.core :refer $ [] defcomp div span input <> list-> defeffect >>
          [] respo.util.format :refer $ [] hsl
          [] respo.app.comp.task :refer $ [] comp-task
          [] respo.comp.space :refer $ [] =<
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] respo.app.comp.zero :refer $ [] comp-zero
          [] respo.app.comp.wrap :refer $ [] comp-wrap
          [] respo.util.dom :refer $ [] text-width time!
          [] respo.app.style.widget :as widget
          [] memof.alias :refer $ [] memof-call
      :defs $ {}
        |number-order $ quote
          defn number-order (a b)
            if (&< a b) -1 $ if (&> a b) 1 0
        |style-root $ quote
          def style-root $ {} (:color :black)
            :background-color $ hsl 120 20 98
            :line-height |24px
            "\"font-size" 16
            :padding 10
            :font-family "|\"微软雅黑\", Verdana"
        |style-list $ quote
          def style-list $ {} (:color :black)
            :background-color $ hsl 120 20 98
        |style-toolbar $ quote
          def style-toolbar $ {} (:display :flex) (:flex-direction :row) (:justify-content :start) (:padding "\"4px 0") (:white-space :nowrap)
        |style-panel $ quote
          def style-panel $ {} (:display :flex) (:margin-bottom 4)
        |on-test $ quote
          defn on-test (e dispatch!) (println "|trigger test!")
            run-test! dispatch! $ []
        |on-focus $ quote
          defn on-focus (e dispatch!) (println "|Just focused~")
        |effect-focus $ quote
          defeffect effect-focus () (action parent at-place?) (js/console.log "\"todolist effect:" action)
        |run-test! $ quote
          defn run-test! (dispatch! acc)
            let
                started $ time!
              dispatch! :clear nil
              loop
                  x 20
                dispatch! :add |empty
                if (> x 0)
                  recur $ dec x
              loop
                  x 20
                dispatch! :hit-first $ rand
                if (> x 0)
                  recur $ dec x
              dispatch! :clear nil
              loop
                  x 10
                dispatch! :add "|only 10 items"
                if (> x 0)
                  recur $ dec x
              let
                  cost $ - (time!) started
                if
                  < (count acc) 40
                  js/setTimeout
                    fn () $ run-test! dispatch! (conj acc cost)
                    , 0
                  println |result: $ sort number-order acc
        |initial-state $ quote
          def initial-state $ {} (:draft |) (:locked? false)
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
                    ->>
                      either tasks $ []
                      reverse
                      map $ fn (task)
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
      :proc $ quote ()
    |respo.comp.space $ {}
      :ns $ quote
        ns respo.comp.space $ :require
          [] respo.core :refer $ [] div defcomp
      :defs $ {}
        |=< $ quote
          defn =< (w x) (comp-space w x)
        |comp-space $ quote
          defcomp comp-space (w h)
            div $ {}
              :style $ if (some? w) (assoc style-space :width w) (assoc style-space :height h)
        |style-space $ quote
          def style-space $ {} (:height 1) (:width 1) (:display :inline-block)
      :proc $ quote ()
    |respo.util.comparator $ {}
      :ns $ quote (ns respo.util.comparator)
      :defs $ {}
        |compare-xy $ quote
          defn compare-xy (x y)
            let
                type-x $ type-as-int x
                type-y $ type-as-int y
              if (= type-x type-y) (compare x y) (compare type-x type-y)
        |type-as-int $ quote
          defn type-as-int (x)
            cond
                number? x
                , 0
              (keyword? x) 1
              (string? x) 2
              true $ raise "|use number, keyword or string in coord!"
        |compare $ quote
          defn compare (x y)
            cond
                < x y
                , -1
              (> x y) 1
              true 0
      :proc $ quote ()
    |respo.test.comp.task $ {}
      :ns $ quote
        ns respo.test.comp.task $ :require
          [] respo.util.format :refer $ [] hsl
          [] respo.core :refer $ defcomp div span
      :defs $ {}
        |comp-task $ quote
          defcomp comp-task (task)
            div ({})
              span $ {}
                :inner-text $ :text task
      :proc $ quote ()
    |respo.util.detect $ {}
      :ns $ quote
        ns respo.util.detect $ :require ([] respo.schema :as schema)
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
        |component? $ quote
          defn component? (x)
            if (record? x) (relevant-record? x schema/Component) false
        |effect? $ quote
          defn effect? (x)
            and (record? x) (relevant-record? x schema/Effect)
        |element? $ quote
          defn element? (x)
            if (record? x) (relevant-record? x schema/Element) false
      :proc $ quote ()
    |respo.app.comp.task $ {}
      :ns $ quote
        ns respo.app.comp.task $ :require
          [] respo.core :refer $ [] defcomp div input span button <> defeffect
          [] respo.util.format :refer $ [] hsl
          [] respo.comp.space :refer $ [] =<
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] respo.app.style.widget :as widget
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
            case action
              :mount $ let
                  x0 $ js/Math.random
                ; println "\"Stored" x0
              :update $ ; println "\"read"
              :unmount $ ; println "\"read"
        |on-click $ quote
          defn on-click (props state)
            fn (event dispatch!) (println |clicked.)
        |style-done $ quote
          def style-done $ {} (:width 32) (:height 32) (:outline :none) (:border :none) (:vertical-align :middle)
        |style-task $ quote
          def style-task $ {} (:display :flex) (:padding "|4px 0px")
      :proc $ quote ()
    |respo.test.main $ {}
      :ns $ quote
        ns respo.test.main $ :require ([] respo.test.html :as html)
          [] calcit-test.core :refer $ [] deftest testing is
          [] respo.util.list :refer $ [] pick-attrs pick-event
      :defs $ {}
        |main! $ quote
          defn main! () (html/run-tests) (test-pick-attrs) (test-pick-event)
        |reload! $ quote
          defn ^:dev/after-load reload! () $ main!
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
      :proc $ quote ()
    |respo.schema $ {}
      :ns $ quote (ns respo.schema)
      :defs $ {}
        |effect $ quote
          def effect $ {} (:name nil) (:respo-node :effect)
            :coord $ []
            :args $ []
            :method $ fn
              args $ [] action parent at-place?
        |cache-info $ quote
          def cache-info $ {} (:value nil) (:initial-loop nil) (:last-hit nil) (:hit-times 0)
        |Component $ quote (defrecord Component :name :effects :tree)
        |Element $ quote (defrecord Element :name :coord :attrs :style :event :children)
        |Effect $ quote (defrecord Effect :name :coord :args :method)
      :proc $ quote ()
    |respo.comp.inspect $ {}
      :ns $ quote
        ns respo.comp.inspect $ :require
          [] respo.core :refer $ [] defcomp pre <>
      :defs $ {}
        |comp-inspect $ quote
          defcomp comp-inspect (tip data style)
            pre $ {}
              :inner-text $ str tip "|: " (grab-info data)
              :style $ merge style-data style
              :on-click $ on-click data
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
        |on-click $ quote
          defn on-click (data)
            fn (e dispatch!)
              let
                  raw $ pr-str data
                if
                  > (count raw) 60
                  .log js/console $ to-js-data data
                  .log js/console raw
        |style-data $ quote
          def style-data $ {} (:position :absolute) (:background-color "\"hsl(240,100%,0%)") (:color :white) (:opacity 0.2) (:font-size |12px) (:font-family |Avenir,Verdana) (:line-height "\"1.4em") (:padding "|2px 6px") (:border-radius |4px) (:max-width 160) (:max-height 32) (:white-space :normal) (:overflow :ellipsis) (:cursor :default)
      :proc $ quote ()
    |respo.controller.resolve $ {}
      :ns $ quote
        ns respo.controller.resolve $ :require
          [] respo.util.detect :refer $ [] component? element?
          [] respo.util.list :refer $ [] filter-first
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
                      cond
                          list? op
                          dispatch! :states $ [] op data
                        true $ dispatch! op data
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
                  if (component? m) (:tree m) m
                element-exists? $ some? target-element
              ; println "|target element:" $ pr-str event-name
              if
                and element-exists?
                  some? $ :event target-element
                  some? $ get (:event target-element) event-name
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
                  child-pair $ filter-first
                    fn (child-entry)
                      = (get child-entry 0) coord-head
                    :children markup
                if (some? child-pair)
                  get-markup-at (get child-pair 1) (rest coord)
                  raise $ str "|child not found:" coord
                    map first $ :children markup
      :proc $ quote ()
    |respo.core $ {}
      :ns $ quote
        ns respo.core $ :require
          [] respo.controller.resolve :refer $ [] build-deliver-event
          [] respo.render.diff :refer $ [] find-element-diffs
          [] respo.render.effect :refer $ [] collect-mounting
          [] respo.util.format :refer $ [] purify-element mute-element
          [] respo.controller.client :refer $ [] activate-instance! patch-instance!
          [] respo.util.list :refer $ [] pick-attrs pick-event val-exists? detect-func-in-map? filter-first
          [] respo.util.detect :refer $ [] component? element? effect?
          [] respo.schema :as schema
          [] respo.util.comparator :refer $ [] compare-xy
          [] respo.util.dom :refer $ [] compare-to-dom!
          [] memof.alias :refer $ [] tick-calling-loop! reset-calling-caches!
      :defs $ {}
        |>> $ quote
          defn >> (states k)
            let
                parent-cursor $ either (:cursor states) ([])
                branch $ either (get states k) ({})
              assoc branch :cursor $ conj parent-cursor k
        |*changes-logger $ quote (defatom *changes-logger nil)
        |create-element $ quote
          defn create-element (tag-name props & children)
            ; assert
              str "|For rendering lists, please use list-> , got: " $ pr-str children
              and
                > (count children) 0
                not $ any? list? children
            let
                attrs $ pick-attrs props
                styles $ sort
                  fn (x y)
                    compare-xy (first x) (first y)
                  set->list $ to-pairs
                    either (:style props) ({})
                event $ pick-event props
                children-nodes $ ->>
                  map-indexed
                    fn (idx item) ([] idx item)
                    , children
                  filter val-exists?
              %{} schema/Element (:name tag-name) (:coord nil) (:attrs attrs) (:style styles) (:event event) (:children children-nodes)
        |img $ quote
          defn img (props & children)
            create-element :img props & $ map confirm-child children
        |body $ quote
          defn body (props & children)
            create-element :body props & $ map confirm-child children
        |render! $ quote
          defn render! (target markup dispatch!) (reset! *dispatch-fn dispatch!)
            if (some? @*global-element) (rerender-app! target markup *dispatch-fn) (mount-app! target markup *dispatch-fn)
        |h3 $ quote
          defn h3 (props & children)
            create-element :h3 props & $ map confirm-child children
        |mount-app! $ quote
          defn mount-app! (target element *dispatch-fn)
            ; assert "|1st argument should be an element" $ or (nil? target)
              = element-type $ .-__proto__ target
            ; assert "|2nd argument should be a component" $ component? element
            let
                deliver-event $ build-deliver-event *global-element *dispatch-fn
                *changes $ do
                  reset! *dom-changes $ []
                  , *dom-changes
                collect! $ fn (x)
                  assert "|change op should has length 3" $ = 4 (count x)
                  swap! *changes conj x
              ; println "|mount app"
              activate-instance! element target deliver-event
              collect-mounting collect! ([]) ([]) element true
              patch-instance! @*changes target deliver-event
              reset! *global-element element
        |extract-effects-list $ quote
          defn extract-effects-list (markup)
            &let
              markup-tree $ :tree markup
              cond
                  nil? markup-tree
                  assoc markup :tree $ span nil
                (list? markup-tree)
                  let
                      node-tree $ filter-first
                        fn (x)
                          and (record? x)
                            or (component? x) (element? x)
                        , markup-tree
                      effects-list $ ->> markup-tree (filter effect?)
                    merge markup $ {} (:tree node-tree) (:effects effects-list)
                true markup
        |*dom-changes $ quote
          defatom *dom-changes $ []
        |option $ quote
          defn option (props & children)
            create-element :option props & $ map confirm-child children
        |create-list-element $ quote
          defn create-list-element (tag-name props child-map)
            let
                attrs $ pick-attrs props
                styles $ sort
                  fn (x y)
                    compare-xy (first x) (first y)
                  set->list $ to-pairs
                    either (:style props) ({})
                event $ pick-event props
              %{} schema/Element (:name tag-name) (:coord nil) (:attrs attrs) (:style styles) (:event event) (:children child-map)
        |h2 $ quote
          defn h2 (props & children)
            create-element :h2 props & $ map confirm-child children
        |realize-ssr! $ quote
          defn realize-ssr! (target element dispatch!)
            assert (instance? element-type target) "|1st argument should be an element"
            assert (component? element) "|2nd argument should be a component"
            let
                app-element $ .-firstElementChild target
                *changes $ do
                  reset! *rereder-changes $ []
                  , *rereder-changes
                collect! $ fn (x)
                  assert
                    = 3 $ count x
                    , "|change op should has length 3"
                  swap! *changes conj x
                deliver-event $ build-deliver-event *global-element dispatch!
              if (nil? app-element) (raise "\"Detected no element from SSR!")
              compare-to-dom! (purify-element element) app-element
              collect-mounting collect! ([]) ([]) element true
              patch-instance! @*changes target deliver-event
              reset! *global-element $ mute-element element
        |h4 $ quote
          defn h4 (props & children)
            create-element :h4 props & $ map confirm-child children
        |style $ quote
          defn style (props & children)
            create-element :style props & $ map confirm-child children
        |span $ quote
          defn span (props & children)
            create-element :span props & $ map confirm-child children
        |script $ quote
          defn script (props & children)
            create-element :script props & $ map confirm-child children
        |select $ quote
          defn select (props & children)
            create-element :select props & $ map confirm-child children
        |defeffect $ quote
          defmacro defeffect (effect-name args params & body)
            assert "\"args in symbol" $ and (list? args) (every? symbol? args)
            assert "\"params like [action el at-place?]" $ and (list? params) (every? symbol? params)
            let
                args-var $ gensym "\"args"
                params-var $ gensym "\"params"
              quote-replace $ defn ~effect-name ~args
                %{} schema/Effect
                  :name $ ~ (turn-keyword effect-name)
                  :coord $ []
                  :args $ [] ~@args
                  :method $ fn (~args-var ~params-var)
                    let[] ~args ~args-var $ let[] ~params ~params-var
                      ~@ $ if (empty? body)
                        quote-replace $ echo "\"WARNING:" ~effect-name "\"lack code for handling effects!" 
                        , body
        |list-> $ quote
          defn list-> (props children) (create-list-element :div props children)
        |a $ quote
          defn a (props & children)
            create-element :a props & $ map confirm-child children
        |input $ quote
          defn input (props & children)
            create-element :input props & $ map confirm-child children
        |rerender-app! $ quote
          defn rerender-app! (target element *dispatch-fn) (tick-calling-loop!)
            let
                deliver-event $ build-deliver-event *global-element *dispatch-fn
                *changes $ do
                  reset! *rereder-changes $ []
                  , *rereder-changes
                collect! $ fn (x)
                  assert "|change op should has length 4" $ = 4 (count x)
                  swap! *changes conj x
              ; println @*global-element
              ; println |Changes: $ pr-str
                mapv (partial take 2) @*changes
              find-element-diffs collect! ([]) ([]) @*global-element element
              let
                  logger @*changes-logger
                if (some? logger) (logger @*global-element element @*changes)
              patch-instance! @*changes target deliver-event
              reset! *global-element element
        |head $ quote
          defn head (props & children)
            create-element :head props & $ map confirm-child children
        |title $ quote
          defn title (props & children)
            create-element :title props & $ map confirm-child children
        |textarea $ quote
          defn textarea (props & children)
            create-element :textarea props & $ map confirm-child children
        |link $ quote
          defn link (props & children)
            create-element :link props & $ map confirm-child children
        |div $ quote
          defn div (props & children)
            create-element :div props & $ map confirm-child children
        |pre $ quote
          defn pre (props & children)
            create-element :pre props & $ map confirm-child children
        |blockquote $ quote
          defn blockquote (props & children)
            create-element :blockquote props & $ map confirm-child children
        |<> $ quote
          defn <> (content ? arg)
            let
                style arg
              span $ {} (:inner-text content) (:style style)
        |element-type $ quote
          def element-type $ if (exists? js/Element) js/Element js/Error
        |*global-element $ quote (defatom *global-element nil)
        |html $ quote
          defn html (props & children)
            create-element :html props & $ map confirm-child children
        |clear-cache! $ quote
          defn clear-cache! () $ reset-calling-caches!
        |defplugin $ quote
          defmacro defplugin (x params & body)
            assert "\"expected symbol" $ symbol? x
            assert "\"expected params" $ list? params
            assert "\"expected some result" $ > (count body) 0
            quote-replace $ defn ~x ~params ~@body
        |h1 $ quote
          defn h1 (props & children)
            create-element :h1 props & $ map confirm-child children
        |confirm-child $ quote
          defn confirm-child (x)
            when
              not $ or (nil? x) (element? x) (component? x)
              raise $ str "\"Invalid data in elements tree: " (pr-str x)
            , x
        |*rereder-changes $ quote
          defatom *rereder-changes $ []
        |*dispatch-fn $ quote (defatom *dispatch-fn nil)
        |defcomp $ quote
          defmacro defcomp (comp-name params & body)
            assert "\"expected symbol of comp-name" $ symbol? comp-name
            assert "\"expected list for params" $ list? params
            assert "\"some component retured" $ &> (count body) 0
            quote-replace $ defn ~comp-name (~ params)
              extract-effects-list $ %{} schema/Component
                :effects $ []
                :name $ ~ (turn-keyword comp-name)
                :tree $ do (~@ body)
        |code $ quote
          defn code (props & children)
            create-element :code props & $ map confirm-child children
        |li $ quote
          defn li (props & children)
            create-element :li props & $ map confirm-child children
        |button $ quote
          defn button (props & children)
            create-element :button props & $ map confirm-child children
      :proc $ quote ()
    |respo.util.dom $ {}
      :ns $ quote
        ns respo.util.dom $ :require
          [] respo.util.list :refer $ [] val-of-first
      :defs $ {}
        |compare-to-dom! $ quote
          defn compare-to-dom! (vdom element)
            ; println "\"compare" (:name vdom)
              map :name $ vals (:children vdom)
            ; .log js/console element
            let
                virtual-name $ turn-string (:name vdom)
                real-name $ .toLowerCase (.-tagName element)
              when (/= virtual-name real-name)
                .warn js/console "\"SSR checking: tag names do not match:"
                  pr-str $ dissoc vdom :children
                  , element
            if
              /=
                count $ :children vdom
                .-length $ .-children element
              let
                  maybe-html $ :innerHTML
                    pairs-map $ :attrs vdom
                if (some? maybe-html)
                  when
                    = maybe-html $ .-innerHTML element
                    .warn js/console "\"SSR checking: noticed dom containing innerHTML:" element
                  do (.error js/console "\"SSR checking: children sizes do not match!")
                    .log js/console "\"virtual:" $ ->> vdom :children (map last) (map :name) pr-str
                    .log js/console "\"real:" $ .-children element
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
            .getContext (.createElement js/document |canvas) |2d
            , nil
        |text-width $ quote
          defn text-width (content font-size font-family)
            if (some? shared-canvas-context)
              do
                aset shared-canvas-context |font $ str font-size "|px " font-family
                .-width $ .measureText shared-canvas-context content
              , nil
        |time! $ quote
          defn time! () $ .now js/Date
      :proc $ quote ()
