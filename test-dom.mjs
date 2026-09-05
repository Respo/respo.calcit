import { main_$x_ } from "./js-out/respo.test.dom.mjs"
import { insert_before_target_$x_ } from "./js-out/respo.render.patch.mjs"
import { write_style_content_$x_ } from "./js-out/respo.css.mjs"

const childrenHost = (children) => ({
  length: children.length,
  item: (index) => children[index],
})

const elementHost = (localName, innerHTML, children) => ({
  localName,
  innerHTML,
  childElementCount: children.length,
  children: childrenHost(children),
})

const childHost = elementHost("span", "", [])
const rootHost = elementHost("div", "", [childHost])
const htmlHost = elementHost("div", "<b>x</b>", [childHost])

main_$x_(rootHost, htmlHost)

const newElement = {}
const target = {}
let inserted = false
target.parentElement = {
  insertBefore: (actualNewElement, actualTarget) => {
    if (actualNewElement !== newElement || actualTarget !== target) {
      throw new Error("insertBefore received unexpected DOM nodes")
    }
    inserted = true
  },
}

insert_before_target_$x_(target, newElement)
if (!inserted) throw new Error("typed DOM insertion did not call parentElement.insertBefore")

const styleElement = { innerHTML: "" }
write_style_content_$x_(styleElement, ".demo { color: red; }")
if (styleElement.innerHTML !== ".demo { color: red; }") {
  throw new Error("typed style content did not write the browser innerHTML field")
}
