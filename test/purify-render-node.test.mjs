import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { Component } from '../js-out/respo.schema.mjs';
import { div, span } from '../js-out/respo.core.mjs';
import { as_render_node, make_child_pair, child_pair_value } from '../js-out/respo.util.detect.mjs';
import { purify_element } from '../js-out/respo.util.format.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const tags = c.init_tags(['name', 'effects', 'listeners', 'tree', 'children', 'ref', 'event', 'key', 'node', 'wrapped']);
const component = tree => c._$n__PCT__$M_(Component,
  tags.name, tags.wrapped, tags.effects, c.arrayToList([]),
  tags.listeners, c.arrayToList([]), tags.tree, tree);
const field = (value, key) => c.option_$o_unwrap(c.get(value, key));

test('purification unwraps nested components, clears refs/events and preserves child keys and absence', () => {
  const leaf = span(c.parse_cirru_edn('{} (:inner-text |leaf)'));
  const liveLeaf = c.assoc(c.assoc(leaf, tags.ref, () => {}), tags.event,
    c.parse_cirru_edn('{} (:click nil)'));
  const wrapped = component(c._PCT_some(as_render_node(component(c._PCT_some(as_render_node(liveLeaf))))));
  const root = c.assoc(div(c.parse_cirru_edn('{}')), tags.children, c.arrayToList([
    make_child_pair(7, wrapped), make_child_pair('empty', null),
  ]));
  const cleaned = purify_element(root);
  const children = c.listToArray(field(cleaned, tags.children));
  const child = child_pair_value(children[0]);
  assert.equal(field(children[0], tags.key), 7);
  assert.equal(field(children[1], tags.key), 'empty');
  assert.equal(field(children[1], tags.node).tag.value, 'none');
  assert.equal(field(child, tags.ref), null);
  assert.equal(c.count(field(child, tags.event)), 0);
  assert.equal(c.count(field(liveLeaf, tags.event)), 1);
  assert.equal(child_pair_value(c.listToArray(field(root, tags.children))[0]), wrapped);
  assert.equal(make_string(cleaned), '<div><span>leaf</span></div>');
});

test('purification keeps the explicit error for an empty nested component tree', () => {
  const empty = component(c._PCT_none());
  const wrapped = component(c._PCT_some(as_render_node(empty)));
  assert.throws(() => purify_element(wrapped), /tree-is-empty/);
});
