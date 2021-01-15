
{} (:package |respo)
  :configs $ {} (:init-fn |respo.main/main!) (:reload-fn |respo.main/reload!) (:modules $ [] |memof/compact.cirru |lilac/compact.cirru |calcit-test/compact.cirru) (:version |0.14.0)
  :files $ {}
    |respo.app.style.widget $ {}
      :ns $ quote
        ns respo.app.style.widget $ :require ([] respo.util.format :refer $ [] hsl)
      :defs $ {}
        |button $ quote
          def button $ {} (:display :inline-block) (:padding "\"0 6px 0 6px") (:font-family |Avenir,Verdana) (:cursor :pointer) (:background-color $ hsl 0 80 70) (:color $ hsl 0 0 100) (:height 28) (:line-height "\"28px")
        |input $ quote
          def input $ {} (:font-size |16px) (:line-height |24px) (:padding "|0px 8px") (:outline :none) (:min-width |300px) (:background-color $ hsl 0 0 94) (:border :none)
      :proc $ quote ()
    |respo.app.comp.wrap $ {}
      :ns $ quote
        ns respo.app.comp.wrap $ :require ([] respo.core :refer $ [] defcomp div)
      :defs $ {}
        |comp-wrap $ quote
          defcomp comp-wrap (x)
            div ({}) x
      :proc $ quote ()
    |respo.app.comp.container $ {}
      :ns $ quote
        ns respo.app.comp.container $ :require ([] respo.core :refer $ [] defcomp div span <> >> a) ([] respo.app.comp.todolist :refer $ [] comp-todolist) ([] respo.app.comp.caches :refer $ [] comp-caches) ([] respo.comp.space :refer $ [] =<)
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (store)
            let
                states $ :states store
              div ({} $ :style style-global) (comp-todolist states $ :tasks store)
                div ({} $ :style style-states)
                  <> $ str "|states: " (pr-str $ :states store)
                =< nil 40
                comp-caches $ >> states :caches
        |style-global $ quote
          def style-global $ {} (:font-family |Avenir,Verdana)
        |style-states $ quote
          def style-states $ {} (:padding 8)
      :proc $ quote ()
    |respo.render.html $ {}
      :ns $ quote
        ns respo.render.html $ :require ([] respo.util.format :refer $ [] prop->attr purify-element mute-element ensure-string text->html) ([] respo.util.detect :refer $ [] component? element?) ([] respo.render.expand :refer $ [] render-markup)
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
                  either (:innerHTML attrs) (text->html $ :inner-text attrs)
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
              str (prop->attr $ turn-string k) (, |=)
                pr-str $ cond
                    = k :style
                    style->string v
                  (bool? v)
                    str v
                  (number? v)
                    str v
                  (keyword? v)
                    turn-string v
                  (string? v)
                    escape-html v
                  true $ str v
        |escape-html $ quote
          defn escape-html (text)
            if (nil? text) "\"" $ -> text (replace "|\"" |&quot;) (replace |< |&lt;) (replace |> |&gt;) (replace &newline "\"&#13;&#10;")
        |make-string $ quote
          defn make-string (tree)
            let
                element $ render-markup tree
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
                    v $ last entry
                  str (turn-string k) |:
                    if (string? v) (escape-html v) (ensure-string v)
                    , |;
              join-str |
      :proc $ quote ()
    |respo.main $ {}
      :ns $ quote
        ns respo.main $ :require ([] respo.core :refer $ [] *changes-logger clear-cache!) ([] respo.app.core :refer $ [] render-app! *store) ([] respo.test.main :as respo-test)
      :defs $ {}
        |main! $ quote
          defn main! () (; handle-ssr! mount-target)
            if (= "\"ci" $ get-env "\"env") (respo-test/main!)
              do
                let
                    raw $ .getItem js/window.localStorage |respo.calcit
                  if (some? raw)
                    swap! *store assoc :tasks $ extract-cirru-edn (js/JSON.parse raw)
                  render-app! mount-target
                  add-watch *store :rerender $ \ render-app! mount-target
                  ; reset! *changes-logger $ fn (old-tree new-tree changes) (.log js/console $ clj->js changes)
                  println |Loaded. $ .now js/performance
                aset js/window |onbeforeunload save-store!
        |mount-target $ quote
          def mount-target $ if (exists? js/document) (.querySelector js/document |.app) (, nil)
        |reload! $ quote
          defn reload! () (clear-cache!) (render-app! mount-target) (.log js/console "|code updated.")
        |save-store! $ quote
          defn save-store! ()
            .setItem js/window.localStorage |respo.calcit $ js/JSON.stringify (to-cirru-edn $ :tasks @*store)
      :proc $ quote ()
    |respo.util.format $ {}
      :ns $ quote
        ns respo.util.format $ :require ([] respo.util.detect :refer $ [] component? element?)
      :defs $ {}
        |prop->attr $ quote
          defn prop->attr (x)
            when (contains? x "\"?") (println "\"[Respo] warning: property contains `?` in" x)
            case x (|class-name |class) (|tab-index |tabindex) (|read-only |readonly) (x x)
        |event->prop $ quote
          defn event->prop (x) (str |on $ turn-string x)
        |ensure-string $ quote
          defn ensure-string (x)
            cond
                string? x
                , x
              (keyword? x)
                turn-string x
              true $ str x
        |event->string $ quote
          defn event->string (x)
            subs (name x) 3
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
          defn hsl (h s l & args)
            let
                a $ if (empty? args) 1 (first args)
              str "\"hsl(" h "\"," s "\"%," l "\"%," a "\")"
        |event->edn $ quote
          defn event->edn (event) (; .log js/console "\"simplify event:" event)
            ->
              case (.-type event)
                "\"click" $ {} (:type :click)
                "\"keydown" $ merge (map-keyboard-event event)
                  {} (:type :keydown) (:key-code $ .-keyCode event) (:keycode $ .-keyCode event)
                "\"keypress" $ merge (map-keyboard-event event) ({} $ :type :keypress)
                "\"keyup" $ merge (map-keyboard-event event) ({} $ :type :keyup)
                "\"input" $ {} (:type :input)
                  :value $ aget (.-target event) "\"value"
                  :checked $ -> event .-target .-checked
                "\"change" $ {} (:type :change)
                  :value $ aget (.-target event) |value
                "\"focus" $ {} (:type :focus)
                (.-type event)
                  {} (:type $ .-type event)
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
        |mute-element $ quote
          defn mute-element (element)
            if (component? element) (update element :tree mute-element)
              -> element
                update :event $ fn (events) ([])
                update :children $ fn (children)
                  ->> children $ map
                    fn (entry)
                      [] (first entry) (mute-element $ last entry)
        |map-keyboard-event $ quote
          defn map-keyboard-event (event)
            {} (:key $ .-key event) (:code $ .-code event) (:ctrl? $ .-ctrlKey event) (:meta? $ .-metaKey event) (:alt? $ .-altKey event) (:shift? $ .-shiftKey event)
        |purify-element $ quote
          defn purify-element (markup)
            cond
                nil? markup
                , nil
              (component? markup)
                purify-element $ &let (t $ :tree markup)
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
        |text->html $ quote
          defn text->html (x)
            if (some? x)
              -> (str x) (replace |> |&gt;) (replace |< |&lt;)
              , nil
      :proc $ quote ()
    |respo.app.updater $ {}
      :ns $ quote
        ns respo.app.updater $ :require ([] respo.cursor :refer $ [] update-states)
      :defs $ {}
        |updater $ quote
          defn updater (store op-type op-data op-id) (; println store op-type op-data)
            case op-type (:states $ update-states store op-data)
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
        ns respo.render.dom $ :require ([] respo.util.format :refer $ [] dashed->camel event->prop ensure-string)
      :defs $ {}
        |make-element $ quote
          defn make-element (virtual-element listener-builder)
            let
                tag-name $ turn-string (:name virtual-element)
                attrs $ :attrs virtual-element
                style $ :style virtual-element
                children $ :children virtual-element
                element $ .createElement js/document tag-name
                child-elements $ ->> children
                  map $ fn (pair)
                    let
                        k $ get pair 0
                        child $ get pair 1
                      when (some? child) (make-element child listener-builder)
              &doseq (entry attrs)
                let
                    k $ dashed->camel (turn-string $ first entry)
                    v $ last entry
                  if (some? v) (aset element k v)
              &doseq (entry style)
                let
                    k $ dashed->camel (turn-string $ first entry)
                    v $ last entry
                  aset (aget element |style) k $ if (keyword? v) (turn-string v) (, v)
              &doseq (event-name $ :event virtual-element)
                let
                    name-in-string $ event->prop event-name
                  ; println |listener: event-name name-in-string
                  aset element name-in-string $ fn (event)
                      listener-builder event-name
                      , event
                      :coord virtual-element
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
                    v $ ensure-string (last entry)
                  str (name k) |: v |;
              join-str |
      :proc $ quote ()
    |respo.app.core $ {}
      :ns $ quote
        ns respo.app.core $ :require ([] respo.app.comp.container :refer $ [] comp-container) ([] respo.core :refer $ [] render!) ([] respo.app.schema :as schema) ([] respo.app.updater :refer $ [] updater) ([] respo.util.id :refer $ [] get-id!)
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
        ns respo.test.comp.todolist $ :require ([] respo.test.comp.task :refer $ [] comp-task) ([] respo.core :refer $ [] defcomp div list->)
      :defs $ {}
        |comp-todolist $ quote
          defcomp comp-todolist (tasks)
            list-> ({} $ :style style-todolist)
              ->> (either tasks $ [])
                map $ fn (task)
                  [] (:id task) (comp-task task)
        |style-todolist $ quote
          def style-todolist $ {} (:color :blue) (:font-family "|\"微软雅黑\", Verdana")
      :proc $ quote ()
    |respo.app.comp.zero $ {}
      :ns $ quote
        ns respo.app.comp.zero $ :require ([] respo.core :refer $ [] defcomp div)
      :defs $ {}
        |comp-zero $ quote
          defcomp comp-zero ()
            div $ {} (:inner-text 0)
      :proc $ quote ()
    |respo.util.list $ {}
      :ns $ quote
        ns respo.util.list $ :require ([] respo.util.detect :refer $ [] component? element?) ([] respo.util.comparator :refer $ [] compare-xy)
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
            assert (sequential? xs) "|expects sequence"
            map-indexed
              fn (idx x) ([] idx $ f x)
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
          defn val-exists? (pair) (some? $ last pair)
        |val-of-first $ quote
          defn val-of-first (x) (last $ first x)
        |detect-func-in-map? $ quote
          defn detect-func-in-map? (params)
            if
              or (not $ map? params) (empty? params)
              , false
              let
                  ps $ to-pairs params
                  p0 $ first ps
                if (fn? $ last p0) (, true)
                  recur $ pairs-map (rest ps)
      :proc $ quote ()
    |respo.app.schema $ {}
      :ns $ quote (ns respo.app.schema)
      :defs $ {}
        |store $ quote
          def store $ {} (:tasks $ []) (:states $ {}) (:cursor $ [])
        |task $ quote
          def task $ {} (:id nil) (:text |) (:done? false)
      :proc $ quote ()
    |respo.render.effect $ {}
      :ns $ quote
        ns respo.render.effect $ :require ([] respo.schema.op :as op) ([] respo.util.detect :refer $ [] component? element? =seq) ([] respo.util.list :refer $ [] val-of-first)
      :defs $ {}
        |collect-mounting $ quote
          defn collect-mounting (collect! n-coord tree at-place?)
            cond
                component? tree
                let
                    effects $ :effects tree
                  when (not $ empty? effects)
                    &doseq (effect effects)
                      let
                          method $ :method effect
                        collect! $ [] op/effect-mount n-coord
                          fn (target)
                            method (:args effect) ([] :mount target at-place?)
                  recur collect! n-coord (:tree tree) false
              (element? tree)
                loop
                    children $ :children tree
                    idx 0
                  when (not $ empty? children)
                    collect-mounting collect! (conj n-coord idx) (val-of-first children) (, false)
                    recur (rest children) (inc idx)
              true $ js/console.warn "\"Unknown entry for mounting:" tree
        |collect-unmounting $ quote
          defn collect-unmounting (collect! n-coord tree at-place?)
            cond
                component? tree
                let
                    effects $ :effects tree
                  collect-unmounting collect! n-coord (:tree tree) false
                  when (not $ empty? effects)
                    &doseq (effect effects)
                      let
                          method $ :method effect
                        collect! $ [] op/effect-unmount n-coord
                          fn (target)
                            method (:args effect) ([] :unmount target at-place?)
              (element? tree)
                loop
                    children $ :children tree
                    idx 0
                  when (not $ empty? children)
                    collect-unmounting collect! (conj n-coord idx) (val-of-first children) (, false)
                    recur (rest children) (inc idx)
              true $ js/console.warn "\"Unknown entry for unmounting:" tree
        |collect-updating $ quote
          defn collect-updating (collect! action n-coord old-tree new-tree)
            let
                effects $ :effects new-tree
              when (not $ empty? effects) (; js/console.log "\"collect update" n-coord $ :effects new-tree)
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
                        , n-coord
                        fn (target)
                          method (:args new-effect) ([] action target)
      :proc $ quote ()
    |respo.controller.client $ {}
      :ns $ quote
        ns respo.controller.client $ :require ([] respo.render.patch :refer $ [] apply-dom-changes) ([] respo.util.format :refer $ [] event->edn) ([] respo.render.dom :refer $ [] make-element)
      :defs $ {}
        |activate-instance! $ quote
          defn activate-instance! (entire-dom mount-point deliver-event)
            let
                listener-builder $ fn (event-name) (build-listener event-name deliver-event)
              aset mount-point |innerHTML |
              .appendChild mount-point $ make-element entire-dom listener-builder
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
              ; echo "\"changes" changes
              apply-dom-changes changes mount-point listener-builder
      :proc $ quote ()
    |respo.util.id $ {}
      :ns $ quote (ns respo.util.id)
      :defs $ {}
        |*cached-id $ quote (defatom *cached-id 0)
        |get-id! $ quote
          defn get-id! () (swap! *cached-id inc) @*cached-id
      :proc $ quote ()
    |respo.render.diff $ {}
      :ns $ quote
        ns respo.render.diff $ :require ([] respo.util.format :refer $ [] purify-element) ([] respo.util.detect :refer $ [] component? element?) ([] respo.schema.op :as op) ([] respo.util.comparator :refer $ [] compare-xy) ([] respo.render.effect :refer $ [] collect-mounting collect-updating collect-unmounting) ([] respo.util.list :refer $ [] val-of-first)
      :defs $ {}
        |find-children-diffs $ quote
          defn find-children-diffs (collect! n-coord index old-children new-children) (; .log js/console "|diff children:" n-coord index old-children new-children)
            let
                was-empty? $ empty? old-children
                now-empty? $ empty? new-children
              cond
                  and was-empty? now-empty?
                  , nil
                (and was-empty? $ not now-empty?)
                  let
                      element $ val-of-first new-children
                    collect! $ [] op/append-element n-coord (purify-element element)
                    collect-mounting collect! (conj n-coord index) element true
                    recur collect! n-coord (inc index) ([]) (rest new-children)
                (and (not was-empty?) now-empty?)
                  do
                    collect-unmounting collect! (conj n-coord index) (val-of-first old-children) (, true)
                    collect! $ [] op/rm-element (conj n-coord index) nil
                    recur collect! n-coord index (rest old-children) ([])
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
                        find-element-diffs collect! (conj n-coord index) old-element new-element
                        recur collect! n-coord (inc index) old-follows new-follows
                    (and x1-remains? $ not y1-existed?)
                      do
                        collect! $ let
                            element $ val-of-first new-children
                          [] op/add-element (conj n-coord index) (purify-element element)
                        collect-mounting collect! (conj n-coord index) (val-of-first new-children) (, true)
                        recur collect! n-coord (inc index) old-children new-follows
                    (and (not x1-remains?) y1-existed?)
                      do
                        collect-unmounting collect! (conj n-coord index) (val-of-first old-children) (, true)
                        collect! $ [] op/rm-element (conj n-coord index) nil
                        recur collect! n-coord index old-follows new-children
                    true $ let
                        xi $ .indexOf new-keys x1
                        yi $ .indexOf old-keys y1
                        first-old-entry $ first old-children
                        first-new-entry $ first new-children
                      ; println |index: xi yi
                      if (<= xi yi)
                        let
                            new-element $ val-of-first new-children
                          collect! $ [] op/add-element (conj n-coord index) (purify-element new-element)
                          collect-mounting collect! (conj n-coord index) (val-of-first new-children) (, true)
                          recur collect! n-coord (inc index) old-children new-follows
                        do
                          collect-unmounting collect! (conj n-coord index) (val-of-first old-children) (, true)
                          collect! $ [] op/rm-element (conj n-coord index) nil
                          recur collect! n-coord index old-follows new-children
        |find-element-diffs $ quote
          defn find-element-diffs (collect! n-coord old-tree new-tree) (; .log js/console "|element diffing:" n-coord old-tree new-tree)
            cond
                identical? old-tree new-tree
                , nil
              (and (component? old-tree) (component? new-tree))
                if
                  = (:name old-tree) (:name new-tree)
                  do (collect-updating collect! :before-update n-coord old-tree new-tree)
                    find-element-diffs collect! n-coord (:tree old-tree) (:tree new-tree)
                    collect-updating collect! :update n-coord old-tree new-tree
                  do (collect-unmounting collect! n-coord old-tree true)
                    find-element-diffs collect! n-coord (:tree old-tree) (:tree new-tree)
                    collect-mounting collect! n-coord new-tree true
              (and (component? old-tree) (element? new-tree))
                do (collect-unmounting collect! n-coord old-tree true)
                  recur collect! n-coord (:tree old-tree) new-tree
              (and (element? old-tree) (component? new-tree))
                do (find-element-diffs collect! n-coord old-tree $ :tree new-tree) (collect-mounting collect! n-coord new-tree true)
              (and (element? old-tree) (element? new-tree))
                let
                    old-children $ :children old-tree
                    new-children $ :children new-tree
                  if
                    or
                      /= (:coord old-tree) (:coord new-tree)
                      /= (:name old-tree) (:name new-tree)
                      /= (:c-name old-tree) (:c-name new-tree)
                    do
                      collect! $ [] op/replace-element n-coord (purify-element new-tree)
                      , nil
                    do
                      find-props-diffs collect! n-coord (:attrs old-tree) (:attrs new-tree)
                      let
                          old-style $ :style old-tree
                          new-style $ :style new-tree
                        if (/= old-style new-style) (find-style-diffs collect! n-coord old-style new-style)
                      let
                          old-events $ keys
                            either (:event old-tree) ({})
                          new-events $ keys
                            either (:event new-tree) ({})
                          added-events $ difference new-events old-events
                          removed-events $ difference old-events new-events
                        &doseq (event-name added-events)
                          collect! $ [] op/set-event n-coord ([] event-name $ :coord new-tree)
                        &doseq (event-name removed-events) (collect! $ [] op/rm-event n-coord event-name)
                      find-children-diffs collect! n-coord 0 old-children new-children
              true $ js/console.warn "\"Diffing unknown params" old-tree new-tree
        |find-props-diffs $ quote
          defn find-props-diffs (collect! coord old-props new-props)
            ; .log js/console "|find props:" coord old-props new-props (count old-props) (count new-props)
            let
                was-empty? $ empty? old-props
                now-empty? $ empty? new-props
              cond
                  and was-empty? now-empty?
                  , nil
                (and was-empty? $ not now-empty?)
                  do
                    collect! $ [] op/add-prop coord (first new-props)
                    recur collect! coord old-props $ rest new-props
                (and (not was-empty?) now-empty?)
                  do
                    collect! $ [] op/rm-prop coord (key $ first old-props)
                    recur collect! coord (rest old-props) new-props
                true $ let
                    old-entry $ first old-props
                    new-entry $ first new-props
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
                    -1 $ do (collect! $ [] op/rm-prop coord old-k) (recur collect! coord old-follows new-props)
                    1 $ do (collect! $ [] op/add-prop coord new-entry) (recur collect! coord old-props new-follows)
                    0 $ do
                      if (/= old-v new-v) (collect! $ [] op/replace-prop coord new-entry)
                      recur collect! coord old-follows new-follows
        |find-style-diffs $ quote
          defn find-style-diffs (collect! coord old-style new-style)
            let
                was-empty? $ empty? old-style
                now-empty? $ empty? new-style
              if (identical? old-style new-style) nil $ cond
                  and was-empty? now-empty?
                  , nil
                (and was-empty? $ not now-empty?)
                  let
                      entry $ first new-style
                      follows $ rest new-style
                    collect! $ [] op/add-style coord entry
                    recur collect! coord old-style follows
                (and (not was-empty?) now-empty?)
                  let
                      entry $ first old-style
                      follows $ rest old-style
                    collect! $ [] op/rm-style coord (first entry)
                    recur collect! coord follows new-style
                true $ let
                    old-entry $ first old-style
                    new-entry $ first new-style
                    old-follows $ rest old-style
                    new-follows $ rest new-style
                  case
                    compare-xy (first old-entry) (first new-entry)
                    -1 $ do
                      collect! $ [] op/rm-style coord (first old-entry)
                      recur collect! coord old-follows new-style
                    1 $ do (collect! $ [] op/add-style coord new-entry) (recur collect! coord old-style new-follows)
                    0 $ do
                      if
                        not $ identical? (last old-entry) (last new-entry)
                        collect! $ [] op/replace-style coord new-entry
                      recur collect! coord old-follows new-follows
      :proc $ quote ()
    |respo.caches $ {}
      :ns $ quote
        ns respo.caches $ :require ([] memof.core :as memof)
      :defs $ {}
        |*memof-caches $ quote
          defatom *memof-caches $ memof/new-states
            {} (:trigger-loop 100) (:elapse-loop 600)
      :proc $ quote ()
      :configs $ {}
    |respo.test.html $ {}
      :ns $ quote
        ns respo.test.html $ :require ([] calcit-test.core :refer $ [] deftest is testing) ([] respo.core :refer $ [] html head title script div link textarea body) ([] respo.render.html :refer $ [] make-string)
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
                  div ({} $ :id |app) (div $ {})
            testing "|test generated HTML from tree" $ is
              = (slurp |test/examples/simple.html) (make-string tree-demo)
        |slurp $ quote
          defmacro slurp (file-path) (read-file file-path)
        |textarea-test $ quote
          deftest textarea-test $ let
              piece $ textarea ({} $ :value "|a\nb\nc\n\"\nd")
            testing "|test generated HTML from component" $ is (= "|<textarea value=\"a&#13;&#10;b&#13;&#10;c&#13;&#10;&quot;&#13;&#10;d\">a&#13;&#10;b&#13;&#10;c&#13;&#10;&quot;&#13;&#10;d</textarea>" $ make-string piece)
        |todolist-store $ quote
          def todolist-store $ []
            {} (:id 101) (:text |101)
            {} (:id 102) (:text |102)
        |nil-prop-test $ quote
          deftest nil-prop-test $ let
              piece $ script
                {} (:src "\"a.js") (:defer nil)
            testing "|test generate script with nil" $ is (= "|<script src=\"a.js\"></script>" $ make-string piece)
        |run-tests $ quote
          defn run-tests () (html-quote-test) (nil-prop-test) (simple-html-test) (textarea-test)
      :proc $ quote
          defn main! () (run-tests)
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
        ns respo.render.patch $ :require ([] respo.util.format :refer $ [] dashed->camel event->prop ensure-string) ([] respo.render.dom :refer $ [] make-element style->string) ([] respo.schema.op :as op)
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
          defn replace-element (target op listener-builder)
            let
                new-element $ make-element op listener-builder
                parent-element $ .-parentElement target
              .insertBefore parent-element new-element target
              .remove target
        |append-element $ quote
          defn append-element (target op listener-builder)
            let
                new-element $ make-element op listener-builder
              .appendChild target new-element
        |add-event $ quote
          defn add-event (target op-data listener-builder)
            let[] (event-name coord) op-data $ let
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
                prop-name $ prop-name (aset target prop-name prop-value)
        |replace-prop $ quote
          defn replace-prop (target op)
            let[] (p prop-value) op $ let
                prop-name $ dashed->camel (turn-string p)
              if (= prop-name |value)
                if (/= prop-value $ .-value target) (aset target prop-name prop-value)
                aset target prop-name prop-value
        |apply-dom-changes $ quote
          defn apply-dom-changes (changes mount-point listener-builder)
            let
                root $ .-firstElementChild mount-point
              &doseq (op changes)
                let
                    op-type $ get op 0
                    coord $ get op 1
                    op-data $ get op 2
                    target $ find-target root coord
                  cond
                      = op-type op/replace-prop
                      replace-prop target op-data
                    (= op-type op/add-prop)
                      add-prop target op-data
                    (= op-type op/rm-prop)
                      rm-prop target op-data
                    (= op-type op/add-style)
                      add-style target op-data
                    (= op-type op/replace-style)
                      replace-style target op-data
                    (= op-type op/rm-style)
                      rm-style target op-data
                    (= op-type op/set-event)
                      add-event target op-data listener-builder
                    (= op-type op/rm-event)
                      rm-event target op-data
                    (= op-type op/add-element)
                      add-element target op-data listener-builder
                    (= op-type op/rm-element)
                      rm-element target op-data
                    (= op-type op/replace-element)
                      replace-element target op-data listener-builder
                    (= op-type op/append-element)
                      append-element target op-data listener-builder
                    (= op-type op/effect-mount)
                      run-effect target op-data coord
                    (= op-type op/effect-unmount)
                      run-effect target op-data coord
                    (= op-type op/effect-update)
                      run-effect target op-data coord
                    (= op-type op/effect-before-update)
                      run-effect target op-data coord
                    true $ println "|not implemented:" op-type coord op-data
        |add-style $ quote
          defn add-style (target op)
            let[] (p v) op $ let
                style-name $ dashed->camel (turn-string p)
                style-value $ ensure-string v
              aset (.-style target) style-name style-value
        |rm-style $ quote
          defn rm-style (target op)
            let
                style-name $ dashed->camel (turn-string op)
              aset (.-style target) style-name nil
        |run-effect $ quote
          defn run-effect (target op-data coord)
            if (some? target) (op-data target) (js/console.warn "\"Unknown effects target:" $ pr-str coord)
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
                if (some? child) (recur child $ rest coord) (, nil)
        |add-element $ quote
          defn add-element (target op listener-builder)
            let
                new-element $ make-element op listener-builder
                parent-element $ .-parentElement target
              .insertBefore parent-element new-element target
      :proc $ quote ()
    |respo.app.comp.todolist $ {}
      :ns $ quote
        ns respo.app.comp.todolist $ :require ([] respo.core :refer $ [] defcomp div span input <> list-> defeffect >>) ([] respo.util.format :refer $ [] hsl) ([] respo.app.comp.task :refer $ [] comp-task) ([] respo.comp.space :refer $ [] =<) ([] respo.comp.inspect :refer $ [] comp-inspect) ([] respo.app.comp.zero :refer $ [] comp-zero) ([] respo.app.comp.wrap :refer $ [] comp-wrap) ([] respo.util.dom :refer $ [] text-width time!) ([] respo.app.style.widget :as widget)
      :defs $ {}
        |style-root $ quote
          def style-root $ {} (:color :black) (:background-color $ hsl 120 20 98) (:line-height |24px) ("\"font-size" 16) (:padding 10) (:font-family "|\"微软雅黑\", Verdana")
        |style-list $ quote
          def style-list $ {} (:color :black) (:background-color $ hsl 120 20 98)
        |style-toolbar $ quote
          def style-toolbar $ {} (:display :flex) (:flex-direction :row) (:justify-content :start) (:padding "\"4px 0") (:white-space :nowrap)
        |style-panel $ quote
          def style-panel $ {} (:display :flex) (:margin-bottom 4)
        |on-test $ quote
          defn on-test (e dispatch!) (println "|trigger test!") (run-test! dispatch! $ [])
        |on-focus $ quote
          defn on-focus (e dispatch!) (println "|Just focused~")
        |effect-focus $ quote
          defeffect effect-focus () ([] action parent at-place?) (js/console.log "\"todolist effect:" action)
        |run-test! $ quote
          defn run-test! (dispatch! acc)
            let
                started $ time!
              dispatch! :clear nil
              loop
                  x 20
                dispatch! :add |empty
                if (> x 0) (recur $ dec x)
              loop
                  x 20
                dispatch! :hit-first $ rand
                if (> x 0) (recur $ dec x)
              dispatch! :clear nil
              loop
                  x 10
                dispatch! :add "|only 10 items"
                if (> x 0) (recur $ dec x)
              let
                  cost $ - (time!) started
                if
                  < (count acc) 40
                  js/setTimeout
                    fn () (run-test! dispatch! $ conj acc cost)
                    , 0
                  println |result: $ sort identity acc
        |initial-state $ quote
          def initial-state $ {} (:draft |) (:locked? false)
        |comp-todolist $ quote
          defcomp comp-todolist (states tasks)
            let
                cursor $ either (:cursor states) ([])
                state $ either (:data states) initial-state
              [] (effect-focus)
                div ({} $ :style style-root)
                  comp-inspect |States state $ {} (:left |80px)
                  div ({} $ :style style-panel)
                    input $ {} (:placeholder "\"Text") (:value $ :draft state)
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
                        :on-click $ fn (e d!) (d! :add $ :draft state) (d! cursor $ assoc state :draft |)
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
                    ->> (either tasks $ []) (reverse)
                      map $ fn (task)
                        let
                            task-id $ :id task
                          [] task-id $ comp-task (>> states task-id) task
                  if
                    > (count tasks) 0
                    div
                      {} (:spell-check true) (:style style-toolbar)
                      div
                        {} (:style widget/button)
                          :on-click $ if (not $ :locked? state)
                            fn (e d!) (d! :clear nil)
                        <> |Clear2
                      =< 8 nil
                      div
                        {} (:style widget/button)
                          :on-click $ fn (e d!) (d! cursor $ update state :locked? not)
                        <> $ str |Lock? (:locked? state)
                      =< 8 nil
                      comp-wrap $ comp-zero
                  comp-inspect |Tasks tasks $ {} (:left 500) (:top 20)
      :proc $ quote ()
    |respo.comp.space $ {}
      :ns $ quote
        ns respo.comp.space $ :require ([] respo.core :refer $ [] div defcomp)
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
              (keyword? x)
                , 1
              (string? x)
                , 2
              true $ raise "|use number, keyword or string in coord!"
        |compare $ quote
          defn compare (x y)
            cond
                < x y
                , -1
              (> x y)
                , 1
              true 0
      :proc $ quote ()
    |respo.test.comp.task $ {}
      :ns $ quote
        ns respo.test.comp.task $ :require ([] respo.util.format :refer $ [] hsl) ([] respo.core :refer $ defcomp div span)
      :defs $ {}
        |comp-task $ quote
          defcomp comp-task (task)
            div ({})
              span $ {} (:inner-text $ :text task)
      :proc $ quote ()
    |respo.util.detect $ {}
      :ns $ quote (ns respo.util.detect)
      :defs $ {}
        |=seq $ quote
          defn =seq (xs ys)
            let
                a-empty? $ empty? xs
                b-empty? $ empty? ys
              cond
                  and a-empty? b-empty?
                  , true
                (or a-empty? b-empty?)
                  , false
                (= (first xs) (first ys))
                  recur (rest xs) (rest ys)
                true false
        |component? $ quote
          defn component? (x)
            and (map? x) (= :component $ :respo-node x)
        |effect? $ quote
          defn effect? (x)
            and (map? x) (= :effect $ :respo-node x)
        |element? $ quote
          defn element? (x)
            and (map? x) (= :element $ :respo-node x)
      :proc $ quote ()
    |respo.app.comp.task $ {}
      :ns $ quote
        ns respo.app.comp.task $ :require ([] respo.core :refer $ [] defcomp div input span button <> defeffect) ([] respo.util.format :refer $ [] hsl) ([] respo.comp.space :refer $ [] =<) ([] respo.comp.inspect :refer $ [] comp-inspect) ([] respo.app.style.widget :as widget)
      :defs $ {}
        |comp-task $ quote
          defcomp comp-task (states task)
            let
                cursor $ :cursor states
                state $ either (:data states) |
              [] (effect-log task)
                div ({} $ :style style-task)
                  comp-inspect |Task task $ {} (:left 200)
                  button $ {}
                    :style $ merge style-done
                      {} $ "\"background-color"
                        if (:done? task) (hsl 200 20 80) (hsl 200 80 70)
                    :on-click $ fn (e d!) (d! :toggle $ :id task)
                  =< 8 nil
                  input $ {} (:value $ :text task) (:style widget/input)
                    :on-input $ fn (e d!)
                      let
                          task-id $ :id task
                          text $ :value e
                        d! :update $ {} (:id task-id) (:text text)
                  =< 8 nil
                  input $ {} (:value state) (:style widget/input)
                    :on-input $ fn (e d!) (d! cursor $ :value e)
                  =< 8 nil
                  div
                    {} (:style widget/button)
                      :on-click $ fn (e d!) (d! :remove $ :id task)
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
    |respo.app.comp.caches $ {}
      :ns $ quote
        ns respo.app.comp.caches $ :require ([] respo.core :refer $ [] defcomp defplugin div button span >>) ([] respo.caches :refer $ [] *memof-caches) ([] respo.comp.space :refer $ [] =<) ([] respo.app.style.widget :as widget) ([] memof.core :as memof)
      :defs $ {}
        |comp-caches $ quote
          defcomp comp-caches (states)
            let
                value-plugin $ use-demo (>> states :count)
              div
                {} $ :style ({} $ :padding 8)
                div ({})
                  div $ {} (:inner-text "\"Loop") (:style widget/button)
                    :on-click $ fn (e d!) (memof/new-loop! *memof-caches) (println @*memof-caches)
                  =< 8 nil
                  div $ {} (:inner-text "\"Add cache") (:style widget/button)
                    :on-click $ fn (e d!)
                      memof/write-record! *memof-caches identity ([] 1 2 3) 6
                  =< 8 nil
                  div $ {} (:inner-text "\"Access") (:style widget/button)
                    :on-click $ fn (e d!)
                      println $ memof/access-record *memof-caches identity ([] 1 2 3)
                  =< 8 nil
                  div $ {} (:inner-text "\"Reset") (:style widget/button)
                    :on-click $ fn (e d!) (memof/reset-entries! *memof-caches)
                  =< 8 nil
                  div $ {} (:inner-text "\"GC") (:style widget/button)
                    :on-click $ fn (e d!) (memof/perform-gc! *memof-caches)
                =< nil 8
                div ({})
                  div $ {} (:inner-text "\"Trigger") (:style widget/button)
                    :on-click $ fn (e d!)
                        :toggle value-plugin
                        , d!
                :ui value-plugin
        |use-demo $ quote
          defplugin use-demo (states)
            let
                cursor $ :cursor states
                state $ either (:data states) ({} $ :status true)
              {}
                :ui $ span
                  {} $ :inner-text (str "\"status: " $ :status state)
                :toggle $ fn (d!) (d! cursor $ update state :status not)
      :proc $ quote ()
    |respo.test.main $ {}
      :ns $ quote
        ns respo.test.main $ :require ([] respo.test.html :as html) ([] calcit-test.core :refer $ [] deftest testing is) ([] respo.util.list :refer $ [] pick-attrs pick-event)
      :defs $ {}
        |main! $ quote
          defn main! () (html/run-tests) (test-pick-attrs) (test-pick-event)
        |reload! $ quote
          defn ^:dev/after-load reload! () (main!)
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
        |component $ quote
          def component $ {} (:name nil) (:respo-node :component) (:coord nil) (:args $ []) (:render nil) (:effects $ []) (:tree nil)
        |effect $ quote
          def effect $ {} (:name nil) (:respo-node :effect) (:coord $ []) (:args $ [])
            :method $ fn (args $ [] action parent at-place?)
        |element $ quote
          def element $ {} (:name :div) (:respo-node :element) (:coord nil) (:attrs nil) (:style nil) (:event nil) (:children $ {})
        |cache-info $ quote
          def cache-info $ {} (:value nil) (:initial-loop nil) (:last-hit nil) (:hit-times 0)
      :proc $ quote ()
    |respo.comp.inspect $ {}
      :ns $ quote
        ns respo.comp.inspect $ :require ([] respo.core :refer $ [] defcomp pre <>)
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
              (nil? data)
                , |nil
              (number? data)
                str data
              (keyword? data)
                str data
              (boolean? data)
                str data
              (fn? data)
                , |Fn
              true $ pr-str data
        |on-click $ quote
          defn on-click (data)
            fn (e dispatch!)
              let
                  raw $ pr-str data
                if
                  > (count raw) 60
                  .log js/console $ clj->js data
                  .log js/console raw
        |style-data $ quote
          def style-data $ {} (:position :absolute) (:background-color "\"hsl(240,100%,0%)") (:color :white) (:opacity 0.2) (:font-size |12px) (:font-family |Avenir,Verdana) (:line-height 1.4) (:padding "|2px 6px") (:border-radius |4px) (:max-width 160) (:max-height 32) (:white-space :normal) (:overflow :ellipsis) (:cursor :default)
      :proc $ quote ()
    |respo.controller.resolve $ {}
      :ns $ quote
        ns respo.controller.resolve $ :require ([] respo.util.detect :refer $ [] component? element?) ([] respo.util.list :refer $ [] filter-first)
      :defs $ {}
        |build-deliver-event $ quote
          defn build-deliver-event (*global-element dispatch!)
            fn (coord event-name simple-event) (; echo "\"event coord" coord)
              let
                  target-element $ find-event-target @*global-element coord event-name
                  target-listener $ if (some? target-element)
                    get (:event target-element) event-name
                    do (js/console.warn "\"found no element" coord event-name) nil
                  dispatch-wrap $ fn (op data)
                    cond
                        list? op
                        dispatch! :states $ [] op data
                      true $ dispatch! op data
                if (some? target-listener)
                  do (; println "|listener found:" coord event-name) (target-listener simple-event dispatch-wrap)
                  ; println "|found no listener:" coord event-name
        |find-event-target $ quote
          defn find-event-target (element coord event-name) (; echo "\"looking for" coord event-name)
            let
                target-element $ get-markup-at element coord
                element-exists? $ some? target-element
              ; println "|target element:" $ pr-str event-name
              if
                and element-exists? (some? $ :event target-element)
                  some? $ get (:event target-element) event-name
                , target-element
                if (= coord $ []) (, nil)
                  if element-exists?
                    recur element
                      slice coord 0 $ - (count coord) 1
                      , event-name
                    , nil
        |get-markup-at $ quote
          defn get-markup-at (markup coord) (; println |markup: $ pr-str coord)
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
                  raise $ str "|child not found:" coord (map first $ :children markup)
      :proc $ quote ()
    |respo.render.expand $ {}
      :ns $ quote
        ns respo.render.expand $ :require ([] respo.util.detect :refer $ [] component? element? effect? =seq) ([] respo.util.list :refer $ [] filter-first pick-attrs filter-first) ([] respo.schema :as schema) ([] respo.caches :refer $ [] *memof-caches) ([] memof.core :as memof)
      :defs $ {}
        |render-children $ quote
          defn render-children (children coord) (; println "|render children:" children)
            ->> children $ map
              fn (pair)
                let
                    k $ first pair
                    child-element $ last pair
                  [] k $ if (some? child-element) (render-markup child-element $ conj coord k) (, nil)
        |render-component $ quote
          defn render-component (markup coord)
            let
                args $ :args markup
                new-coord $ conj coord (:name markup)
                render $ :render markup
                markup-tree $ apply render args
              ; println "\"render component" $ :name markup
              ; println "|no cache:" coord
              cond
                  or (component? markup-tree) (element? markup-tree)
                  merge markup $ {} (:coord coord) (:tree $ render-markup markup-tree new-coord)
                (list? markup-tree)
                  let
                      node-tree $ filter-first
                        fn (x)
                          and (map? x)
                            or (component? x) (element? x)
                        , markup-tree
                      effects-list $ ->> markup-tree (filter effect?)
                    merge markup $ {} (:coord coord) (:tree $ render-markup node-tree new-coord) (:effects effects-list)
                true $ do (js/console.warn "\"Unknown markup:" markup) nil
        |render-element $ quote
          defn render-element (markup coord)
            let
                children $ :children markup
                child-elements $ render-children children coord
              ; js/console.log "|children should have order:" children child-elements markup
              merge markup $ {} (:coord coord) (:children child-elements)
        |render-markup $ quote
          defn render-markup (markup & args)
            let
                coord $ either (first args) ([])
              cond
                  component? markup
                  let
                      v $ memof/access-record *memof-caches (:render markup) (:args markup)
                    either v $ let
                        result $ render-component markup coord
                      ; println "\"[Respo] reusing component from memof" $ :name markup
                      memof/write-record! *memof-caches (:render markup) (:args markup) (, result)
                      , result
                (element? markup)
                  render-element markup coord
                true $ do (js/console.log "\"Markup:" markup) (raise $ str "\"expects component or element!")
      :proc $ quote ()
    |respo.core $ {}
      :ns $ quote
        ns respo.core
          :require ([] respo.render.expand :refer $ [] render-markup) ([] respo.controller.resolve :refer $ [] build-deliver-event) ([] respo.render.diff :refer $ [] find-element-diffs) ([] respo.render.effect :refer $ [] collect-mounting) ([] respo.util.format :refer $ [] purify-element) ([] respo.controller.client :refer $ [] activate-instance! patch-instance!) ([] respo.util.list :refer $ [] pick-attrs pick-event val-exists? detect-func-in-map?) ([] respo.util.detect :refer $ [] component? element?) ([] respo.schema :as schema) ([] respo.util.comparator :refer $ [] compare-xy) ([] memof.core :as memof) ([] respo.caches :refer $ [] *memof-caches)
          :require-macros $ [] respo.core
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
            and
              > (count children) 0
              not $ any? list? children
            str "|For rendering lists, please use list-> , got: " $ pr-str children
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
              merge schema/element $ {} (:name tag-name) (:coord nil) (:attrs attrs) (:style styles) (:event event) (:children children-nodes)
        |img $ quote
          defn img (props & children) (create-element :img props & $ map confirm-child children)
        |body $ quote
          defn body (props & children) (create-element :body props & $ map confirm-child children)
        |render! $ quote
          defn render! (target markup dispatch!)
            if (some? @*global-element) (rerender-app! target markup dispatch!) (mount-app! target markup dispatch!)
        |mount-app! $ quote
          defn mount-app! (target markup dispatch!)
            ; assert
              or (nil? target) (= element-type $ .-__proto__ target)
              , "|1st argument should be an element"
            ; assert (component? markup) "|2nd argument should be a component"
            let
                element $ render-markup markup
                deliver-event $ build-deliver-event *global-element dispatch!
                *changes *dom-changes
                collect! $ fn (x)
                  assert (= 3 $ count x) (, "|change op should has length 3")
                  swap! *changes conj x
              reset! *changes $ []
              ; println "|mount app"
              activate-instance! (purify-element element) target deliver-event
              collect-mounting collect! ([]) element true
              patch-instance! @*changes target deliver-event
              reset! *global-element element
        |*dom-changes $ quote (defatom *dom-changes $ [])
        |option $ quote
          defn option (props & children) (create-element :option props & $ map confirm-child children)
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
              merge schema/element $ {} (:name tag-name) (:coord nil) (:attrs attrs) (:style styles) (:event event) (:children child-map)
        |realize-ssr! $ quote
          defn realize-ssr! (target markup dispatch!)
            assert (instance? element-type target) "|1st argument should be an element"
            assert (component? markup) "|2nd argument should be a component"
            let
                element $ render-markup markup
                app-element $ .-firstElementChild target
                *changes $ atom ([])
                collect! $ fn (x)
                  assert (= 3 $ count x) (, "|change op should has length 3")
                  swap! *changes conj x
                deliver-event $ build-deliver-event *global-element dispatch!
              if (nil? app-element) (raise "\"Detected no element from SSR!")
              compare-to-dom! (purify-element element) app-element
              collect-mounting collect! ([]) element true
              patch-instance! @*changes target deliver-event
              reset! *global-element $ mute-element element
        |style $ quote
          defn style (props & children) (create-element :style props & $ map confirm-child children)
        |span $ quote
          defn span (props & children) (create-element :span props & $ map confirm-child children)
        |script $ quote
          defn script (props & children) (create-element :script props & $ map confirm-child children)
        |select $ quote
          defn select (props & children) (create-element :select props & $ map confirm-child children)
        |defeffect $ quote
          defmacro defeffect (effect-name args params & body)
            assert "\"args in symbol" $ and (list? args) (every? symbol? args)
            assert "\"params like [action el at-place?]" $ and (list? params) (every? symbol? params)
            quote-replace $ defn ~effect-name ~args
              {}
                :name $ ~ (turn-keyword effect-name)
                :respo-node :effect
                :coord $ []
                :args $ [] ~@args
                :method $ fn (~ $ concat args params)
                  ~@ $ if (empty? body) (quote-replace $ echo "\"WARNING:" ~effect-name "\"lack code for handling effects!" ) (, body)
        |list-> $ quote
          defn list-> (props children) (create-list-element :div props children)
        |a $ quote
          defn a (props & children) (create-element :a props & $ map confirm-child children)
        |input $ quote
          defn input (props & children) (create-element :input props & $ map confirm-child children)
        |rerender-app! $ quote
          defn rerender-app! (target markup dispatch!) (memof/new-loop! *memof-caches)
            let
                element $ render-markup markup
                deliver-event $ build-deliver-event *global-element dispatch!
                *changes $ do (reset! *rereder-changes $ []) (, *rereder-changes)
                collect! $ fn (x)
                  assert (= 3 $ count x) (, "|change op should has length 3")
                  swap! *changes conj x
              ; println @*global-element
              ; println |Changes: $ pr-str
                mapv (partial take 2) @*changes
              find-element-diffs collect! ([]) @*global-element element
              let
                  logger @*changes-logger
                if (some? logger) (logger @*global-element element @*changes)
              patch-instance! @*changes target deliver-event
              reset! *global-element element
        |head $ quote
          defn head (props & children) (create-element :head props & $ map confirm-child children)
        |title $ quote
          defn title (props & children) (create-element :title props & $ map confirm-child children)
        |textarea $ quote
          defn textarea (props & children) (create-element :textarea props & $ map confirm-child children)
        |link $ quote
          defn link (props & children) (create-element :link props & $ map confirm-child children)
        |div $ quote
          defn div (props & children) (create-element :div props & $ map confirm-child children)
        |pre $ quote
          defn pre (props & children) (create-element :pre props & $ map confirm-child children)
        |<> $ quote
          defn <> (content & args)
            let
                style $ first args
              span $ {} (:inner-text content) (:style style)
        |element-type $ quote
          def element-type $ if (exists? js/Element) js/Element js/Error
        |*global-element $ quote (defatom *global-element nil)
        |call-plugin-func $ quote
          defn call-plugin-func (f params)
            if
              or (any? fn? params) (any? detect-func-in-map? params)
              apply f params
              let
                  v $ memof/access-record *memof-caches f params
                if (some? v) v $ let
                    result $ apply f params
                  memof/write-record! *memof-caches f params result
                  , result
        |html $ quote
          defn html (props & children) (create-element :html props & $ map confirm-child children)
        |clear-cache! $ quote
          defn clear-cache! () (memof/reset-entries! *memof-caches)
        |defplugin $ quote
          defmacro defplugin (x params & body) (assert "\"expected symbol" $ symbol? x) (assert "\"expected params" $ list? params)
            assert "\"expected some result" $ > (count body) 0
            quote-replace $ defn ~x ~params
              call-plugin-func (defn ~x ~params ~@body) ([] ~@params)
        |confirm-child $ quote
          defn confirm-child (x)
            when
              not $ or (nil? x) (element? x) (component? x)
              raise $ str "\"Invalid data in elements tree: " (pr-str x)
            , x
        |*rereder-changes $ quote (defatom *rereder-changes $ [])
        |defcomp $ quote
          defmacro defcomp (comp-name params & body) (assert "\"expected symbol of comp-name" $ symbol? comp-name) (assert "\"expected list for params" $ list? params)
            assert "\"some component retured" $ &> (count body) 0
            quote-replace $ defn ~comp-name (~ params)
              {} (:respo-node :component) (:effects $ [])
                :args $ [] (~@ params)
                :name $ ~ (turn-keyword comp-name)
                :render $ defn ~comp-name (~ params) (~@ body)
        |button $ quote
          defn button (props & children) (create-element :button props & $ map confirm-child children)
      :proc $ quote ()
    |respo.util.dom $ {}
      :ns $ quote
        ns respo.util.dom $ :require ([] respo.util.list :refer $ [] val-of-first)
      :defs $ {}
        |compare-to-dom! $ quote
          defn compare-to-dom! (vdom element)
            ; println "\"compare" (:name vdom)
              map :name $ vals (:children vdom)
            ; .log js/console element
            let
                virtual-name $ name (:name vdom)
                real-name $ string/lower-case (.-tagName element)
              when (/= virtual-name real-name)
                .warn js/console "\"SSR checking: tag names do not match:" (pr-str $ dissoc vdom :children) (, element)
            if
              /= (count $ :children vdom) (.-length $ .-children element)
              let
                  maybe-html $ :innerHTML
                    into ({}) (:attrs vdom)
                if (some? maybe-html)
                  when (= maybe-html $ .-innerHTML element) (.warn js/console "\"SSR checking: noticed dom containing innerHTML:" element)
                  do (.error js/console "\"SSR checking: children sizes do not match!")
                    .log js/console "\"virtual:" $ ->> vdom :children (map last) (map :name) (, pr-str)
                    .log js/console "\"real:" $ .-children element
              let
                  real-children $ .-children element
                loop
                    acc 0
                    other-children $ :children vdom
                  when (not $ empty? other-children)
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
              do (aset shared-canvas-context |font $ str font-size "|px " font-family) (.-width $ .measureText shared-canvas-context content)
              , nil
        |time! $ quote
          defn time! () (.now js/Date)
      :proc $ quote ()
