import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { Component } from '../js-out/respo.schema.mjs';
import { div, span } from '../js-out/respo.core.mjs';
import { as_render_node, make_child_pair } from '../js-out/respo.util.detect.mjs';
import { find_child_by_key, get_markup_at, find_event_target } from '../js-out/respo.controller.resolve.mjs';
import { with_fixture_children, with_fixture_events } from '../js-out/respo.test.dom.mjs';

const t = c.init_tags(['name', 'effects', 'listeners', 'tree', 'children', 'event', 'click', 'root', 'wrapped']);
const list = c.arrayToList;
const props = c.parse_cirru_edn('{}');
const unwrap = c.option_$o_unwrap;
const component = (name, tree) => c._$n__PCT__$M_(Component,
  t.name, name, t.effects, list([]), t.listeners, list([]), t.tree, tree);
const withChildren = (element, pairs) => with_fixture_children(element, list(pairs));
const withClick = element => with_fixture_events(element, c.parse_cirru_edn('{} (:click nil)'));

test('lookup keeps component coordinate segments and separates String and Number keys', () => {
  const leaf = withClick(span(props));
  const wrapped = component(t.wrapped, c._PCT_some(as_render_node(leaf)));
  const numeric = div(props);
  const parent = withChildren(div(props), [make_child_pair('7', wrapped), make_child_pair(7, numeric)]);
  const root = component(t.root, c._PCT_some(as_render_node(parent)));
  assert.equal(unwrap(get_markup_at(root, list([]))), root);
  assert.equal(unwrap(get_markup_at(root, list([t.root, '7']))), wrapped);
  assert.equal(unwrap(get_markup_at(root, list([t.root, 7]))), numeric);
  assert.equal(unwrap(get_markup_at(root, list([t.root, '7', t.wrapped]))), leaf);
  assert.equal(unwrap(find_event_target(root, list([t.root, '7', t.wrapped]), t.click)), leaf);
});

test('event lookup bubbles to the parent and keeps missing/empty child errors', () => {
  const leaf = span(props);
  const parent = withClick(withChildren(div(props), [make_child_pair('leaf', leaf), make_child_pair('empty', null)]));
  assert.equal(unwrap(find_event_target(parent, list(['leaf']), t.click)), parent);
  assert.equal(find_event_target(leaf, list([]), t.click).tag.value, 'none');
  assert.throws(() => get_markup_at(parent, list(['missing'])), /child-not-found/);
  assert.throws(() => get_markup_at(parent, list(['empty'])), /child-not-found/);
  assert.equal(find_child_by_key(list([make_child_pair('empty', null)]), 'empty').tag.value, 'none');
  const emptyComponent = component(t.root, c._PCT_none());
  assert.equal(get_markup_at(emptyComponent, list([t.root])).tag.value, 'none');
  assert.equal(find_event_target(emptyComponent, list([]), t.click).tag.value, 'none');
});
