import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { Component } from '../js-out/respo.schema.mjs';
import { div, span } from '../js-out/respo.core.mjs';
import { as_render_node, make_child_pair, child_pair_value, element_name, element_ref } from '../js-out/respo.util.detect.mjs';
import { purify_element, coerce_element, coerce_component, purify_events } from '../js-out/respo.util.format.mjs';
import { make_string, coerce_pairs, props__GT_html } from '../js-out/respo.render.html.mjs';
import { with_fixture_children, with_fixture_events } from '../js-out/respo.test.dom.mjs';

const tags = c.init_tags(['name', 'effects', 'listeners', 'tree', 'children', 'ref', 'event', 'key', 'node', 'wrapped']);
const component = tree => c._$n__PCT__$M_(Component,
  tags.name, tags.wrapped, tags.effects, c.arrayToList([]),
  tags.listeners, c.arrayToList([]), tags.tree, tree);
const field = (value, key) => c.option_$o_unwrap(c.get(value, key));

test('nominal helpers preserve the original element, component, ref and child identities', () => {
  const leaf = span(c.parse_cirru_edn('{} (:inner-text |leaf)'));
  const ref = () => 42;
  const live = c.assoc(leaf, tags.ref, ref);
  const wrapped = component(c._PCT_some(as_render_node(live)));
  assert.equal(coerce_element(live), live);
  assert.equal(coerce_component(wrapped), wrapped);
  assert.equal(field(coerce_element(live), tags.ref), ref);
  assert.equal(element_ref(live), ref);
  assert.equal(field(coerce_element(live), tags.children), field(live, tags.children));
  assert.equal(element_name(live).value, 'span');
});

test('event name purification drops nil and retains the existing undefined behavior', () => {
  const events = c._$n__$M_(c.turn_tag('click'), () => 42,
    c.turn_tag('gone'), null, c.turn_tag('missing'), undefined, c.turn_tag('zero'), 0);
  assert.deepEqual(new Set(c.listToArray(purify_events(events)).map(key => key.value)), new Set(['click', 'missing', 'zero']));
  assert.throws(() => purify_events(c._$n__$M_('click', () => {})), /expected a Tag key/);
  assert.equal(c.count(purify_events(c._$n__$M_('ignored', null))), 0);
});

test('purification unwraps nested components, clears refs/events and preserves child keys and absence', () => {
  const leaf = span(c.parse_cirru_edn('{} (:inner-text |leaf)'));
  const liveLeaf = with_fixture_events(c.assoc(leaf, tags.ref, () => {}),
    c.parse_cirru_edn('{} (:click nil)'));
  const wrapped = component(c._PCT_some(as_render_node(component(c._PCT_some(as_render_node(liveLeaf))))));
  const root = with_fixture_children(div(c.parse_cirru_edn('{}')), c.arrayToList([
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


test('HTML pair identity and styles preserve mixed members, empty values and attribute escaping', () => {
  const callback = () => 42;
  const pairs = c.arrayToList([c.arrayToList([c.turn_tag('id'), 'probe']), c.arrayToList(['count', 42]), c.arrayToList([c.turn_tag('handler'), callback]), c.arrayToList([c.turn_tag('missing'), null])]);
  assert.equal(coerce_pairs(pairs), pairs);
  assert.equal(c.listToArray(c.listToArray(coerce_pairs(pairs))[2])[1], callback);
  const empty = c.arrayToList([]);
  assert.equal(coerce_pairs(empty), empty);
  const styles = c.parse_cirru_edn('[] ([] :color |red) ([] :width 12)');
  const props = c._$n__$M_(c.turn_tag('title'), '<&"', c.turn_tag('style'), styles, c.turn_tag('on-click'), callback, c.turn_tag('hidden'), null);
  assert.equal(props__GT_html(props), 'style="color:red;width:12px;" title="&lt;&amp;&quot;"');
  assert.equal(props__GT_html(c._$n__$M_(c.turn_tag('style'), empty)), 'style=""');
  assert.equal(props__GT_html(c._$n__$M_()), '');
  assert.equal(field(props, c.turn_tag('style')), styles);
});
