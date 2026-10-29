import assert from 'node:assert/strict';
import test from 'node:test';
import '../js-out/calcit.core.mjs';

const { comp_space, space_x, space_y, _$e__LT_ } = await import('../js-out/respo.comp.space.mjs');
// The components differ only in their name and the data-comp marker derived from it.
const rendered = component => String(component)
  .replace(/\(:name :[\w-]+\) \(:tree/, '(:tree')
  .replace(/ \(\[\] :data-comp \|[\w-]+\)/, '');

test('space-x and space-y render the same element as comp-space and =<', () => {
  assert.equal(rendered(space_x(8)), rendered(comp_space(8, null)));
  assert.equal(rendered(space_x(8)), rendered(_$e__LT_(8, null)));
  assert.equal(rendered(space_y(16)), rendered(comp_space(null, 16)));
  assert.equal(rendered(space_y(16)), rendered(_$e__LT_(null, 16)));
  assert.notEqual(rendered(space_x(8)), rendered(space_y(8)));
  assert.match(rendered(space_x(8)), /\(:style \(\[\] \(\[\] :width 8\)\)\)/);
});
