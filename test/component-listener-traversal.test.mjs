import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { Component, RespoListener } from '../js-out/respo.schema.mjs';
import { div } from '../js-out/respo.core.mjs';
import { as_render_node, make_child_pair } from '../js-out/respo.util.detect.mjs';
import { traverse_and_call, wrap_dispatch } from '../js-out/respo.controller.client.mjs';
import { with_fixture_children } from '../js-out/respo.test.dom.mjs';

const t = c.init_tags(['name', 'handler', 'effects', 'listeners', 'tree', 'children', 'watch', 'changed', 'root', 'nested', 'first', 'second', 'states', 'persist', 'direct']);
const list = c.arrayToList;

function fixture(includeEmpty, fail = false) {
  const calls = [];
  const operations = [];
  const event = c._$o__$o_(t.changed);
  const dispatch = wrap_dispatch(c.atom(op => { operations.push(op); }));
  const listener = (label, action) => c._$n__PCT__$M_(RespoListener,
    t.name, t.watch, t.handler, (received, d) => {
      assert.equal(received, event);
      assert.equal(d, dispatch);
      calls.push(label);
      action?.(d);
    });
  const component = (name, tree, listeners) => c._$n__PCT__$M_(Component,
    t.name, name, t.effects, list([]), t.listeners, list(listeners), t.tree, tree);
  const direct = c._$o__$o_(t.direct);
  const first = component(t.first, c._PCT_none(), [listener('first', d => d(direct))]);
  const second = component(t.second, c._PCT_none(), [listener('second')]);
  const pairs = [make_child_pair('first', first), make_child_pair('second', second)];
  if (includeEmpty) pairs.splice(1, 0, make_child_pair('empty', null));
  const element = with_fixture_children(div(c.parse_cirru_edn('{}')), list(pairs));
  const nested = component(t.nested, c._PCT_some(as_render_node(element)), [listener('nested')]);
  const root = component(t.root, c._PCT_some(as_render_node(nested)), [
    listener('root-1', d => d(list(['cursor']), 'value')),
    listener('root-2', d => { if (fail) throw new Error('listener-failed'); d(t.persist, null); }),
  ]);
  return { root, event, dispatch, calls, operations, direct };
}

for (const includeEmpty of [false, true]) {
  test(`listener traversal preserves depth-first order and legacy dispatch (empty child: ${includeEmpty})`, () => {
    const f = fixture(includeEmpty);
    assert.equal(traverse_and_call(f.root, f.event, f.dispatch), undefined);
    assert.deepEqual(f.calls, ['root-1', 'root-2', 'nested', 'first', 'second']);
    assert.equal(f.operations.length, 3);
    assert.equal(c.str(f.operations[0]), c.str(c._$o__$o_(t.states, list(['cursor']), 'value')));
    assert.equal(c.str(f.operations[1]), c.str(c._$o__$o_(t.persist)));
    assert.equal(f.operations[2], f.direct);
  });
}

test('a listener error still stops later listeners and descendants', () => {
  const f = fixture(false, true);
  assert.throws(() => traverse_and_call(f.root, f.event, f.dispatch), /listener-failed/);
  assert.deepEqual(f.calls, ['root-1', 'root-2']);
});
