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
const cases = [
  ['holder-forward-op', main],
  ['holder-number', main.replace('d! $ respo.probe.generic/A :clear', 'd! 42')],
  ['holder-mismatched-controller', mismatchedController],
  ['holder-mismatched-handler', main.slice(0, handlerStart) + main.slice(handlerStart).replaceAll("'respo.probe.generic/A)", "'respo.probe.generic/B)").replace('d! $ respo.probe.generic/A :clear', 'd! $ respo.probe.generic/B :clear')],
  ['holder-direct-controller', main.replace('respo.probe.generic/make-controller dispatch!', 'respo.probe.generic/Controller :dispatch $ atom dispatch!')],
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
    if (['holder-forward-op', 'holder-factory-forward-op', 'holder-mismatched-controller'].includes(name) && row.accepted) {
      const runtime = invoke([], true);
      row.nativePassed = runtime.status === 0;
      row.nativeElapsedMs = runtime.elapsedMs;
      row.nativeDiagnostics = runtime.output;
    }
    results.push(row);
  }

  edit(['edit', 'def', 'respo.probe.generic/Controller', '--overwrite', '--code', `quote $ defstruct Controller ([] 'Op)
  :dispatch $ :: 'Ref $ ${fn}
  :tree $ :: 'Ref $ :: 'Option $ :: 'respo.probe.generic/Node 'Op`]);
  edit(['edit', 'def', 'respo.probe.generic/make-controller', '--overwrite', '--code', `quote $ defn make-controller (dispatch!)
  Controller :dispatch (atom dispatch!) :tree $ atom $ assert-type (%none)
    :: 'Option $ :: 'respo.probe.generic/Node 'Op`]);
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
}
