import assert from 'node:assert/strict';
import test from 'node:test';
import { ElementHost } from './dom-host.mjs';
globalThis.Element = ElementHost;
globalThis.document = { createElement: name => new ElementHost(name) };
const c = await import('../js-out/calcit.core.mjs');
const { Component, Effect } = await import('../js-out/respo.schema.mjs');
const { div, span } = await import('../js-out/respo.core.mjs');
const { as_render_node, make_child_pair } = await import('../js-out/respo.util.detect.mjs');
const { collect_mounting, collect_unmounting } = await import('../js-out/respo.render.effect.mjs');
const { apply_dom_changes, run_effect } = await import('../js-out/respo.render.patch.mjs');
const t = c.init_tags(['name', 'effects', 'listeners', 'tree', 'coord', 'args', 'method', 'children', 'ref', 'outer', 'first', 'second']);
const list = c.arrayToList;

test('missing effect targets warn without calling the method; present targets preserve identity', () => {
  const warnings = [], calls = [];
  const coord = list([2, 1]);
  const originalWarn = console.warn;
  console.warn = (...args) => { warnings.push(args); };
  try {
    for (const target of [null, undefined]) run_effect(target, value => { calls.push(value); }, coord);
    const target = new ElementHost('div');
    run_effect(target, value => { calls.push(value); }, coord);
    assert.deepEqual(calls, [target]);
    assert.deepEqual(warnings, [
      ['Unknown effects target:', coord], ['Unknown effects target:', coord],
    ]);
  } finally {
    console.warn = originalWarn;
  }
});

test('effect callback exceptions propagate unchanged after one invocation', () => {
  const target = new ElementHost('div');
  const failure = new Error('effect fixture');
  let calls = 0;
  assert.throws(() => run_effect(target, value => {
    assert.equal(value, target);
    calls += 1;
    throw failure;
  }, list([])), error => error === failure);
  assert.equal(calls, 1);
});

function fixture(includeEmpty) {
  const calls = [];
  const component = (name, element) => c._$n__PCT__$M_(Component,
    t.name, name, t.listeners, list([]), t.tree, c._PCT_some(as_render_node(element)),
    t.effects, list([c._$n__PCT__$M_(Effect, t.name, name, t.coord, list([]), t.args, list([name.value]),
      t.method, (args, params) => {
        const [action, target, atPlace] = c.listToArray(params);
        calls.push([`effect:${name.value}`, action.value, target.id, atPlace, c.listToArray(args)]);
      })]));
  const ref = label => target => { calls.push([`ref:${label}`, target?.id ?? null]); };
  const leaf = (name, id) => component(name,
    c.assoc(span(c.parse_cirru_edn('{}')), t.ref, ref(id)));
  const pairs = [make_child_pair('a', leaf(t.first, 'first')), make_child_pair('b', leaf(t.second, 'second'))];
  if (includeEmpty) pairs.splice(1, 0, make_child_pair('empty', null));
  const parent = c.assoc(c.assoc(div(c.parse_cirru_edn('{}')), t.ref, ref('parent')), t.children, list(pairs));
  const root = component(t.outer, parent);
  const mount = new ElementHost('main');
  const dom = new ElementHost(); dom.id = 'parent';
  for (const id of ['first', 'second']) { const child = new ElementHost('span'); child.id = id; dom.appendChild(child); }
  mount.appendChild(dom);
  return { calls, root, mount };
}

for (const includeEmpty of [false, true]) {
  test(`effect traversal preserves callback order and actual DOM targets (empty child: ${includeEmpty})`, () => {
    const f = fixture(includeEmpty);
    const mounting = [], unmounting = [];
    collect_mounting(op => { mounting.push(op); }, list([]), list([]), f.root, true);
    collect_unmounting(op => { unmounting.push(op); }, list([]), list([]), f.root, true);
    const paths = mounting.map(op => c.listToArray(c._$n_enum_$o_nth(op, 2)));
    assert.deepEqual(paths, [[], [], [0], [0], [1], [1]]);
    apply_dom_changes(list([...mounting, ...unmounting]), f.mount, () => () => {});
    assert.deepEqual(f.calls, [
      ['effect:outer', 'mount', 'parent', true, ['outer']], ['ref:parent', 'parent'],
      ['effect:first', 'mount', 'first', false, ['first']], ['ref:first', 'first'],
      ['effect:second', 'mount', 'second', false, ['second']], ['ref:second', 'second'],
      ['ref:first', null], ['effect:first', 'unmount', 'first', false, ['first']],
      ['ref:second', null], ['effect:second', 'unmount', 'second', false, ['second']],
      ['ref:parent', null], ['effect:outer', 'unmount', 'parent', true, ['outer']],
    ]);
  });
}
