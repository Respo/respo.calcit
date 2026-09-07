{}
  :schema-version 1
  :feature 'typed-dom-patch
  :doc "|Replace Respo's anonymous Tag-plus-positional-tuple DOM command protocol with one nominal DomPatch enum. Producer inventory: find-element-diffs emits add/rm/replace-element, set/rm-event, and ref effect-before-update/effect-update; find-children-diffs emits add/rm/append-element; find-props-diffs emits add/rm/replace-prop; find-style-diffs emits add/rm/replace-style; collect-mounting and collect-own-mounting emit effect-mount; collect-unmounting and collect-own-unmounting emit effect-unmount; collect-updating emits effect-before-update/effect-update. apply-dom-changes is the sole exhaustive consumer and preserves the existing operation order. Logical coordinates remain List<Dynamic>, DOM coordinates remain List<Number>, virtual nodes narrow to Struct, event/property/style names narrow to Tag, heterogeneous DOM values remain Dynamic only at the host-property boundary, and lifecycle callbacks remain Fn only at the final DOM adapter boundary."
  :roots $ #{} 'respo.render.patch/apply-dom-changes
  :definitions $ {}
    'respo.schema/DomPatch $ {}
      :mode :ensure
      :kind :data
      :doc "|Nominal internal command protocol shared by Respo's virtual-tree diff producers and sole DOM patch consumer."
      :schema $ :: 'EnumDef
      :code $ quote
        defenum DomPatch
          (:replace-prop (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag 'Dynamic)
          (:add-prop (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag 'Dynamic)
          (:rm-prop (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag)
          (:add-style (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag 'Dynamic)
          (:replace-style (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag 'Dynamic)
          (:rm-style (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag)
          (:set-event (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag)
          (:rm-event (:: 'List 'Dynamic) (:: 'List 'Number) 'Tag)
          (:add-element (:: 'List 'Dynamic) (:: 'List 'Number) 'Struct)
          (:rm-element (:: 'List 'Dynamic) (:: 'List 'Number))
          (:replace-element (:: 'List 'Dynamic) (:: 'List 'Number) 'Struct)
          (:append-element (:: 'List 'Dynamic) (:: 'List 'Number) 'Struct)
          (:effect-mount (:: 'List 'Dynamic) (:: 'List 'Number) 'Fn)
          (:effect-unmount (:: 'List 'Dynamic) (:: 'List 'Number) 'Fn)
          (:effect-update (:: 'List 'Dynamic) (:: 'List 'Number) 'Fn)
          (:effect-before-update (:: 'List 'Dynamic) (:: 'List 'Number) 'Fn)
    'respo.render.diff/find-element-diffs $ {}
      :mode :external
      :kind :fn
      :doc "|Produce typed element, event, ref, and component lifecycle patches while preserving current ordering."
      :schema $ :: :fn
        {}
          :return 'Unit
          :args $ []
            :: :fn $ {}
              :return 'Unit
              :args $ [] 'respo.schema/DomPatch
            :: 'List 'Dynamic
            :: 'List 'Number
            , 'Dynamic 'Dynamic
          :features $ #{} :js-ffi
    'respo.render.diff/find-children-diffs $ {}
      :mode :external
      :kind :fn
      :doc "|Produce typed keyed-child insertion, append, and removal patches while preserving identity and order."
      :schema $ :: :fn
        {}
          :return 'Unit
          :args $ []
            :: :fn $ {}
              :return 'Unit
              :args $ [] 'respo.schema/DomPatch
            :: 'List 'Dynamic
            :: 'List 'Number
            , 'Number 'Dynamic 'Dynamic
          :features $ #{} :js-ffi
    'respo.render.diff/find-props-diffs $ {}
      :mode :external
      :kind :fn
      :doc "|Produce typed DOM property patches with Tag keys and host-boundary Dynamic values."
      :schema $ :: :fn
        {}
          :return 'Unit
          :args $ []
            :: :fn $ {}
              :return 'Unit
              :args $ [] 'respo.schema/DomPatch
            :: 'List 'Dynamic
            :: 'List 'Number
            , 'Dynamic 'Dynamic
    'respo.render.diff/find-style-diffs $ {}
      :mode :external
      :kind :fn
      :doc "|Produce typed style patches with Tag keys and host-boundary Dynamic values."
      :schema $ :: :fn
        {}
          :return 'Unit
          :args $ []
            :: :fn $ {}
              :return 'Unit
              :args $ [] 'respo.schema/DomPatch
            :: 'List 'Dynamic
            :: 'List 'Number
            :: 'List (:: 'List 'Dynamic)
            :: 'List (:: 'List 'Dynamic)
    'respo.render.effect/collect-mounting $ {}
      :mode :external
      :kind :fn
      :doc "|Produce typed mount callbacks in current traversal order."
      :schema $ :: :fn
        {}
          :return 'Unit
          :args $ []
            :: :fn $ {}
              :return 'Unit
              :args $ [] 'respo.schema/DomPatch
            :: 'List 'Dynamic
            :: 'List 'Number
            , 'Struct 'Bool
          :features $ #{} :js-ffi
    'respo.render.effect/collect-unmounting $ {}
      :mode :external
      :kind :fn
      :doc "|Produce typed unmount callbacks in current traversal order."
      :schema $ :: :fn
        {}
          :return 'Unit
          :args $ []
            :: :fn $ {}
              :return 'Unit
              :args $ [] 'respo.schema/DomPatch
            :: 'List 'Dynamic
            :: 'List 'Number
            , 'Struct 'Bool
          :features $ #{} :js-ffi
    'respo.render.effect/collect-updating $ {}
      :mode :external
      :kind :fn
      :doc "|Produce typed before-update and update callbacks in current lifecycle order."
      :schema $ :: :fn
        {}
          :return 'Unit
          :args $ []
            :: :fn $ {}
              :return 'Unit
              :args $ [] 'respo.schema/DomPatch
            , 'Tag
            :: 'List 'Dynamic
            :: 'List 'Number
            , 'respo.schema/Component 'respo.schema/Component
    'respo.render.effect/collect-own-mounting $ {}
      :mode :external
      :kind :fn
      :doc "|Produce typed component-local mount callbacks."
      :schema $ :: :fn
        {}
          :return 'Unit
          :args $ []
            :: :fn $ {}
              :return 'Unit
              :args $ [] 'respo.schema/DomPatch
            :: 'List 'Dynamic
            :: 'List 'Number
            , 'respo.schema/Component 'Bool
    'respo.render.effect/collect-own-unmounting $ {}
      :mode :external
      :kind :fn
      :doc "|Produce typed component-local unmount callbacks."
      :schema $ :: :fn
        {}
          :return 'Unit
          :args $ []
            :: :fn $ {}
              :return 'Unit
              :args $ [] 'respo.schema/DomPatch
            :: 'List 'Dynamic
            :: 'List 'Number
            , 'respo.schema/Component 'Bool
    'respo.render.patch/apply-dom-changes $ {}
      :mode :external
      :kind :fn
      :doc "|Exhaustively consume DomPatch values at the DOM host boundary without a catch-all branch."
      :schema $ :: :fn
        {}
          :return 'Unit
          :args $ [] (:: 'List 'respo.schema/DomPatch) 'respo.dom/DomElement 'Fn
          :features $ #{} :js-ffi
  :edges $ #{}
    :: :type 'respo.render.diff/find-element-diffs 'respo.schema/DomPatch
    :: :type 'respo.render.diff/find-children-diffs 'respo.schema/DomPatch
    :: :type 'respo.render.diff/find-props-diffs 'respo.schema/DomPatch
    :: :type 'respo.render.diff/find-style-diffs 'respo.schema/DomPatch
    :: :type 'respo.render.effect/collect-mounting 'respo.schema/DomPatch
    :: :type 'respo.render.effect/collect-unmounting 'respo.schema/DomPatch
    :: :type 'respo.render.effect/collect-updating 'respo.schema/DomPatch
    :: :type 'respo.render.effect/collect-own-mounting 'respo.schema/DomPatch
    :: :type 'respo.render.effect/collect-own-unmounting 'respo.schema/DomPatch
    :: :type 'respo.render.patch/apply-dom-changes 'respo.schema/DomPatch
