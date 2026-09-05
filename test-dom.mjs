import { main_$x_ } from "./js-out/respo.test.dom.mjs"
import { insert_before_target_$x_, remove_target_$x_ } from "./js-out/respo.render.patch.mjs"
import { set_inner_html_$x_ } from "./js-out/respo.dom.mjs"
import { input_event_checked_$q_, input_event_value } from "./js-out/respo.util.format.mjs"

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

let detachedInsertionFailed = false
try {
  insert_before_target_$x_({}, newElement)
} catch (error) {
  detachedInsertionFailed = true
  if (!String(error).includes("target-has-no-parent-element")) {
    throw new Error(`detached insertion failed without the explicit boundary message: ${error}`)
  }
}
if (!detachedInsertionFailed) {
  throw new Error("detached insertion should fail at the explicit parentElement boundary")
}

const inputTarget = { checked: true, value: "typed-value" }
if (!input_event_checked_$q_({ target: inputTarget })) {
  throw new Error("typed input event did not read checked from its target")
}
if (input_event_value({ target: inputTarget }) !== "typed-value") {
  throw new Error("typed input event did not read value from its target")
}
for (const [name, readInput] of [
  ["input-event-checked?", input_event_checked_$q_],
  ["input-event-value", input_event_value],
]) {
  try {
    readInput({ target: null })
    throw new Error(`${name} should reject an event without a target`)
  } catch (error) {
    if (!String(error).includes("event-has-no-target")) {
      throw new Error(`${name} failed without the explicit boundary message: ${error}`)
    }
  }
}

const styleElement = { innerHTML: "" }
set_inner_html_$x_(styleElement, ".demo { color: red; }")
if (styleElement.innerHTML !== ".demo { color: red; }") {
  throw new Error("typed style content did not write the browser innerHTML field")
}

let removed = false
remove_target_$x_({ remove: () => { removed = true } })
if (!removed) throw new Error("typed DOM removal did not call the browser remove method")
