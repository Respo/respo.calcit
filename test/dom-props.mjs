import * as c from '../js-out/calcit.core.mjs';

const tags = c.init_tags(['some', 'none']);
const option = value => (value === undefined || value === null
  ? c._PCT__$o__$o_(c.Option, tags.none)
  : c._PCT__$o__$o_(c.Option, tags.some, value));

/** Build a struct whose fields are all Options, as `respo.schema/DomProps` is:
 * present values become `Option :some`, undefined and null become `Option :none`. */
export const optionStruct = (construct, def, ...pairs) =>
  construct(def, ...pairs.map((item, index) => (index % 2 === 0 ? item : option(item))));
