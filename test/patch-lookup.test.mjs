import assert from 'node:assert/strict';
import test from 'node:test';
import { ElementHost } from './dom-host.mjs';
globalThis.Element = ElementHost;
globalThis.document = { createElement: name => new ElementHost(name) };
const c = await import('../js-out/calcit.core.mjs');
const { DomPatch, DomProps } = await import('../js-out/respo.schema.mjs');
const { apply_dom_changes } = await import('../js-out/respo.render.patch.mjs');
const { first_duplicate_key, detect_keys_dup } = await import('../js-out/respo.render.diff.mjs');
const { div } = await import('../js-out/respo.core.mjs');
const list = c.arrayToList;
const patch = (tag, coord, ...args) => c._PCT__$o__$o_(DomPatch, c.turn_tag(tag), list([]), list(coord), ...args);
const prop = (coord, value) => patch('replace-prop', coord, c.turn_tag('title'), value);
const element = id => div(c._$n__PCT__$M_(DomProps, ...DomProps.fields.flatMap(field =>
  [field, field.value === 'id' ? id : undefined])));
const apply = (mount, changes) => apply_dom_changes(list(changes), mount, () => () => {});
const move = (source, anchor) => c._PCT__$o__$o_(DomPatch, c.turn_tag('move-element'), list([]), source,
  anchor === undefined ? c._PCT__$o__$o_(c.Option, c.turn_tag('none')) :
    c._PCT__$o__$o_(c.Option, c.turn_tag('some'), anchor));

test('cached coordinates follow insert/remove/replace/append/move within one batch', () => {
  const mount = new ElementHost('main');
  const parent = new ElementHost();
  const a = new ElementHost(); a.id = 'A';
  const b = new ElementHost(); b.id = 'B';
  mount.appendChild(parent); parent.appendChild(a); parent.appendChild(b);
  apply(mount, [prop([1], 'before'), patch('add-element', [0], element('C')), prop([1], 'after-insert'),
    patch('rm-element', [0]), prop([1], 'after-remove'), patch('replace-element', [1], element('D')),
    prop([1], 'after-replace'), patch('append-element', [], element('E')), prop([2], 'after-append'),
    move(2, 0), prop([0], 'after-move')]);
  assert.equal(a.title, 'after-insert');
  assert.equal(b.title, 'after-remove');
  assert.deepEqual(parent.nodes.map(node => [node.id, node.title]),
    [['E', 'after-move'], ['A', 'after-insert'], ['D', 'after-replace']]);
});

test('root replacement and effects invalidate previously located nodes', () => {
  const mount = new ElementHost('main');
  const oldRoot = new ElementHost(); mount.appendChild(oldRoot);
  apply(mount, [prop([], 'old'), patch('replace-element', [], element('replacement')), prop([], 'new')]);
  assert.equal(oldRoot.title, 'old');
  assert.equal(mount.firstElementChild.title, 'new');
  const oldChild = new ElementHost(); mount.firstElementChild.appendChild(oldChild);
  const newRoot = new ElementHost(); const newChild = new ElementHost(); newRoot.appendChild(newChild);
  apply(mount, [prop([0], 'old-child'), patch('effect-update', [], () => {
    mount.firstElementChild.remove(); mount.appendChild(newRoot);
  }), prop([0], 'new-child')]);
  assert.equal(oldChild.title, 'old-child');
  assert.equal(newChild.title, 'new-child');
});

test('content props invalidate removed children before later patches', () => {
  const mount = new ElementHost('main'); const root = new ElementHost(); const child = new ElementHost();
  mount.appendChild(root); root.appendChild(child);
  apply(mount, [prop([0], 'old'), patch('replace-prop', [], c.turn_tag('inner-text'), 'text'),
    patch('append-element', [], element('new')), prop([0], 'new')]);
  assert.equal(child.title, 'old');
  assert.equal(root.firstElementChild.id, 'new');
  assert.equal(root.firstElementChild.title, 'new');
});

test('repeated deep coordinate patches reuse DOM path reads', () => {
  const mount = new ElementHost('main'); const root = new ElementHost(); mount.appendChild(root);
  let leaf = root;
  const coord = Array(24).fill(0);
  for (const _ of coord) { const next = new ElementHost(); leaf.appendChild(next); leaf = next; }
  ElementHost.reads = 0;
  apply(mount, Array.from({ length: 1000 }, (_, i) => prop(coord, `title-${i}`)));
  assert.equal(leaf.title, 'title-999');
  assert.ok(ElementHost.reads <= 24, `expected path reuse, got ${ElementHost.reads} child reads`);
});

test('set duplicate detection preserves first original occurrence and deep key equality', () => {
  assert.equal(detect_keys_dup(list([])), false);
  assert.equal(detect_keys_dup(list(['unique'])), false);
  assert.equal(detect_keys_dup(list(['a', 'b'])), false);
  assert.equal(first_duplicate_key(list(['a', 'b', 'b', 'a'])).extra[0], 'a');
  const messages = [];
  const originalError = console.error;
  console.error = message => { messages.push(message); };
  try { assert.equal(detect_keys_dup(list(['a', 'b', 'b', 'a'])), true); }
  finally { console.error = originalError; }
  assert.deepEqual(messages, ['duplicated key a']);
  const keys = [list([1, 2]), list([3]), list([1, 2])];
  assert.equal(first_duplicate_key(list(keys)).extra[0], keys[0]);
});

test('hash collisions do not merge distinct keys or change warning order', () => {
  assert.equal(c._$n_hash('Aa'), c._$n_hash('BB'));
  assert.equal(first_duplicate_key(list(['Aa', 'BB'])).tag.value, 'none');
  assert.equal(first_duplicate_key(list(['Aa', 'BB', 'BB', 'Aa'])).extra[0], 'Aa');
});
