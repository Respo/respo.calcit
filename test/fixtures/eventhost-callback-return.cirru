
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |js-ffi
  :entries $ {}
    :browser $ {} (:description |) (:init-fn 'js-ffi.browser-test/main!) (:mode :js) (:reload-fn 'js-ffi.browser-test/reload!) (:target :browser)
      :feature-policy $ {} $ :js-ffi :error
      :modules $ []
      :type-slots $ {}
    :default $ {} (:description |) (:init-fn 'js-ffi.browser/check-listener-return!) (:mode :js) (:reload-fn 'js-ffi.browser/check-listener-return!) (:target :browser)
      :feature-policy $ {} $ :js-ffi :error
      :modules $ []
      :type-slots $ {}
    :node $ {} (:description |) (:init-fn 'js-ffi.node-test/main!) (:mode :native) (:reload-fn 'js-ffi.node-test/reload!) (:target :node)
      :feature-policy $ {} $ :js-ffi :error
      :modules $ []
      :type-slots $ {}
  :files $ {}
    'js-ffi.browser $ %{} 'FileEntry
      :defs $ {}
        'EventHost $ %{} 'CodeEntry
          :doc "|External Event capability. Targets stay nullable opaque objects unless a specific adapter narrows them."
          :code $ quote $ deftrait EventHost (:event-type 'String)
            :target $ :: 'JsNullish 'JsObject
            :current-target $ :: 'JsNullish 'JsObject
            :default-prevented? 'Bool
            :event-phase 'Number
            .prevent-default! $ :: 'Fn $ {}
              :args $ [] 'js-ffi.browser/EventHost
              :return 'Unit
            .stop-propagation! $ :: 'Fn $ {}
              :args $ [] 'js-ffi.browser/EventHost
              :return 'Unit
          :examples $ [] $ quote EventHost
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:current-target |currentTarget) (:default-prevented? |defaultPrevented) (:event-phase |eventPhase) (:event-type |type) (:prevent-default! |preventDefault) (:stop-propagation! |stopPropagation)
          :schema $ :: 'Trait
          :tags $ #{} :ffi :js-host
        'check-listener-return! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn check-listener-return! ()
            event-listener-host $ fn (event) &unit
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'event-listener-host $ %{} 'CodeEntry
          :doc "|Validate an opaque host value as a browser Event listener callback."
          :code $ quote $ defn event-listener-host (value)
            unsafe-coerce (contract/expect-function |DOM.event-listener-host value)
              :: 'Fn $ {}
                :args $ [] 'js-ffi.browser/EventHost
                :return 'Unit
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'T
            :features $ #{} :js-ffi
            :generics $ [] 'T
            :return $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] 'js-ffi.browser/EventHost
      :ns $ %{} 'NsEntry
        :doc "|Typed browser JavaScript FFI with normalized Struct/Enum results and explicit external-object contracts for Window, Document, Location, Storage, DOM elements, and events."
        :code $ quote $ ns js-ffi.browser
          :require $ js-ffi.contract :as contract
    'js-ffi.contract $ %{} 'FileEntry
      :defs $ {} $ 'expect-function
        %{} 'CodeEntry
          :doc "|Validate that an opaque JavaScript value is a non-null JavaScript function and return its opaque host identity. Use a small typed adapter for its call schema and receiver contract."
          :code $ quote $ defn expect-function (label value)
            let
                kind $ if (js-nullish? value) |nullish $ js/typeof value
              if (= |function kind) (unsafe-coerce value JsObject)
                raise $ str "|JS FFI contract violation: " label "| expected Function, got " kind
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'String $ :: 'JsNullish 'JsObject
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry
        :doc "|Environment-independent typed contracts shared by Node.js and browser smoke tests."
        :code $ quote $ ns js-ffi.contract
