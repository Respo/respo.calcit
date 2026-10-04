import * as c from '../js-out/calcit.core.mjs';
import { button, render_$x_, realize_ssr_$x_, configure_events_$x_, _$s_global_element } from '../js-out/respo.core.mjs';
import { Component, DomProps, EventConfig, ListenerMode } from '../js-out/respo.schema.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';
import { default_config } from '../js-out/respo.render.events.mjs';
import { as_render_node } from '../js-out/respo.util.detect.mjs';

const tags = c.init_tags(['listener-mode', 'stop-propagation?', 'property', 'add-event-listener', 'root', 'name', 'tree', 'effects', 'listeners']);
const list = c.arrayToList([]);
const makeConfig = (stop, mode) => c._$n__PCT__$M_(EventConfig,
  tags['stop-propagation?'], stop, tags['listener-mode'], c._PCT__$o__$o_(ListenerMode, tags[mode]));
function tree(handler) {
  const props = c._$n__PCT__$M_(DomProps, ...DomProps.fields.flatMap(field => [field,
    field.value === 'on-click' ? handler : field.value === 'inner-text' ? 'event button' : null]));
  return c._$n__PCT__$M_(Component, tags.name, tags.root,
    tags.effects, list, tags.listeners, list, tags.tree, c._PCT_some(as_render_node(button(props))));
}
const check = (condition, message) => { if (!condition) throw new Error(message); };

export function verifyEventConfig(mount) {
  const results = [];
  for (const ssr of [false, true]) {
    for (const mode of ['property', 'add-event-listener']) {
      for (const stop of [true, false]) {
        c.reset_$x_(_$s_global_element, c._PCT_none());
        configure_events_$x_(makeConfig(stop, mode));
        let handled = 0;
        let updated = 0;
        let native = 0;
        let bubbled = 0;
        const first = tree(() => { handled++; });
        const documentListener = () => { bubbled++; };
        document.addEventListener('click', documentListener);
        let target;
        let property;
        try {
          if (ssr) {
            mount.innerHTML = make_string(first);
            target = mount.firstElementChild;
            property = () => { native++; };
            target.onclick = property;
            realize_ssr_$x_(mount, first, () => {});
            check(mode !== 'add-event-listener' || target.onclick === property, 'SSR must preserve preexisting onclick');
          } else {
            render_$x_(mount, first, () => {});
            target = mount.firstElementChild;
            property = () => { native++; };
            if (mode === 'add-event-listener') target.onclick = property;
          }
          target.click();
          check(handled === 1, 'initial event must reach Respo once');
          check(bubbled === (stop ? 0 : 1), 'document propagation option');
          check(mode !== 'add-event-listener' || native === 1, 'native property must also fire');
          let rejected = false;
          try { configure_events_$x_(makeConfig(!stop, mode)); } catch (error) { rejected = error.message.includes('configure-before-mount'); }
          check(rejected, 'mounted configuration must be immutable');

          for (let i = 0; i < 5; i++) render_$x_(mount, tree(() => { updated++; }), () => {});
          check(mount.firstElementChild === target, 'handler updates should preserve the DOM node');
          target.click();
          check(handled === 1 && updated === 1, 'handler updates must not accumulate callbacks');
          check(bubbled === (stop ? 0 : 2), 'updated handler propagation');
          render_$x_(mount, tree(null), () => {});
          target.click();
          check(updated === 1, 'removed Respo handler must not fire');
          check(mode !== 'add-event-listener' || (target.onclick === property && native === 3), 'removal must preserve user property');
          check(bubbled === (stop ? 1 : 3), 'removed handler must not stop propagation');
          check(target.__respo_calcit_event_listeners === undefined, 'last owned callback must be released');
          render_$x_(mount, tree(() => { updated++; }), () => {});
          target.click();
          check(updated === 2, 're-added event must work once');
          results.push({ ssr, mode, stop, handled, updated, native, bubbled });
        } finally {
          document.removeEventListener('click', documentListener);
          mount.innerHTML = '';
        }
      }
    }
  }
  c.reset_$x_(_$s_global_element, c._PCT_none());
  configure_events_$x_(default_config);
  return results;
}
