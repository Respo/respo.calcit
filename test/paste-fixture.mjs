import * as c from '../js-out/calcit.core.mjs';
import { DomProps } from '../js-out/respo.schema.mjs';
import { Op } from '../js-out/respo.app.schema.mjs';
import { textarea, realize_ssr_$x_, render_$x_ } from '../js-out/respo.core.mjs';
import { comp_event_shell } from '../js-out/respo.test.dom.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const tags = c.init_tags(['type', 'original-event', 'event', 'clear']);
const props = handler => c._$n__PCT__$M_(DomProps, ...DomProps.fields.flatMap(field =>
  [field, field.value === 'on-paste' ? handler : undefined]));

export function verifyPasteEvents(mount, prepareSSR, firePaste) {
  const delivered = [];
  const dispatched = [];
  const handler = name => (event, dispatch) => {
    const original = c.option_$o_unwrap(c.get(event, tags['original-event']));
    if (c.option_$o_unwrap(c.get(event, tags.event)) !== original ||
        c.option_$o_unwrap(c.get(event, tags.type)) !== 'paste') {
      throw new Error('Paste event lost its original event or existing event type');
    }
    delivered.push([name, original.clipboardData.getData('text/plain')]);
    dispatch(c._PCT__$o__$o_(Op, tags.clear));
  };
  const tree = callback => comp_event_shell(textarea(props(callback)));
  const initial = tree(handler('first'));
  const html = make_string(initial);
  if (html !== '<textarea data-comp="comp-event-shell"></textarea>')
    throw new Error(`Paste event leaked into SSR: ${html}`);
  const root = prepareSSR(html);
  const dispatch = op => { dispatched.push(op); };
  realize_ssr_$x_(mount, initial, dispatch);
  firePaste(root, 'SSR paste');
  render_$x_(mount, tree(handler('updated')), dispatch);
  firePaste(root, 'updated paste');
  render_$x_(mount, tree(undefined), dispatch);
  if (root.onpaste != null) throw new Error('Removed paste handler remains on DOM');
  if (mount.firstElementChild !== root) throw new Error('Paste update replaced textarea');
  if (JSON.stringify(delivered) !== JSON.stringify([
    ['first', 'SSR paste'], ['updated', 'updated paste'],
  ]) || dispatched.length !== 2) throw new Error('Paste was delivered to the wrong handler');
  return { pastes: delivered.length, dispatches: dispatched.length, handlerRemoved: true, rootPreserved: true };
}
