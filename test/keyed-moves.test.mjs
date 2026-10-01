import assert from 'node:assert/strict';
import test from 'node:test';

class ElementHost {
  constructor(name = 'div') {
    this.localName = name;
    this.tagName = name.toUpperCase();
    this.namespaceURI = 'http://www.w3.org/1999/xhtml';
    this.nodes = [];
    this.dataset = {};
    this.style = {};
    this.scrollTop = 0;
    this.scrollLeft = 0;
    this.children = { item: index => this.nodes[index] ?? null };
    Object.defineProperty(this.children, 'length', { get: () => this.nodes.length });
  }
  get firstElementChild() { return this.nodes[0] ?? null; }
  appendChild(node) {
    node.remove();
    this.nodes.push(node);
    node.parentElement = this;
    return node;
  }
  insertBefore(node, anchor) {
    if (node === anchor) return node;
    node.remove();
    const index = this.nodes.indexOf(anchor);
    assert.notEqual(index, -1, 'move anchor must remain in the parent');
    this.nodes.splice(index, 0, node);
    node.parentElement = this;
    return node;
  }
  remove() {
    if (this.parentElement) {
      this.parentElement.nodes.splice(this.parentElement.nodes.indexOf(this), 1);
      this.parentElement = null;
    }
  }
  querySelector() { return null; }
  matches(selector) { return selector === 'svg' && this.localName === 'svg'; }
  getContext() { return null; }
}
globalThis.Element = ElementHost;
globalThis.document = { createElement: name => new ElementHost(name) };
const c = await import('../js-out/calcit.core.mjs');
const { apply_dom_changes } = await import('../js-out/respo.render.patch.mjs');
const { createRows, collectPatches } = await import('./keyed-moves-fixture.mjs');
const { DomProps } = await import('../js-out/respo.schema.mjs');
const { list__GT_ } = await import('../js-out/respo.core.mjs');
const { find_element_diffs } = await import('../js-out/respo.render.diff.mjs');

function verify(oldKeys, newKeys, rows) {
  const mount = new ElementHost('main');
  const parent = new ElementHost();
  mount.appendChild(parent);
  const originals = new Map(oldKeys.map(key => {
    const node = new ElementHost('input');
    node.id = `row-${key}`;
    node.value = `edited-${key}`;
    parent.appendChild(node);
    return [key, node];
  }));
  const patches = collectPatches(oldKeys, newKeys, rows);
  apply_dom_changes(c.arrayToList(patches), mount, () => () => {});
  assert.deepEqual(parent.nodes.map(node => Number(node.id.slice(4))), newKeys);
  for (const key of newKeys) {
    if (originals.has(key)) {
      const node = parent.nodes[newKeys.indexOf(key)];
      assert.equal(node, originals.get(key));
      assert.equal(node.value, `edited-${key}`);
    }
  }
  return patches;
}
function permutations(values) {
  if (!values.length) return [[]];
  return values.flatMap((value, index) => permutations(values.filter((_, i) => i !== index))
    .map(rest => [value, ...rest]));
}
function lisLength(values) {
  const lengths = values.map(() => 1);
  for (let i = 0; i < values.length; i++)
    for (let j = 0; j < i; j++)
      if (values[j] < values[i]) lengths[i] = Math.max(lengths[i], lengths[j] + 1);
  return Math.max(0, ...lengths);
}
test('all six-key permutations preserve nodes with a minimum number of moves', () => {
  const keys = [0, 1, 2, 3, 4, 5];
  const rows = createRows(keys);
  for (const next of permutations(keys)) {
    const patches = verify(keys, next, rows);
    assert.equal(patches.length, keys.length - lisLength(next));
    assert.ok(patches.every(patch => patch.tag.value === 'move-element'));
  }
});
test('mixed additions, removals and movements preserve surviving nodes', () => {
  const rows = createRows(Array.from({ length: 44 }, (_, i) => i));
  const keys = Array.from({ length: 40 }, (_, i) => i);
  for (const next of [[], [43, ...keys, 40], [39, 42, 1, 41, 0], [0, 40, 1, 41, 39], [42, 43]])
    verify(keys, next, rows);
  verify([], [42, 43], rows);
  const swapped = [keys[1], keys[0], ...keys.slice(2)];
  assert.equal(verify(keys, swapped, rows).length, 1);
  assert.equal(verify(keys, [39, ...keys.slice(0, -1)], rows).length, 1);
});

test('nested reorders and prop updates use the correct node coordinates', () => {
  const rows = createRows(Array.from({ length: 9 }, (_, i) => i));
  const props = id => c._$n__PCT__$M_(DomProps, ...DomProps.fields.flatMap(field =>
    [field, field.value === 'id' ? id : undefined]));
  const list = c.arrayToList;
  const group = (id, keys) => list__GT_(props(id), list(keys.map(key => list([key, rows.get(key)]))));
  const oldGroups = [['A', [0, 1, 2]], ['B', [3, 4, 5]], ['C', [6, 7]]];
  const newGroups = [['B', [5, 3, 4]], ['A', [2, 8, 0]]];
  const tree = groups => list__GT_(props('groups'), list(groups.map(([key, keys]) =>
    list([key, group(`group-${key}`, keys)]))));
  const mount = new ElementHost('main');
  const root = new ElementHost();
  const groupNodes = new Map();
  const originals = new Map();
  mount.appendChild(root);
  for (const [key, keys] of oldGroups) {
    const parent = new ElementHost();
    parent.id = `group-${key}`;
    groupNodes.set(key, parent);
    root.appendChild(parent);
    for (const childKey of keys) {
      const node = new ElementHost();
      node.id = `row-${childKey}`;
      parent.appendChild(node);
      originals.set(childKey, node);
    }
  }
  const patches = [];
  find_element_diffs(patch => { patches.push(patch); }, list([]), list([]), tree(oldGroups), tree(newGroups));
  apply_dom_changes(list(patches), mount, () => () => {});
  assert.deepEqual(root.nodes, [groupNodes.get('B'), groupNodes.get('A')]);
  for (const [key, keys] of newGroups) {
    const nodes = groupNodes.get(key).nodes;
    assert.deepEqual(nodes.map(node => Number(node.id.slice(4))), keys);
    for (const childKey of keys)
      if (originals.has(childKey)) assert.equal(nodes[keys.indexOf(childKey)], originals.get(childKey));
  }
});
