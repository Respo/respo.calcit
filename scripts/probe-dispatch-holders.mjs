// #195: isolated generic holder graph; does not replace the production renderer.
const fn = `:: 'Fn $ {} (:return 'Unit) (:args $ [] 'Op)`;
const handler = `:: 'Fn $ {} (:return 'Unit)
    :args $ [] (:: 'Map 'Tag 'Dynamic) (${fn})`;
const defs = [
  ['A', `defenum A (:clear)`, `'EnumDef`],
  ['B', `defenum B (:clear)`, `'EnumDef`],
  ['Controller', `defstruct Controller ([] 'Op)
  :dispatch $ :: 'Ref $ ${fn}`, `'StructDef`],
  ['Element', `defstruct Element ([] 'Op)
  :event $ :: 'Map 'Tag $ ${handler}
  :children $ :: 'List $ :: 'respo.probe.generic/Node 'Op`, `'StructDef`],
  ['Component', `defstruct Component ([] 'Op)
  :tree $ :: 'Option $ :: 'respo.probe.generic/Node 'Op`, `'StructDef`],
  ['Node', `defenum Node ([] 'Op)
  :element $ :: 'respo.probe.generic/Element 'Op
  :component $ :: 'respo.probe.generic/Component 'Op`, `'EnumDef`],
  ['wrap-dispatch', `defn wrap-dispatch (dispatch-ref)
  fn (op)
    hint-fn $ {} (:return 'Unit) (:args $ [] 'Op)
    (deref dispatch-ref) op`, `:: 'Fn $ {} (:generics ([] 'Op))
  :args $ [] $ :: 'Ref $ ${fn}
  :return $ ${fn}`],
  ['make-controller', `defn make-controller (dispatch!)
  Controller :dispatch $ atom dispatch!`, `:: 'Fn $ {} (:generics ([] 'Op))
  :args $ [] $ ${fn}
  :return $ :: 'respo.probe.generic/Controller 'Op`],
  ['make-tree', `defn make-tree (handler)
  let
      leaf $ Element :event (&{} :click handler) :children ([])
      wrapped $ Component :tree $ %some $ Node :element leaf
      root $ Element :event (&{}) :children $ [] $ Node :component wrapped
    Node :element root`, `:: 'Fn $ {} (:generics ([] 'Op))
  :args $ [] $ ${handler}
  :return $ :: 'respo.probe.generic/Node 'Op`],
  ['deliver', `defn deliver (controller node)
  match node
    (:component component)
      match (:tree component)
        (:none) &unit
        (:some tree) (deliver controller tree)
    (:element element)
      do
        each (:children element) $ fn (child)
          hint-fn $ {} (:return 'Unit)
            :args $ [] $ :: 'respo.probe.generic/Node 'Op
          deliver controller child
        match (get (:event element) :click)
          (:none) &unit
          (:some callback)
            callback (&{}) $ wrap-dispatch $ :dispatch controller`, `:: 'Fn $ {} (:generics ([] 'Op)) (:return 'Unit)
  :args $ [] (:: 'respo.probe.generic/Controller 'Op) (:: 'respo.probe.generic/Node 'Op)`],
];
const main = `quote $ defn main! ()
  let
      seen $ atom $ []
      dispatch! $ fn (op)
        hint-fn $ {} (:return 'Unit) (:args $ [] 'respo.probe.generic/A)
        reset! seen $ append @seen op
        , &unit
      controller $ respo.probe.generic/make-controller dispatch!
      handler $ fn (_event d!)
        hint-fn $ {} (:return 'Unit)
          :args $ [] (:: 'Map 'Tag 'Dynamic)
            :: 'Fn $ {} (:return 'Unit) (:args $ [] 'respo.probe.generic/A)
        d! $ respo.probe.generic/A :clear
      leaf $ respo.probe.generic/Element :event (&{} :click handler) :children ([])
      wrapped $ respo.probe.generic/Component :tree $ %some $ respo.probe.generic/Node :element leaf
      root $ respo.probe.generic/Element :event (&{}) :children $ [] $ respo.probe.generic/Node :component wrapped
    respo.probe.generic/deliver controller $ respo.probe.generic/Node :element root
    assert= ([] $ respo.probe.generic/A :clear) @seen
    , &unit`;
const handlerStart = main.indexOf('handler $');
const viaFactory = code => code.replace(
  'root $ respo.probe.generic/Element :event (&{}) :children $ [] $ respo.probe.generic/Node :component wrapped',
  'root $ respo.probe.generic/make-tree handler',
).replace('respo.probe.generic/deliver controller $ respo.probe.generic/Node :element root', 'respo.probe.generic/deliver controller root')
  .replace('      leaf $ respo.probe.generic/Element :event (&{} :click handler) :children ([])\n      wrapped $ respo.probe.generic/Component :tree $ %some $ respo.probe.generic/Node :element leaf\n', '');
const mismatchedController = main.replace("(:args $ [] 'respo.probe.generic/A)", "(:args $ [] 'respo.probe.generic/B)").replace('reset! seen', 'assert= (str respo.probe.generic/B) (str (&enum:definition op))\n        reset! seen');
const viaDirectController = code => code.replace('respo.probe.generic/make-controller dispatch!', 'respo.probe.generic/Controller :dispatch $ atom dispatch!');
const cases = [
  ['holder-forward-op', main],
  ['holder-number', main.replace('d! $ respo.probe.generic/A :clear', 'd! 42')],
  ['holder-mismatched-controller', mismatchedController],
  ['holder-mismatched-handler', main.slice(0, handlerStart) + main.slice(handlerStart).replaceAll("'respo.probe.generic/A)", "'respo.probe.generic/B)").replace('d! $ respo.probe.generic/A :clear', 'd! $ respo.probe.generic/B :clear')],
  ['holder-direct-controller', viaDirectController(main)],
  ['holder-direct-mismatched-controller', viaDirectController(mismatchedController)],
  ['holder-factory-forward-op', viaFactory(main)],
  ['holder-factory-mismatched-controller', viaFactory(mismatchedController)],
];

export function probeGenericHolders({ edit, invoke, results }) {
  edit(['edit', 'add-ns', 'respo.probe.generic']);
  for (const [name, code, schema] of defs) {
    edit(['edit', 'def', `respo.probe.generic/${name}`, '--code', `quote $ ${code}`]);
    edit(['edit', 'schema', `respo.probe.generic/${name}`, '--code', `quote $ ${schema.startsWith("'") ? ':: ' : ''}${schema}`]);
  }
  edit(['edit', 'def', 'respo.main/reload!', '--overwrite', '--code', 'quote $ defn reload! () &unit']);
  edit(['config', 'rm-type-slot', ':dispatch-op']);
  edit(['config', 'set', 'mode', 'native']);
  for (const [name, code] of cases) {
    edit(['edit', 'def', 'respo.main/main!', '--overwrite', '--code', code]);
    const checked = invoke(['--check-only'], true);
    const row = { name, accepted: checked.status === 0, checkElapsedMs: checked.elapsedMs, diagnostics: checked.output };
    if (['holder-forward-op', 'holder-factory-forward-op', 'holder-direct-controller', 'holder-mismatched-controller', 'holder-direct-mismatched-controller'].includes(name) && row.accepted) {
      const runtime = invoke([], true);
      row.nativePassed = runtime.status === 0;
      row.nativeElapsedMs = runtime.elapsedMs;
      row.nativeDiagnostics = runtime.output;
    }
    results.push(row);
  }

  const treeDefs = [
    ['Controller', `defstruct Controller ([] 'Op)
  :dispatch $ :: 'Ref $ ${fn}
  :tree $ :: 'Ref $ :: 'Option $ :: 'respo.probe.generic/Node 'Op`],
    ['make-controller', `defn make-controller (dispatch!)
  Controller :dispatch (atom dispatch!) :tree $ atom $ assert-type (%none)
    :: 'Option $ :: 'respo.probe.generic/Node 'Op`],
  ];
  for (const [name, code] of treeDefs) {
    edit(['edit', 'def', `respo.probe.generic/${name}`, '--overwrite', '--code', `quote $ ${code}`]);
  }
  edit(['edit', 'def', 'respo.probe.generic/render!', '--code', `quote $ defn render! (controller node)
  reset! (:tree controller) $ %some node
  deliver controller $ option:unwrap $ deref $ :tree controller`]);
  edit(['edit', 'schema', 'respo.probe.generic/render!', '--code', `quote $ :: 'Fn $ {} (:generics ([] 'Op)) (:return 'Unit)
  :args $ [] (:: 'respo.probe.generic/Controller 'Op) (:: 'respo.probe.generic/Node 'Op)`]);
  for (const [name, body] of [
    ['holder-ref-tree-forward-op', main],
    ['holder-ref-tree-mismatched-controller', mismatchedController],
  ]) {
    edit(['edit', 'def', 'respo.main/main!', '--overwrite', '--code', viaFactory(body).replace('respo.probe.generic/deliver controller', 'respo.probe.generic/render! controller')]);
    const checked = invoke(['--check-only'], true);
    const row = { name, accepted: checked.status === 0, checkElapsedMs: checked.elapsedMs, diagnostics: checked.output };
    if (name === 'holder-ref-tree-forward-op' && row.accepted) {
      const runtime = invoke([], true);
      row.nativePassed = runtime.status === 0;
      row.nativeElapsedMs = runtime.elapsedMs;
      row.nativeDiagnostics = runtime.output;
    }
    results.push(row);
  }

  // Keep the application state axis independent from the dispatch axis.
  const appDefs = [
    ['Store', `defstruct Store ([] 'State)
  :state 'State`, `'StructDef`],
    ['Props', `defstruct Props ([] 'Op)
  :event $ :: 'Map 'Tag $ ${handler}`, `'StructDef`],
    ['AppController', `defstruct AppController ([] 'Op 'State)
  :controller $ :: 'respo.probe.generic/Controller 'Op
  :store $ :: 'Ref $ :: 'respo.probe.generic/Store 'State`, `'StructDef`],
    ['make-app-controller', `defn make-app-controller (dispatch! state)
  AppController :controller (make-controller dispatch!) :store $ atom $ Store :state state`,
      `:: 'Fn $ {} (:generics ([] 'Op 'State))
  :args $ [] (${fn}) 'State
  :return $ :: 'respo.probe.generic/AppController 'Op 'State`],
    ['save-state!', `defn save-state! (app state)
  reset! (:store app) $ Store :state state`,
      `:: 'Fn $ {} (:generics ([] 'Op 'State)) (:return 'Unit)
  :args $ [] (:: 'respo.probe.generic/AppController 'Op 'State) 'State`],
    ['notify', `defn notify (app props)
  match (get (:event props) :click)
    (:none) &unit
    (:some callback)
      callback (&{}) $ wrap-dispatch $ :dispatch $ :controller app`,
      `:: 'Fn $ {} (:generics ([] 'Op 'State)) (:return 'Unit)
  :args $ [] (:: 'respo.probe.generic/AppController 'Op 'State) (:: 'respo.probe.generic/Props 'Op)`],
  ];
  for (const [name, code, schema] of appDefs) {
    edit(['edit', 'def', `respo.probe.generic/${name}`, '--code', `quote $ ${code}`]);
    edit(['edit', 'schema', `respo.probe.generic/${name}`, '--code', `quote $ ${schema.startsWith("'") ? ':: ' : ''}${schema}`]);
  }
  const appMain = `quote $ defn main! ()
  let
      seen $ atom $ []
      dispatch! $ fn (op)
        hint-fn $ {} (:return 'Unit) (:args $ [] 'respo.probe.generic/A)
        assert= (str respo.probe.generic/A) $ str $ &enum:definition op
        reset! seen $ append @seen op
        , &unit
      app $ respo.probe.generic/make-app-controller dispatch! 0
      handler $ fn (_event d!)
        hint-fn $ {} (:return 'Unit)
          :args $ [] (:: 'Map 'Tag 'Dynamic)
            :: 'Fn $ {} (:return 'Unit) (:args $ [] 'respo.probe.generic/A)
        d! $ respo.probe.generic/A :clear
      props $ respo.probe.generic/Props :event $ &{} :click handler
    respo.probe.generic/save-state! app 1
    respo.probe.generic/notify app props
    assert= 1 $ :state $ deref $ :store app
    assert= ([] $ respo.probe.generic/A :clear) @seen
    , &unit`;
  const propsStart = appMain.indexOf('handler $');
  const composedPropsMain = appMain.slice(0, propsStart).trimEnd() + '\n    '
    + appMain.slice(appMain.indexOf('respo.probe.generic/save-state! app 1', propsStart)).replace(
      'respo.probe.generic/notify app props',
      `respo.probe.generic/notify app $ respo.probe.generic/Props :event $ &{} :click $ fn (_event d!)
      d! $ respo.probe.generic/A :clear
      , &unit`,
    );
  const appCases = [
    ['holder-props-store-forward-op', appMain],
    ['holder-props-store-string-state', appMain.replace('dispatch! 0', 'dispatch! |before')
      .replace('save-state! app 1', 'save-state! app |after').replace('assert= 1 $ :state', 'assert= |after $ :state')],
    ['holder-props-store-number-op', appMain.replace('d! $ respo.probe.generic/A :clear', 'd! 42')],
    ['holder-props-store-mismatched-op', appMain.slice(0, propsStart) + appMain.slice(propsStart)
      .replaceAll("'respo.probe.generic/A)", "'respo.probe.generic/B)")
      .replace('d! $ respo.probe.generic/A :clear', 'd! $ respo.probe.generic/B :clear')],
    ['holder-props-store-mismatched-state', appMain.replace('save-state! app 1', 'save-state! app |wrong')],
    ['holder-props-store-composed-forward-op', composedPropsMain],
    ['holder-props-store-composed-number-op', composedPropsMain.replace('d! $ respo.probe.generic/A :clear', 'd! 42')],
  ];
  for (const [name, code] of appCases) {
    edit(['edit', 'def', 'respo.main/main!', '--overwrite', '--code', code]);
    const checked = invoke(['--check-only'], true);
    const row = { name, accepted: checked.status === 0, checkElapsedMs: checked.elapsedMs, diagnostics: checked.output };
    if (['holder-props-store-forward-op', 'holder-props-store-string-state', 'holder-props-store-mismatched-op', 'holder-props-store-mismatched-state',
      'holder-props-store-composed-forward-op', 'holder-props-store-composed-number-op'].includes(name) && row.accepted) {
      const runtime = invoke([], true);
      row.nativePassed = runtime.status === 0;
      row.nativeElapsedMs = runtime.elapsedMs;
      row.nativeDiagnostics = runtime.output;
    }
    results.push(row);
  }

  const slotDefs = defs.filter(([name]) => !['A', 'B'].includes(name)).map(def => {
    const treeDef = treeDefs.find(([name]) => name === def[0]);
    return treeDef ? [def[0], treeDef[1], def[2]] : def;
  });
  const names = [...slotDefs, ...appDefs].map(([name]) => name);
  const slotName = name => `Slot${name}`;
  const rename = code => names.reduce((result, name) => result.replace(
    new RegExp(`(?<![\\w-])${name}(?![\\w-])`, 'g'), slotName(name),
  ), code);
  const slotCode = code => {
    let result = code
      .replaceAll("([] 'Op 'State)", "([] 'State)")
      .replaceAll("(:generics ([] 'Op))", '')
      .replaceAll("([] 'Op)", '');
    for (const name of ['Controller', 'Element', 'Component', 'Node', 'Props', 'AppController']) {
      result = result.replaceAll(`(:: 'respo.probe.generic/${name} 'Op 'State)`, `(:: 'respo.probe.generic/${name} 'State)`)
        .replaceAll(`(:: 'respo.probe.generic/${name} 'Op)`, `'respo.probe.generic/${name}`)
        .replaceAll(`:: 'respo.probe.generic/${name} 'Op 'State`, `:: 'respo.probe.generic/${name} 'State`)
        .replaceAll(`:: 'respo.probe.generic/${name} 'Op`, `'respo.probe.generic/${name}`);
    }
    return rename(result.replaceAll("$ 'respo.probe.generic/", "'respo.probe.generic/")
      .replace(/'Op(?![\w-])/g, "'*dispatch-op"));
  };
  edit(['config', 'set-type-slot', ':dispatch-op', 'respo.probe.generic/A']);
  for (const [name, code, schema] of [...slotDefs, ...appDefs]) {
    edit(['edit', 'def', `respo.probe.generic/${slotName(name)}`, '--code', `quote $ ${slotCode(code)}`]);
    edit(['edit', 'schema', `respo.probe.generic/${slotName(name)}`, '--code',
      `quote $ ${slotCode(schema.startsWith("'") ? ':: ' + schema : schema)}`]);
  }
  const inlinePropsMain = appMain.slice(0, propsStart)
    + appMain.slice(appMain.indexOf('props $', propsStart)).replace(
      'props $ respo.probe.generic/Props :event $ &{} :click handler',
      `props $ respo.probe.generic/Props :event $ &{} :click $ fn (_event d!)
        d! $ respo.probe.generic/A :clear
        , &unit`,
    );
  const slotCases = [...appCases,
    ['holder-props-store-inline-forward-op', inlinePropsMain],
    ['holder-props-store-inline-number-op', inlinePropsMain.replace('d! $ respo.probe.generic/A :clear', 'd! 42')],
  ];
  for (const [name, code] of slotCases) {
    const slotCase = name.replace('holder-props-store-', 'slot-props-store-');
    edit(['edit', 'def', 'respo.main/main!', '--overwrite', '--code', rename(code)]);
    const checked = invoke(['--check-only'], true);
    const row = { name: slotCase, accepted: checked.status === 0, checkElapsedMs: checked.elapsedMs, diagnostics: checked.output };
    if (row.accepted) {
      const runtime = invoke([], true);
      row.nativePassed = runtime.status === 0;
      row.nativeElapsedMs = runtime.elapsedMs;
      row.nativeDiagnostics = runtime.output;
    }
    results.push(row);
  }
}
