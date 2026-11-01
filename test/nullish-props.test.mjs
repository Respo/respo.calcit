import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { DomProps } from '../js-out/respo.schema.mjs';
import { input, normalize_dom_props } from '../js-out/respo.core.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';
import { optionStruct } from './dom-props.mjs';

const props = (overrides = {}) => optionStruct(c._$n__PCT__$M_, DomProps,
  ...DomProps.fields.flatMap(field => [field,
    Object.hasOwn(overrides, field.value) ? overrides[field.value] : undefined]));

test('undefined optional DomProps do not reach ref/event validation', () => {
  const html = make_string(input(props({ value: 'hello' })));
  assert.match(html, /value="hello"/);
  assert.doesNotMatch(html, /placeholder=|undefined/);
});

test('normalization drops null and undefined but preserves falsey values', () => {
  const normalized = normalize_dom_props(props({
    placeholder: '', checked: false, 'tab-index': 0, title: null,
  }));
  const tags = c.init_tags(['placeholder', 'checked', 'tab-index', 'title', 'ref']);
  const missing = Symbol('missing');
  const read = key => c.option_$o_unwrap_or(c.get(normalized, key), missing);
  assert.equal(read(tags.placeholder), '');
  assert.equal(read(tags.checked), false);
  assert.equal(read(tags['tab-index']), 0);
  assert.equal(read(tags.title), missing);
  assert.equal(read(tags.ref), missing);
});

test('a plain props map drops raw null and undefined values', () => {
  const tags = c.init_tags(['placeholder', 'title', 'id', 'checked']);
  const normalized = normalize_dom_props(c._$n__$M_(
    tags.placeholder, null, tags.title, undefined, tags.id, 'box', tags.checked, false));
  const missing = Symbol('missing');
  const read = key => c.option_$o_unwrap_or(c.get(normalized, key), missing);
  assert.equal(read(tags.placeholder), missing);
  assert.equal(read(tags.title), missing);
  assert.equal(read(tags.id), 'box');
  assert.equal(read(tags.checked), false);
});

test('explicit empty placeholder stays present', () => {
  assert.match(make_string(input(props({ placeholder: '' }))), /placeholder=""/);
});
