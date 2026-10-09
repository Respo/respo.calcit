import assert from 'node:assert/strict';
import test from 'node:test';
import { ElementHost } from './dom-host.mjs';
globalThis.Element = ElementHost;
const c = await import('../js-out/calcit.core.mjs');
const { Component } = await import('../js-out/respo.schema.mjs');
const { div, span } = await import('../js-out/respo.core.mjs');
const { as_render_node, make_child_pair } = await import('../js-out/respo.util.detect.mjs');
const { collect_event_refreshing, collect_event_refreshing_node, find_element_diffs } = await import('../js-out/respo.render.diff.mjs');
const { apply_dom_changes } = await import('../js-out/respo.render.patch.mjs');
const { with_fixture_children, with_fixture_events } = await import('../js-out/respo.test.dom.mjs');
const t = c.init_tags(['name', 'tree', 'effects', 'listeners', 'event', 'children', 'outer', 'inner', 'kid', 'click', 'focus']);
const list = c.arrayToList;
const component = (name, tree) => c._$n__PCT__$M_(Component,
  t.name, name, t.tree, tree === null ? c._PCT_none() : c._PCT_some(as_render_node(tree)),
  t.effects, list([]), t.listeners, list([]));

function fixture() {
  const events = c._$n__$M_(t.click, () => {}, t.focus, null);
  const leaf = with_fixture_events(span(c.parse_cirru_edn('{}')), events);
  const tree = with_fixture_children(with_fixture_events(div(c.parse_cirru_edn('{}')), events), list([
    make_child_pair('empty', null),
    make_child_pair(t.kid, component(t.inner, leaf)),
    make_child_pair(7, leaf),
  ]));
  const mount = new ElementHost('main'), root = new ElementHost('div');
  root.id = 'root'; mount.appendChild(root);
  for (const id of ['first', 'second']) {
    const child = new ElementHost('span'); child.id = id; root.appendChild(child);
  }
  return { tree, mount, targets: [root, ...root.nodes] };
}

for (const entering of [true, false]) {
  test(`shared descendants refresh event coordinates when ${entering ? 'entering' : 'leaving'} a component`, () => {
    const { tree, mount, targets } = fixture();
    const wrapped = component(t.outer, tree), ops = [];
    find_element_diffs(op => { ops.push(op); }, list(['app']), list([]),
      entering ? tree : wrapped, entering ? wrapped : tree);
    const prefix = entering ? ['app', t.outer] : ['app'];
    const coordinates = [prefix, [...prefix, t.kid, t.inner], [...prefix, 7]];
    assert.deepEqual(ops.map(op => op.tag.value), ['set-event', 'set-event', 'set-event']);
    assert.deepEqual(ops.map(op => c.listToArray(c._$n_enum_$o_nth(op, 1))), coordinates);
    assert.deepEqual(ops.map(op => c.listToArray(c._$n_enum_$o_nth(op, 2))), [[], [0], [1]]);
    const calls = [];
    apply_dom_changes(list(ops), mount, eventName => (event, coord) => {
      assert.equal(eventName, t.click);
      calls.push([c.listToArray(coord), event.target.id]);
    });
    targets.forEach(target => {
      assert.equal(target.onfocus, undefined);
      target.onclick({ target, stopPropagation() {} });
    });
    assert.deepEqual(calls, coordinates.map((coord, idx) => [coord, targets[idx].id]));
  });
}

test('typed refresh agrees with the legacy entry and empty components emit no patches', () => {
  const { tree } = fixture();
  const raw = [], typed = [], empty = [];
  collect_event_refreshing(op => { raw.push(op); }, list([]), list([]), tree);
  collect_event_refreshing_node(op => { typed.push(op); }, list([]), list([]), as_render_node(tree));
  assert.deepEqual(typed, raw);
  collect_event_refreshing(op => { empty.push(op); }, list([]), list([]), component(t.outer, null));
  collect_event_refreshing(op => { empty.push(op); }, list([]), list([]), c.parse_cirru_edn('{}'));
  assert.deepEqual(empty, []);
});
