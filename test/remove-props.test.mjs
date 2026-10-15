import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { rm_prop } from '../js-out/respo.render.patch.mjs';

// Minimal HTML element: reflected String properties stringify on assignment, like browsers do.
const reflected = { title: 'title', id: 'id', tabIndex: 'tabindex', ariaLabel: 'aria-label', className: 'class', href: 'href' };

class HtmlElement {
  constructor(attrs = {}) {
    this.attributes = new Map(Object.entries(attrs));
    this.dataset = {};
    this.value = '';
    this.checked = false;
    for (const [prop, attr] of Object.entries(reflected)) {
      Object.defineProperty(this, prop, {
        get: () => this.attributes.get(attr) ?? '',
        set: v => this.attributes.set(attr, String(v)),
      });
    }
  }
  getAttribute(name) { return this.attributes.get(name.toLowerCase()) ?? null; }
  removeAttribute(name) { this.attributes.delete(name.toLowerCase()); }
}

const tags = c.init_tags(['title', 'id', 'tab-index', 'aria-label', 'class-name', 'href', 'value', 'checked', 'data-x']);

test('removing reflected String props clears the attribute instead of writing "null"', () => {
  for (const [tag, attr] of [['title', 'title'], ['id', 'id'], ['tab-index', 'tabindex'], ['aria-label', 'aria-label'], ['class-name', 'class'], ['href', 'href']]) {
    const el = new HtmlElement({ [attr]: 'old' });
    rm_prop(el, tags[tag]);
    assert.equal(el.getAttribute(attr), null, `${tag} should be removed`);
  }
});

test('removing value, checked and data props keeps their existing semantics', () => {
  const el = new HtmlElement();
  el.value = 'typed';
  el.checked = true;
  el.dataset.x = '1';
  rm_prop(el, tags.value);
  rm_prop(el, tags.checked);
  rm_prop(el, tags['data-x']);
  assert.equal(el.value, null);
  assert.equal(el.checked, false);
  assert.equal(Object.hasOwn(el.dataset, 'x'), false);
});
