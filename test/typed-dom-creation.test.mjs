import assert from 'node:assert/strict';
import test from 'node:test';
import { ElementHost } from './dom-host.mjs';

const creation = [];
class Host extends ElementHost {
  set title(value) { creation.push(`title:${value}`); this.titleValue = value; }
  get title() { return this.titleValue; }
}
globalThis.Element = Host;
globalThis.document = {
  createElement(name) { creation.push(`create:${name}`); return new Host(name); },
  createElementNS(namespace, name) {
    creation.push(`create-ns:${name}`);
    const element = new Host(name);
    element.namespaceURI = namespace;
    return element;
  },
};

const c = await import('../js-out/calcit.core.mjs');
const { Component } = await import('../js-out/respo.schema.mjs');
const { div, span } = await import('../js-out/respo.core.mjs');
const { as_render_node, make_child_pair } = await import('../js-out/respo.util.detect.mjs');
const { make_element } = await import('../js-out/respo.render.dom.mjs');
const { add_style, replace_style } = await import('../js-out/respo.render.patch.mjs');
const t = c.init_tags(['name', 'effects', 'listeners', 'tree', 'children', 'root', 'child']);
const event = c.init_tags(['event', 'click', 'input']);
const component = (name, element) => c._$n__PCT__$M_(Component,
  t.name, name, t.effects, c.arrayToList([]), t.listeners, c.arrayToList([]),
  t.tree, c._PCT_some(as_render_node(element)));

test('style updates retain the style object, camel names, units and clearing', () => {
  const target = new Host('div');
  const style = target.style;
  const props = c.init_tags(['padding', 'opacity', 'background-color']);
  add_style(target, props.padding, 4);
  replace_style(target, props.padding, 8);
  add_style(target, props.opacity, 0.5);
  replace_style(target, props['background-color'], 'red');
  assert.equal(target.style, style);
  assert.equal(style.padding, '8px');
  assert.equal(style.opacity, '0.5');
  assert.equal(style.backgroundColor, 'red');
  replace_style(target, props.padding, null);
  assert.equal(style.padding, '');
});

test('DOM creation keeps child order, component event coordinates, properties and styles', () => {
  creation.length = 0;
  const leaf = c.assoc(span(c.parse_cirru_edn('{} (:title |leaf) (:inner-text |ready)')),
    event.event, c._$n__$M_(event.click, () => {}, event.input, null));
  const child = component(t.child, leaf);
  const rootElement = c.assoc(div(c.parse_cirru_edn('{} (:title |parent) (:data-name |root) (:style ({} (:padding 4)))')),
    t.children, c.arrayToList([
      make_child_pair('empty', null), make_child_pair('row', child),
    ]));
  const root = component(t.root, c.assoc(rootElement, event.event,
    c._$n__$M_(event.click, () => {})));
  const deliveries = [];
  const dom = make_element(root, name => (_event, coord) => {
    deliveries.push([name.value, c.listToArray(coord).map(value => value.value ?? value)]);
  }, c.arrayToList([]));
  assert.equal(dom.localName, 'div');
  assert.equal(dom.title, 'parent');
  assert.equal(dom.dataset.name, 'root');
  assert.equal(dom.style.padding, '4px');
  assert.equal(dom.nodes.length, 1);
  assert.equal(dom.nodes[0].localName, 'span');
  assert.equal(dom.nodes[0].title, 'leaf');
  assert.equal(dom.nodes[0].innerText, 'ready');
  assert.deepEqual(creation, ['create:div', 'create:span', 'title:leaf', 'title:parent']);
  dom.onclick({ stopPropagation() {} });
  dom.nodes[0].onclick({ stopPropagation() {} });
  assert.equal(dom.nodes[0].oninput, undefined);
  assert.deepEqual(deliveries, [['click', ['root']], ['click', ['root', 'row', 'child']]]);
});

test('DOM creation preserves an explicit inherited SVG context through components', () => {
  creation.length = 0;
  const root = component(t.root, span(c.parse_cirru_edn('{}')));
  const dom = make_element(root, () => () => {}, c.arrayToList([]), true);
  assert.equal(dom.namespaceURI, 'http://www.w3.org/2000/svg');
  assert.deepEqual(creation, ['create-ns:span']);
});

test('DOM creation keeps the explicit coordinate guard before node validation', () => {
  assert.throws(() => make_element(null, () => () => {}, null), /coord-is-required/);
});
