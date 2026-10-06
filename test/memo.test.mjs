import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import * as m from '../js-out/respo.memo.mjs';
import { render_with_$x_ } from '../js-out/respo.core.mjs';

test('a failed render aborts its memo frame without committing partial entries', () => {
  assert.equal(m.reset_component_caches_$x_(), undefined);
  let calls = 0;
  const derive = value => { calls++; return value; };
  assert.equal(m.begin_memo_frame_$x_(), undefined);
  m.memo_value_by('committed', derive, 1);
  assert.equal(m.finish_memo_frame_$x_(), undefined);

  assert.throws(() => render_with_$x_(null, () => {
    m.memo_value_by('partial', derive, 2);
    throw new Error('tree construction failed');
  }, () => {}), { message: 'tree construction failed' });
  assert.equal(m.component_cache_size(), 1);
  assert.equal(m.abort_memo_frame_$x_(), undefined);
  // Both old and partially computed keys must bypass caches outside a frame.
  m.memo_value_by('committed', derive, 1);
  m.memo_value_by('partial', derive, 2);
  for (let key = 0; key < 40; key++) m.memo_value_by(key, derive, key);
  assert.equal(calls, 44);
  assert.equal(m.component_cache_size(), 1);

  // A fresh frame can still reuse the last successfully committed entry.
  m.begin_memo_frame_$x_();
  m.memo_value_by('committed', derive, 1);
  assert.equal(calls, 44);
  m.memo_value_by('partial', derive, 2);
  assert.equal(calls, 45);
  m.finish_memo_frame_$x_();
  assert.equal(m.component_cache_size(), 2);
  m.reset_component_caches_$x_();
});

test('compiled memo retains nested hits, prunes removed children, and compares args deeply', () => {
  m.reset_component_caches_$x_();
  let calls = 0;
  const child = values => { calls++; return values; };
  const middle = () => m.memo_value_by('child', child, c.arrayToList([1, 2]));
  const outer = visible => visible ? m.memo_value_by('middle', middle) : null;
  for (let frame = 0; frame < 6; frame++) {
    m.begin_memo_frame_$x_();
    m.memo_value_by('outer', outer, true);
    m.finish_memo_frame_$x_();
    assert.equal(m.component_cache_size(), 3);
  }
  m.begin_memo_frame_$x_();
  m.memo_value_by('child', child, c.arrayToList([1, 2]));
  m.finish_memo_frame_$x_();
  assert.equal(calls, 1);
  assert.equal(m.component_cache_size(), 1);
  m.begin_memo_frame_$x_();
  m.memo_value_by('outer', outer, false);
  m.finish_memo_frame_$x_();
  assert.equal(m.component_cache_size(), 1);
  m.reset_component_caches_$x_();
});

test('compiled memo calls outside frames compute without reading or writing caches', () => {
  m.reset_component_caches_$x_();
  let calls = 0;
  const derive = value => { calls++; return value; };
  for (let key = 0; key < 40; key++) m.memo_value_by(key, derive, key);
  assert.equal(m.component_cache_size(), 0);
  m.begin_memo_frame_$x_();
  m.memo_value_by('existing', derive, 1);
  m.finish_memo_frame_$x_();
  m.memo_value_by('existing', derive, 1);
  assert.equal(calls, 42);
  assert.equal(m.component_cache_size(), 1);
  m.reset_component_caches_$x_();
});
