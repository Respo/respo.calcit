import assert from 'node:assert/strict';
import test from 'node:test';
import { ElementHost } from './dom-host.mjs';
globalThis.Element = ElementHost;
globalThis.document = { createElement: name => new ElementHost(name) };
const c = await import('../js-out/calcit.core.mjs');
const optionTags = c.init_tags(['none', 'some']);
const optionNone = () => c._PCT__$o__$o_(c.Option, optionTags.none);
const optionSome = value => c._PCT__$o__$o_(c.Option, optionTags.some, value);
const { Component, Effect } = await import('../js-out/respo.schema.mjs');
const { div, span } = await import('../js-out/respo.core.mjs');
const { as_render_node, make_child_pair } = await import('../js-out/respo.util.detect.mjs');
const { collect_mounting, collect_unmounting } = await import('../js-out/respo.render.effect.mjs');
const { apply_dom_changes, run_effect } = await import('../js-out/respo.render.patch.mjs');
const { find_element_diffs } = await import('../js-out/respo.render.diff.mjs');
const { with_fixture_children } = await import('../js-out/respo.test.dom.mjs');
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

function refChanges(oldRef, newRef) {
  const changes = [];
  const element = callback => c.assoc(div(c.parse_cirru_edn('{}')), t.ref, callback);
  find_element_diffs(op => { changes.push(op); }, list([]), list([]), element(oldRef), element(newRef));
  return changes;
}

test('changed refs retain checked callbacks and clear before setting the actual DOM target', () => {
  const calls = [];
  const changes = refChanges(target => { calls.push(['old', target]); return 42; },
    target => { calls.push(['new', target]); return { ignored: true }; });
  assert.deepEqual(changes.map(op => op.tag.value), ['effect-before-update', 'effect-update']);
  const target = new ElementHost('div');
  const mount = new ElementHost('main');
  mount.appendChild(target);
  assert.equal(apply_dom_changes(list(changes), mount, () => () => {}), undefined);
  assert.deepEqual(calls, [['old', null], ['new', target]]);
});

test('ref patch callbacks return Unit without leaking handler results', () => {
  const calls = [];
  const changes = refChanges(target => { calls.push(['old', target]); return 42; },
    target => { calls.push(['new', target]); return 'ignored'; });
  const target = new ElementHost('div');
  for (const patch of changes) {
    const callback = c._$n_enum_$o_nth(patch, 3);
    assert.equal(callback(target), undefined);
  }
  assert.deepEqual(calls, [['old', null], ['new', target]]);
});

for (const [phase, collect, absent] of [
  ['mount', collect_mounting, false], ['unmount', collect_unmounting, true],
]) {
  test(`${phase} ref patch returns Unit and preserves callback failures`, () => {
    const target = new ElementHost('div');
    const calls = [];
    const patches = [];
    const element = c.assoc(div(c.parse_cirru_edn('{}')), t.ref, value => {
      calls.push(value);
      return 42;
    });
    collect(op => { patches.push(op); }, list([]), list([]), element, false);
    assert.equal(patches.length, 1);
    assert.equal(patches[0].tag.value, `effect-${phase}`);
    assert.equal(c._$n_enum_$o_nth(patches[0], 3)(target), undefined);
    assert.deepEqual(calls, [absent ? null : target]);

    const failure = new Error(`ref ${phase} fixture`);
    let attempts = 0;
    const failing = c.assoc(element, t.ref, value => {
      assert.equal(value, absent ? null : target);
      attempts += 1;
      throw failure;
    });
    const failedPatches = [];
    collect(op => { failedPatches.push(op); }, list([]), list([]), failing, false);
    assert.equal(failedPatches.length, 1);
    assert.throws(() => c._$n_enum_$o_nth(failedPatches[0], 3)(target), error => error === failure);
    assert.equal(attempts, 1);
  });
}

test('unchanged and absent refs do not schedule callbacks; failures propagate once', () => {
  const unchanged = () => { throw new Error('unchanged callback must not run'); };
  assert.deepEqual(refChanges(unchanged, unchanged), []);
  assert.deepEqual(refChanges(null, null), []);
  const failure = new Error('ref update fixture');
  const target = new ElementHost('div');
  for (const beforeUpdate of [true, false]) {
    let calls = 0;
    const failing = value => {
      assert.equal(value, beforeUpdate ? null : target);
      calls += 1;
      throw failure;
    };
    const changes = beforeUpdate ? refChanges(failing, null) : refChanges(null, failing);
    assert.equal(changes.length, 1);
    assert.equal(changes[0].tag.value, beforeUpdate ? 'effect-before-update' : 'effect-update');
    const mount = new ElementHost('main');
    mount.appendChild(target);
    assert.throws(() => apply_dom_changes(list(changes), mount, () => () => {}), error => error === failure);
    assert.equal(calls, 1);
  }
});

function fixture(includeEmpty) {
  const calls = [];
  const component = (name, element) => c._$n__PCT__$M_(Component,
    t.name, name, t.listeners, list([]), t.tree, optionSome(as_render_node(element)),
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
  const parent = with_fixture_children(c.assoc(div(c.parse_cirru_edn('{}')), t.ref, ref('parent')), list(pairs));
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
