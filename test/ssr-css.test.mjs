import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { DomProps } from '../js-out/respo.schema.mjs';
import { div } from '../js-out/respo.core.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';
import { text__GT_html } from '../js-out/respo.util.format.mjs';
import { create_style_$x_, render_css_block, warn_style_literals, _$s_style_list_in_nodejs, _$s_style_indices_in_nodejs, nodejs_$q_ } from '../js-out/respo.css.mjs';

test('Style source validation reports extra tokens inside nested List forms', () => {
  const tags = c.init_tags(['color']);
  const source = c.arrayToList([
    c.to_symbol('{}'),
    c.arrayToList(['&:hover', c.arrayToList([
      c.to_symbol('{}'), c.arrayToList([tags.color, 'red', 'extra']),
    ])]),
  ]);
  const messages = [];
  const originalLog = console.log;
  try {
    console.log = (...args) => messages.push(args.join(' '));
    warn_style_literals(source);
    assert.deepEqual(messages, ['defstyle-extra-tokens']);
  } finally {
    console.log = originalLog;
  }
});

test('SSR preserves literal ampersands in text and attributes', () => {
  const value = '& &amp; < > "';
  const props = c._$n__PCT__$M_(DomProps, ...DomProps.fields.flatMap(field => [field,
    ['title', 'inner-text'].includes(field.value) ? value : undefined]));
  assert.equal(make_string(div(props)),
    '<div title="&amp; &amp;amp; &lt; &gt; &quot;">&amp; &amp;amp; &lt; &gt; "</div>');
});

test('HTML text keeps scalar formatting and rejects arbitrary hosts', () => {
  const tags = c.init_tags(['ready']);
  for (const [value, expected] of [
    [null, ''], [true, 'true'], [false, 'false'], [12.5, '12.5'],
    [tags.ready, 'ready'], [c.to_symbol('ready'), 'ready'], ['<ready>&amp;', '&lt;ready&gt;&amp;amp;'],
  ]) {
    assert.equal(text__GT_html(value), expected);
  }
  for (const value of [undefined, {}, new Date(0), () => 'text']) {
    assert.throws(() => text__GT_html(value), /Attribute value must be a scalar/);
  }
});

test('Node style registration deduplicates names and replaces rules in place', () => {
  assert.equal(nodejs_$q_, true);
  const tags = c.init_tags(['color']);
  const rules = color => c._$n__$M_('&', c._$n__$M_(tags.color, color));
  const originalList = c.deref(_$s_style_list_in_nodejs);
  const originalIndices = c.deref(_$s_style_indices_in_nodejs);
  const original = c.listToArray(originalList);
  try {
    const firstName = 'ssr-style-first';
    const secondName = 'ssr-style-second';
    assert.equal(create_style_$x_(firstName, rules('red')), firstName);
    create_style_$x_(firstName, rules('red'));
    create_style_$x_(secondName, rules('blue'));
    create_style_$x_(firstName, rules('green'));
    create_style_$x_(firstName, rules('green'));
    assert.deepEqual(c.listToArray(c.deref(_$s_style_list_in_nodejs)), [
      ...original, render_css_block(firstName, rules('green')), render_css_block(secondName, rules('blue')),
    ]);
    c.reset_$x_(_$s_style_list_in_nodejs, c.arrayToList([]));
    create_style_$x_(secondName, rules('purple'));
    create_style_$x_(firstName, rules('orange'));
    assert.deepEqual(c.listToArray(c.deref(_$s_style_list_in_nodejs)), [
      render_css_block(secondName, rules('purple')), render_css_block(firstName, rules('orange')),
    ]);
  } finally {
    c.reset_$x_(_$s_style_list_in_nodejs, originalList);
    c.reset_$x_(_$s_style_indices_in_nodejs, originalIndices);
  }
});
