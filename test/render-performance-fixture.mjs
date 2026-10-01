import { ElementHost } from './dom-host.mjs';

/** Build equivalent workloads around either compiled revision. Setup is outside timing. */
export async function createPerformanceFixture(baseURL = new URL('../', import.meta.url), simulated = false) {
  if (simulated) {
    globalThis.Element = ElementHost;
    globalThis.document = { createElement: name => new ElementHost(name) };
  }
  const load = name => import(new URL(`js-out/${name}.mjs`, baseURL));
  const c = await load('calcit.core');
  const schema = await load('respo.schema');
  const core = await load('respo.core');
  const patcher = await load('respo.render.patch');
  const diff = await load('respo.render.diff');
  const client = await load('respo.controller.client');
  const detect = await load('respo.util.detect');
  const list = c.arrayToList;
  const tag = c.turn_tag;
  const props = c._$n__PCT__$M_(schema.DomProps, ...schema.DomProps.fields.flatMap(field => [field, undefined]));
  const patch = (coord, title) => c._PCT__$o__$o_(schema.DomPatch, tag('replace-prop'), list([]), list(coord), tag('title'), title);
  const domWorkload = (depth, children) => {
    const mount = document.createElement('main');
    const root = document.createElement('div'); mount.appendChild(root);
    let parent = root;
    for (let i = 0; i < depth; i++) {
      const child = document.createElement('div'); parent.appendChild(child); parent = child;
    }
    const prefix = Array(depth).fill(0);
    const targets = children === 1 ? [parent] : Array.from({ length: children }, () => {
      const child = document.createElement('div'); parent.appendChild(child); return child;
    });
    const changes = list(Array.from({ length: 1000 }, (_, i) =>
      patch(children === 1 ? prefix : [...prefix, i], `updated-${i}`)));
    if (!simulated) { mount.style.display = 'none'; document.body.appendChild(mount); }
    return { run() {
      ElementHost.reads = 0;
      patcher.apply_dom_changes(changes, mount, () => () => {});
      return { childReads: simulated ? ElementHost.reads : null };
    }, verify() {
      for (let i = 0; i < targets.length; i++) {
        const expected = `updated-${children === 1 ? 999 : i}`;
        if (targets[i].title !== expected) throw new Error('benchmark DOM mismatch');
      }
    } };
  };
  const deep = domWorkload(32, 1);
  const long = domWorkload(4, 1000);
  const keys = list(Array.from({ length: 1000 }, (_, i) => i));
  let callbacks = 0;
  let dispatches = 0;
  const rows = Array.from({ length: 1000 }, (_, i) => c._$n__PCT__$M_(schema.Component,
    tag('name'), tag('benchmark-row'), tag('effects'), list([]),
    tag('listeners'), list(i % 20 === 0 ? [c._$n__PCT__$M_(schema.RespoListener,
      tag('name'), tag('keydown'), tag('handler'), (event, dispatch) => { callbacks++; dispatch(tag('ping')); })] : []),
    tag('tree'), c._PCT__$o__$o_(c.Option, tag('some'), core.div(props))));
  const tree = c._$n__PCT__$M_(schema.Component, tag('name'), tag('benchmark-root'),
    tag('effects'), list([]), tag('listeners'), list([]), tag('tree'),
    c._PCT__$o__$o_(c.Option, tag('some'), core.list__GT_(props, list(rows.map((row, i) => list([i, row]))))));
  c.reset_$x_(core._$s_global_element, c._PCT__$o__$o_(c.Option, tag('some'), tree));
  c.reset_$x_(core._$s_dispatch_fn, () => { dispatches++; });
  const event = new c.CalcitEnumValue(tag('keydown'), []);
  const collectHandlers = element => {
    if (detect.component_$q_(element)) {
      const handlers = detect.component_listeners(element).toArray().map(listener => detect.listener_handler(listener));
      const child = detect.component_tree(element);
      return child.tag.value === 'some' ? [...handlers, ...collectHandlers(child.extra[0])] : handlers;
    }
    return detect.element_children(element).toArray().flatMap(pair => collectHandlers(c._$n_list_$o_nth(pair, 1)));
  };
  const broadcast = indexed => {
    callbacks = 0; dispatches = 0;
    const handlers = indexed ? collectHandlers(tree) : null;
    const dispatch = indexed ? client.wrap_dispatch(core._$s_dispatch_fn) : null;
    for (let i = 0; i < 100; i++) {
      if (indexed) for (const handler of handlers) handler(event, dispatch);
      else client.send_to_component_$x_(event);
    }
    if (callbacks !== 5000 || dispatches !== 5000) throw new Error('benchmark event mismatch');
    return { callbacks, dispatches };
  };
  return {
    deep,
    'long-list': { run() {
      const result = long.run();
      if (diff.detect_keys_dup(keys)) throw new Error('unique benchmark keys flagged');
      return result;
    }, verify: long.verify },
    dispatch: { run: () => broadcast(false), verify() {} },
    'listener-index-prototype': { run: () => broadcast(true), verify() {} },
  };
}
