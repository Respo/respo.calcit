import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { configure_events_$x_, _$s_global_element } from '../js-out/respo.core.mjs';
import { EventConfig, ListenerMode, Component } from '../js-out/respo.schema.mjs';
import { add_event, rm_event } from '../js-out/respo.render.patch.mjs';
import { default_config } from '../js-out/respo.render.events.mjs';

const tags = c.init_tags(['listener-mode', 'stop-propagation?', 'property', 'add-event-listener', 'click', 'input', 'name', 'root', 'tree', 'effects', 'listeners', 'some']);
const config = (stop, mode) => c._$n__PCT__$M_(EventConfig,
  tags['stop-propagation?'], stop,
  tags['listener-mode'], c._PCT__$o__$o_(ListenerMode, tags[mode]));
const coord = c.arrayToList([]);
const builder = callback => () => callback;

function cleanup() {
  c.reset_$x_(_$s_global_element, c._PCT_none());
  configure_events_$x_(default_config);
}

test('property defaults retain stopPropagation and nil removal', () => {
  cleanup();
  const node = {};
  let called = 0;
  let stopped = 0;
  add_event(node, tags.click, builder(() => { called++; }), coord);
  node.onclick({ stopPropagation: () => { stopped++; } });
  assert.equal(called, 1);
  assert.equal(stopped, 1);
  rm_event(node, tags.click);
  assert.equal(node.onclick, null);
  assert.equal(node.__respo_calcit_event_listeners, undefined);
});

test('addEventListener updates and removals affect only Respo callbacks', () => {
  cleanup();
  configure_events_$x_(config(false, 'add-event-listener'));
  const node = new EventTarget();
  let native = 0;
  let first = 0;
  let replacement = 0;
  let inputs = 0;
  const property = () => {};
  node.onclick = property;
  const external = () => { native++; };
  node.addEventListener('click', external);
  try {
    add_event(node, tags.click, builder(() => { first++; }), coord);
    node.dispatchEvent(new Event('click'));
    assert.equal(first, 1);
    assert.equal(native, 1);
    assert.equal(node.onclick, property);
    add_event(node, tags.input, builder(() => { inputs++; }), coord);
    for (let i = 0; i < 5; i++) add_event(node, tags.click, builder(() => { replacement++; }), coord);
    node.dispatchEvent(new Event('click'));
    assert.equal(first, 1);
    assert.equal(replacement, 1);
    assert.equal(native, 2);
    rm_event(node, tags.click);
    node.dispatchEvent(new Event('click'));
    node.dispatchEvent(new Event('input'));
    assert.equal(replacement, 1);
    assert.equal(native, 3);
    assert.equal(inputs, 1);
    assert.equal(node.onclick, property);
    rm_event(node, tags.input);
    assert.equal(node.__respo_calcit_event_listeners, undefined);
    rm_event(node, tags.input);
    add_event(node, tags.click, builder(() => { replacement++; }), coord);
    node.dispatchEvent(new Event('click'));
    assert.equal(replacement, 2);
    rm_event(node, tags.click);
  } finally {
    node.removeEventListener('click', external);
    cleanup();
  }
});

test('propagation is configurable in both installation modes', () => {
  for (const mode of ['property', 'add-event-listener']) {
    for (const stop of [false, true]) {
      cleanup();
      configure_events_$x_(config(stop, mode));
      const node = new EventTarget();
      let stopped = 0;
      const event = new Event('click');
      event.stopPropagation = () => { stopped++; };
      add_event(node, tags.click, builder(() => {}), coord);
      if (mode === 'property') node.onclick(event);
      else node.dispatchEvent(event);
      assert.equal(stopped, stop ? 1 : 0);
      rm_event(node, tags.click);
    }
  }
  cleanup();
});

test('event configuration cannot change after a tree has mounted', () => {
  cleanup();
  const component = c._$n__PCT__$M_(Component,
    tags.name, tags.root,
    tags.tree, c._PCT_none(),
    tags.effects, coord,
    tags.listeners, coord);
  c.reset_$x_(_$s_global_element, c._PCT__$o__$o_(c.Option, tags.some, component));
  try {
    assert.throws(() => configure_events_$x_(config(false, 'property')), /configure-before-mount/);
  } finally {
    cleanup();
  }
});
