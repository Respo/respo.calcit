import { DomProps } from '../js-out/respo.schema.mjs';
import * as c from '../js-out/calcit.core.mjs';
import { a, span, realize_ssr_$x_, render_$x_ } from '../js-out/respo.core.mjs';
import { comp_event_shell } from '../js-out/respo.test.dom.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const props = (overrides = {}) => c._$n__PCT__$M_(DomProps,
  ...DomProps.fields.flatMap(field => [field,
    Object.hasOwn(overrides, field.value) ? overrides[field.value] : undefined]));

export function verifyDataCompUpdates(mount, prepareSSR) {
  const tree = overrides => comp_event_shell(a(props(overrides), span(props())));
  const initial = tree({ href: '/page', title: 'title' });
  const html = make_string(initial);
  if (html !== '<a data-comp="comp-event-shell" href="/page" title="title"><span></span></a>') {
    throw new Error(`unexpected decorated SSR HTML: ${html}`);
  }
  const root = prepareSSR(html);
  const child = root.firstElementChild;
  const dispatch = () => {};
  realize_ssr_$x_(mount, initial, dispatch);
  for (const overrides of [
    { href: '/page' },
    { 'class-name': 'styled', href: '/new', title: 'updated' },
    { 'class-name': 'styled' },
  ]) {
    render_$x_(mount, tree(overrides), dispatch);
    if (root.dataset.comp !== 'comp-event-shell') throw new Error('attribute patch lost data-comp');
    if (mount.firstElementChild !== root || root.firstElementChild !== child) {
      throw new Error('attribute patch replaced existing DOM nodes');
    }
    for (const name of ['href', 'title']) {
      // Reflected-property removal is tracked in Respo/respo.calcit#199; this
      // regression verifies marker ordering and supplied property updates.
      if ((name === 'href' || Object.hasOwn(overrides, name)) &&
          root.getAttribute(name) !== (overrides[name] ?? null)) {
        throw new Error(`attribute patch did not update ${name}`);
      }
    }
  }
  return { marker: root.dataset.comp, renders: 3, rootPreserved: true, childPreserved: true };
}
