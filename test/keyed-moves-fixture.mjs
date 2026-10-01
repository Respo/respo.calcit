import * as c from '../js-out/calcit.core.mjs';
import { Component, DomProps } from '../js-out/respo.schema.mjs';
import { div, input, list__GT_, effect_on_mount, effect_on_unmount, render_$x_ } from '../js-out/respo.core.mjs';
import { find_children_diffs } from '../js-out/respo.render.diff.mjs';

const tags = c.init_tags(['name', 'tree', 'effects', 'listeners', 'some', 'keyed-row']);
const list = values => c.arrayToList(values);
const props = overrides => c._$n__PCT__$M_(DomProps, ...DomProps.fields.flatMap(field =>
  [field, overrides[field.value]]));
export const childPairs = (keys, rows) => list(keys.map(key => list([key, rows.get(key)])));
export function createRows(keys, counts = { mounts: 0, unmounts: 0 }) {
  return new Map(keys.map(key => [key, c._$n__PCT__$M_(Component,
    tags.name, tags['keyed-row'], tags.tree, c._PCT__$o__$o_(c.Option, tags.some,
      div(props({ id: `row-${key}`, style: c._$n__$M_(
        c.turn_tag('height'), '40px', c.turn_tag('width'), '120px', c.turn_tag('overflow'), 'auto') }),
        input(props({ style: c._$n__$M_(c.turn_tag('width'), '400px', c.turn_tag('margin-bottom'), '200px') })))),
      tags.listeners, list([]), tags.effects, list([
        effect_on_mount(() => { counts.mounts++; }),
        effect_on_unmount(() => { counts.unmounts++; }),
      ]))]));
}
export function collectPatches(oldKeys, newKeys, rows) {
  const patches = [];
  find_children_diffs(patch => { patches.push(patch); }, list([]), list([]), 0,
    childPairs(oldKeys, rows), childPairs(newKeys, rows));
  return patches;
}
export function verifyKeyedMoves(mount, forceFallback = false) {
  const keys = Array.from({ length: 40 }, (_, i) => i);
  const counts = { mounts: 0, unmounts: 0 };
  const rows = createRows([...keys, 40, 41], counts);
  const tree = order => list__GT_(props({}), childPairs(order, rows));
  render_$x_(mount, tree(keys), () => {});
  const container = mount.firstElementChild;
  if (forceFallback) Object.defineProperty(container, 'moveBefore', { value: undefined });
  const originals = new Map([...container.children].map(node => [Number(node.id.slice(4)), node]));
  const scroller = originals.get(39);
  const active = scroller.firstElementChild;
  active.value = 'user input';
  active.focus();
  active.setSelectionRange(2, 6);
  scroller.scrollTop = 10;
  const scrollTop = scroller.scrollTop;
  let order = keys;
  const cases = [
    [39, ...keys.slice(0, 39)],
    [...keys].reverse(),
    [40, ...keys, 41],
    [41, ...keys.filter(key => key % 2 === 0).reverse(), 40],
  ];
  let moves = 0;
  for (const next of cases) {
    const patches = collectPatches(order, next, rows);
    moves += patches.filter(patch => patch.tag.value === 'move-element').length;
    render_$x_(mount, tree(next), () => {});
    const nodes = [...container.children];
    if (JSON.stringify(nodes.map(node => Number(node.id.slice(4)))) !== JSON.stringify(next))
      throw new Error('Keyed reorder produced incorrect DOM order');
    for (const key of next) {
      if (originals.has(key) && nodes[next.indexOf(key)] !== originals.get(key))
        throw new Error(`Keyed reorder replaced node ${key}`);
    }
    if (next.includes(39) && (document.activeElement !== active || active.value !== 'user input' ||
        active.selectionStart !== 2 || active.selectionEnd !== 6 || scroller.scrollTop !== scrollTop))
      throw new Error('Keyed reorder lost focus, input, selection, or scroll');
    order = next;
  }
  if (counts.mounts !== 42 || counts.unmounts !== 20)
    throw new Error(`Moved components remounted: ${JSON.stringify(counts)}`);
  return { cases: cases.length, moves, ...counts, nodeIdentityPreserved: true, forceFallback };
}
