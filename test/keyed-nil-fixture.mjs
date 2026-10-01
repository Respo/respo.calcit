import { CalcitSliceList, init_tags } from '@calcit/procs';
import * as c from '../js-out/calcit.core.mjs';
import { DomProps } from '../js-out/respo.schema.mjs';
import { create_list_element, span, render_$x_ } from '../js-out/respo.core.mjs';
import { comp_event_shell } from '../js-out/respo.test.dom.mjs';

const props = overrides => c._$n__PCT__$M_(DomProps,
  ...DomProps.fields.flatMap(field => [field, overrides?.[field.value]]));
const list = values => new CalcitSliceList(values);

export function verifyKeyedNilChildren(mount) {
  const tags = init_tags(['div', 'first', 'second', 'before', 'between', 'after']);
  const clicks = [];
  const child = label => span(props({ 'inner-text': label, 'on-click': () => { clicks.push(label); } }));
  const first = child('first');
  const second = child('second');
  const pairs = entries => list(entries.map(([key, value]) => list([tags[key], value])));
  const tree = entries => comp_event_shell(create_list_element(tags.div, props(), pairs(entries)));
  const dispatch = () => {};
  const initial = [['before', null], ['first', first], ['between', null], ['second', second]];
  render_$x_(mount, tree(initial), dispatch);
  const root = mount.firstElementChild;
  const secondNode = root.children[1];
  const steps = [
    [initial.concat([['after', null]]), ['first', 'second']],
    [[['first', null], ['second', second]], ['second']],
    [[['second', second]], ['second']],
    [[['first', first], ['second', second]], ['first', 'second']],
    [[['first', null], ['second', null]], []],
    [[['after', null], ['second', second]], ['second']],
  ];
  for (const [index, [entries, expected]] of steps.entries()) {
    render_$x_(mount, tree(entries), dispatch);
    if (mount.firstElementChild !== root) throw new Error('keyed update replaced the list container');
    const actual = Array.from(root.children, element => element.textContent);
    if (JSON.stringify(actual) !== JSON.stringify(expected)) throw new Error(`wrong keyed DOM order: ${actual}`);
    if (index < 4 && root.children[expected.indexOf('second')] !== secondNode) {
      throw new Error('nil filtering replaced a surviving keyed child');
    }
    for (const element of root.children) element.click();
  }
  if (clicks.join(',') !== 'first,second,second,second,first,second,second') {
    throw new Error(`nil filtering changed event routing: ${clicks}`);
  }
  let rejectedNilKey = false;
  try { create_list_element(tags.div, props(), list([list([null, null])])); }
  catch { rejectedNilKey = true; }
  if (!rejectedNilKey) throw new Error('nil key bypassed validation');
  if (root.firstElementChild === secondNode) throw new Error('removed child was reused after restoration');
  return { renders: 7, clicks: clicks.length, rootPreserved: true, nilKeyRejected: true,
    secondReplacedAfterRemoval: root.firstElementChild !== secondNode };
}
