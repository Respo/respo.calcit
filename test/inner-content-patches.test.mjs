import assert from 'node:assert/strict';
import test from 'node:test';

import { ElementHost } from './dom-host.mjs';
globalThis.Element = ElementHost;
globalThis.document = { createElement: name => new ElementHost(name) };
const c = await import('../js-out/calcit.core.mjs');
const { DomProps } = await import('../js-out/respo.schema.mjs');
const { div, span } = await import('../js-out/respo.core.mjs');
const { make_element } = await import('../js-out/respo.render.dom.mjs');
const { find_element_diffs } = await import('../js-out/respo.render.diff.mjs');
const { apply_dom_changes } = await import('../js-out/respo.render.patch.mjs');

const props = (overrides = {}) => c._$n__PCT__$M_(DomProps, ...DomProps.fields.flatMap(field =>
  [field, overrides[field.value]]));
const paragraph = () => div(props(), span(props({ 'inner-text': 'a' })), span(props({ 'inner-text': 'b' })));

function renderSequence(trees) {
  const mount = new ElementHost('main');
  const warnings = [];
  const originalWarn = console.warn;
  console.warn = (...args) => warnings.push(args.join(' '));
  try {
    const [oldTree, newTree] = trees;
    mount.appendChild(make_element(oldTree, () => () => {}, c.arrayToList([])));
    const patches = [];
    find_element_diffs(patch => { patches.push(patch); }, c.arrayToList([]), c.arrayToList([]), oldTree, newTree);
    apply_dom_changes(c.arrayToList(patches), mount, () => () => {});
  } finally {
    console.warn = originalWarn;
  }
  return { root: mount.firstElementChild, warnings };
}

for (const field of ['innerHTML', 'inner-text']) {
  test(`replacing children with ${field} removes old children without warnings`, () => {
    const { root, warnings } = renderSequence([paragraph(), div(props({ [field]: '<b>code</b>' }))]);
    assert.deepEqual(warnings, []);
    assert.equal(root.nodes.length, 0);
    assert.equal(field === 'innerHTML' ? root.innerHTML : root.innerText, '<b>code</b>');
  });

  test(`replacing ${field} with children keeps the new children`, () => {
    const { root, warnings } = renderSequence([div(props({ [field]: '<b>code</b>' })), paragraph()]);
    assert.deepEqual(warnings, []);
    assert.deepEqual(root.nodes.map(node => node.innerText), ['a', 'b']);
  });
}

test('removed component children still run unmount effects before innerHTML is written', async () => {
  const { createRows, childPairs } = await import('./keyed-moves-fixture.mjs');
  const { list__GT_ } = await import('../js-out/respo.core.mjs');
  const counts = { mounts: 0, unmounts: 0 };
  const rows = createRows([0, 1], counts);
  const { root, warnings } = renderSequence([list__GT_(props(), childPairs([0, 1], rows)),
    div(props({ innerHTML: '<pre>code</pre>' }))]);
  assert.deepEqual(warnings, []);
  assert.equal(counts.unmounts, 2);
  assert.equal(root.nodes.length, 0);
  assert.equal(root.innerHTML, '<pre>code</pre>');
});
