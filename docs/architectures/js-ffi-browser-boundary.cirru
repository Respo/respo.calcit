{}
  :schema-version 1
  :feature 'js-ffi-browser-boundary
  :doc "|Move Respo browser globals behind js-ffi while retaining respo.dom as the renderer-specific DOM contract. Respo narrows a js-ffi DomElementHost only at this adapter boundary; main, scheduling, CSS, canvas, and global keyboard code then call js-ffi wrappers instead of js/* globals."
  :roots $ #{} 'respo.ffi.browser/narrow-element
  :definitions $ {}
    'respo.ffi.browser/narrow-element $ {}
      :mode :ensure
      :kind :fn
      :doc "|Narrow the generic js-ffi DOM host to Respo's richer renderer DOM trait at the sole cross-library object boundary."
      :schema $ :: :fn
        {}
          :args $ [] 'js-ffi.browser/DomElementHost
          :return 'respo.dom/DomElement
      :params $ [] 'host-element
  :edges $ #{}
