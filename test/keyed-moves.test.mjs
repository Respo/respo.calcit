import assert from 'node:assert/strict';
import test from 'node:test';

import { ElementHost } from './dom-host.mjs';
globalThis.Element = ElementHost;
globalThis.document = { createElement: name => new ElementHost(name) };
const c = await import('../js-out/calcit.core.mjs');
const { apply_dom_changes } = await import('../js-out/respo.render.patch.mjs');
const { createRows, collectPatches } = await import('./keyed-moves-fixture.mjs');
const { DomProps, DomPatch } = await import('../js-out/respo.schema.mjs');
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
test('直接 ChildPair 中的 None 支持出现、消失和重排，保持稠密 DOM 坐标', async () => {
  const { make_child_pair } = await import('../js-out/respo.util.detect.mjs');
  const { find_children_diffs } = await import('../js-out/respo.render.diff.mjs');
  const layouts = [
    [[[0, 0], [1, null], [2, 2]], [[2, 2], [1, 1], [0, null]]],
    [[[0, null], [1, 1], [2, 2]], [[2, 2], [0, null], [1, 1]]],
    [[[0, null], [1, null]], [[1, 1], [0, 0]]],
    [[[0, 0], [1, 1]], [[1, null], [0, null]]],
    [[[0, null], [1, null]], [[1, null], [0, null]]],
  ];
  for (const [oldPairs, newPairs] of layouts) {
    const counts = { mounts: 0, unmounts: 0 }, rows = createRows([0, 1, 2], counts);
    const oldKeys = oldPairs.filter(([, value]) => value !== null).map(([key]) => key);
    const newKeys = newPairs.filter(([, value]) => value !== null).map(([key]) => key);
    const mount = new ElementHost('main'), parent = new ElementHost();
    mount.appendChild(parent);
    const originals = new Map(oldKeys.map(key => {
      const node = new ElementHost('input'); node.id = `row-${key}`; node.value = `edited-${key}`;
      parent.appendChild(node); return [key, node];
    }));
    const pairs = entries => c.arrayToList(entries.map(([key, value]) =>
      make_child_pair(key, value === null ? null : rows.get(value))));
    const patches = [], coord = c.arrayToList([]);
    find_children_diffs(op => { patches.push(op); }, coord, coord, 0, pairs(oldPairs), pairs(newPairs));
    apply_dom_changes(c.arrayToList(patches), mount, () => () => {});
    assert.deepEqual(parent.nodes.map(node => Number(node.id.slice(4))), newKeys);
    for (const key of newKeys) if (originals.has(key)) {
      assert.equal(parent.nodes[newKeys.indexOf(key)], originals.get(key));
      assert.equal(originals.get(key).value, `edited-${key}`);
    }
    assert.deepEqual(counts, {
      mounts: newKeys.filter(key => !oldKeys.includes(key)).length,
      unmounts: oldKeys.filter(key => !newKeys.includes(key)).length,
    });
  }
});
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

test('move batches preserve scroll before later effects and start fresh afterward', () => {
  const mount = new ElementHost('main');
  const parent = new ElementHost();
  const first = new ElementHost();
  const second = new ElementHost();
  mount.appendChild(parent);
  parent.appendChild(first);
  parent.appendChild(second);
  first.scrollTop = 10;
  for (const method of ['appendChild', 'insertBefore']) {
    const original = parent[method].bind(parent);
    parent[method] = (...args) => {
      const node = original(...args);
      node.scrollTop = 0; // Model scroll loss during a DOM move.
      return node;
    };
  }
  const patch = (tag, ...args) => c._PCT__$o__$o_(DomPatch, c.turn_tag(tag), ...args);
  const coord = c.arrayToList([]);
  const changes = [
    patch('move-element', coord, 1, c._PCT__$o__$o_(c.Option, c.turn_tag('some'), 0)),
    patch('effect-update', coord, coord, () => { assert.equal(first.scrollTop, 10); first.scrollTop = 50; }),
    patch('move-element', coord, 0, c._PCT__$o__$o_(c.Option, c.turn_tag('none'))),
    patch('effect-update', coord, coord, () => {
      assert.deepEqual(parent.nodes, [first, second]);
      assert.equal(first.scrollTop, 50); first.scrollTop = 70;
    }),
  ];
  apply_dom_changes(c.arrayToList(changes), mount, () => () => {});
  assert.equal(first.scrollTop, 70);
});

test('新增子节点的 ref 在重排完成后读取最终位置，包含公共前后缀', async () => {
  const { div } = await import('../js-out/respo.core.mjs');
  const oldKeys = [0, 1, 2, 3];
  const newKeys = [0, 9, 2, 1, 3];
  const rows = createRows(oldKeys);
  const observations = [];
  const props = c._$n__PCT__$M_(DomProps, ...DomProps.fields.flatMap(field => [field,
    field.value === 'id' ? 'row-9' : field.value === 'ref' ? target => {
      if (target) observations.push({ id: target.id, index: target.parentElement.nodes.indexOf(target),
        order: target.parentElement.nodes.map(node => Number(node.id.slice(4))) });
    } : undefined]));
  rows.set(9, div(props));
  const patches = verify(oldKeys, newKeys, rows);
  assert.deepEqual(observations, [{ id: 'row-9', index: 1, order: newKeys }]);
  const lastMove = patches.findLastIndex(patch => patch.tag.value === 'move-element');
  assert.ok(lastMove >= 0);
  assert.ok(patches.findIndex(patch => patch.tag.value === 'effect-mount') > lastMove);
});

test('移除和追加节点之后的新 move 批次重新捕获子节点快照', () => {
  const mount = new ElementHost('main');
  const parent = new ElementHost();
  const first = new ElementHost();
  const second = new ElementHost();
  mount.appendChild(parent); parent.appendChild(first); parent.appendChild(second);
  const coord = c.arrayToList([]);
  const patch = (tag, ...args) => c._PCT__$o__$o_(DomPatch, c.turn_tag(tag), ...args);
  const some = index => c._PCT__$o__$o_(c.Option, c.turn_tag('some'), index);
  const props = c._$n__PCT__$M_(DomProps, ...DomProps.fields.flatMap(field =>
    [field, field.value === 'id' ? 'new-child' : undefined]));
  apply_dom_changes(c.arrayToList([
    patch('move-element', coord, 1, some(0)),
    patch('rm-element', coord, c.arrayToList([1])),
    patch('append-element', coord, coord, list__GT_(props, c.arrayToList([]))),
    patch('move-element', coord, 1, some(0)),
  ]), mount, () => () => {});
  assert.deepEqual(parent.nodes.map(node => node === second ? 'retained' : node.id), ['new-child', 'retained']);
});

test('public keyed-list construction omits nil children before movement coordinates', () => {
  const rows = createRows([0, 1, 2]);
  const props = c._$n__PCT__$M_(DomProps, ...DomProps.fields.flatMap(field => [field, undefined]));
  const tree = pairs => list__GT_(props, c.arrayToList(pairs.map(pair => c.arrayToList(pair))));
  const oldTree = tree([[0, rows.get(0)], [1, null], [2, rows.get(2)]]);
  const newTree = tree([[2, rows.get(2)], [1, rows.get(1)], [0, null]]);
  const mount = new ElementHost('main');
  const parent = new ElementHost();
  mount.appendChild(parent);
  for (const key of [0, 2]) {
    const node = new ElementHost();
    node.id = `row-${key}`;
    parent.appendChild(node);
  }
  const retained = parent.nodes[1];
  const patches = [];
  find_element_diffs(patch => { patches.push(patch); }, c.arrayToList([]), c.arrayToList([]), oldTree, newTree);
  apply_dom_changes(c.arrayToList(patches), mount, () => () => {});
  assert.deepEqual(parent.nodes.map(node => node.id), ['row-2', 'row-1']);
  assert.equal(parent.nodes[0], retained);
});

test('moving a nested list does not scan unrelated application siblings', () => {
  const mount = new ElementHost('main');
  const root = new ElementHost();
  const parent = new ElementHost();
  const unrelated = new ElementHost();
  mount.appendChild(root);
  root.appendChild(parent);
  root.appendChild(unrelated);
  parent.appendChild(new ElementHost());
  parent.appendChild(new ElementHost());
  Object.defineProperty(unrelated, 'scrollTop', { get() { throw new Error('unrelated scroll read'); } });
  const patch = c._PCT__$o__$o_(DomPatch, c.turn_tag('move-element'), c.arrayToList([0]), 1,
    c._PCT__$o__$o_(c.Option, c.turn_tag('some'), 0));
  apply_dom_changes(c.arrayToList([patch]), mount, () => () => {});
});
