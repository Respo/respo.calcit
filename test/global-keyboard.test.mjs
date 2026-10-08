import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { effect_listen_keyboard } from '../js-out/respo.comp.global-keydown.mjs';

const field = (value, name) => c.option_$o_unwrap(c.get(value, c.turn_tag(name)));
const run = (effect, action, target) => field(effect, 'method')(field(effect, 'args'), c.arrayToList([c.turn_tag(action), target, false]));

function withKeyboardHost(body) {
  const savedWindow = globalThis.window;
  const savedKeyboardEvent = globalThis.KeyboardEvent;
  const listeners = new Map();
  const changes = [];
  globalThis.window = {
    addEventListener(name, handler) { changes.push(['add', name, handler]); listeners.set(name, handler); },
    removeEventListener(name, handler) { changes.push(['remove', name, handler]); if (listeners.get(name) === handler) listeners.delete(name); },
  };
  globalThis.KeyboardEvent = class {
    constructor(type, options) { this.type = type; this.key = options.key; this.ctrlKey = options.ctrlKey; this.metaKey = options.metaKey; }
  };
  try { body(listeners, changes); } finally {
    if (savedWindow === undefined) delete globalThis.window; else globalThis.window = savedWindow;
    if (savedKeyboardEvent === undefined) delete globalThis.KeyboardEvent; else globalThis.KeyboardEvent = savedKeyboardEvent;
  }
}

test('global keyboard preserves disabled commands, event forwarding and listener lifecycle', () => {
  withKeyboardHost((listeners, changes) => {
    for (const name of ['keydown', 'keyup']) {
      const forwarded = [];
      const target = { dispatchEvent(event) { forwarded.push(event); return true; } };
      const initial = effect_listen_keyboard(c._$n__$M_(), name);
      run(initial, 'mount', target);
      const firstHandler = listeners.get(name);
      const send = (key, ctrlKey = false, metaKey = false) => {
        let prevented = 0;
        const event = { type: name, key, ctrlKey, metaKey, preventDefault() { prevented++; } };
        assert.equal(listeners.get(name)(event), undefined);
        assert.notEqual(forwarded.at(-1), event);
        assert.deepEqual([forwarded.at(-1).type, forwarded.at(-1).key, forwarded.at(-1).ctrlKey, forwarded.at(-1).metaKey], [name, key, ctrlKey, metaKey]);
        return prevented;
      };
      assert.equal(send('p', true), 1);
      assert.equal(send('s', false, true), 1);
      assert.equal(send('p'), 0);
      assert.equal(send('x', true), 0);
      const custom = c.parse_cirru_edn('#{} |x');
      const options = c._$n__$M_(c.turn_tag('disabled-commands'), custom);
      const changed = effect_listen_keyboard(options, name);
      run(changed, 'update', target);
      assert.deepEqual(changes.at(-2), ['remove', name, firstHandler]);
      assert.equal(changes.at(-1)[0], 'add');
      assert.notEqual(listeners.get(name), firstHandler);
      assert.equal(send('x', true), 1);
      assert.equal(send('p', true), 0);
      assert.equal(field(options, 'disabled-commands'), custom);
      assert.equal(c.count(custom), 1);
      const empty = effect_listen_keyboard(c._$n__$M_(c.turn_tag('disabled-commands'), c.parse_cirru_edn('#{}')), name);
      run(empty, 'update', target);
      assert.equal(send('p', true), 0);
      assert.equal(send('x', false, true), 0);
      const lastHandler = listeners.get(name);
      run(empty, 'unmount', target);
      assert.deepEqual(changes.at(-1), ['remove', name, lastHandler]);
      assert.equal(listeners.has(name), false);
      assert.deepEqual(Object.keys(target), ['dispatchEvent']);
      assert.equal(forwarded.length, 8);
    }
  });
});

test('global keyboard rejects invalid disabled command shapes before registering a listener', () => {
  withKeyboardHost((listeners, changes) => {
    for (const value of [null, undefined, 42, c.arrayToList(['p']), c._$n__$M_(), c.parse_cirru_edn('#{} 42'), c.parse_cirru_edn('#{} :p')]) {
      const effect = effect_listen_keyboard(c._$n__$M_(c.turn_tag('disabled-commands'), value), 'keydown');
      assert.throws(() => run(effect, 'mount', { dispatchEvent() {} }));
      assert.equal(listeners.size, 0);
      assert.equal(changes.length, 0);
    }
    const target = { dispatchEvent() {} };
    const original = effect_listen_keyboard(c._$n__$M_(), 'keydown');
    run(original, 'mount', target);
    const handler = listeners.get('keydown');
    const invalidUpdate = effect_listen_keyboard(c._$n__$M_(c.turn_tag('disabled-commands'), c.parse_cirru_edn('#{} :p')), 'keydown');
    assert.throws(() => run(invalidUpdate, 'update', target));
    assert.equal(listeners.get('keydown'), handler);
    assert.equal(changes.length, 1);
    run(original, 'unmount', target);
    assert.equal(listeners.size, 0);
  });
});
