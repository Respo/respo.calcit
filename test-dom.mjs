import { readFileSync } from "node:fs"

const childrenHost = (children) => ({
  length: children.length,
  item: (index) => children[index],
})

class FakeElement {
  constructor(localName, innerHTML = "", children = []) {
    this.localName = localName
    this.innerHTML = innerHTML
    this.childElementCount = children.length
    this.children = childrenHost(children)
    this.firstElementChild = children[0] ?? null
    this.dataset = {}
  }

  getAttribute(name) {
    return this[name] ?? null
  }

  removeAttribute(name) {
    delete this[name === "class" ? "className" : name]
  }
}

class FakeSvgElement extends FakeElement {
  constructor(tagName, namespaceURI) {
    super(tagName)
    this.tagName = tagName
    this.namespaceURI = namespaceURI
    this.attributes = new Map()
    this.childNodes = []
    this.dataset = {}
    this.style = {}
  }

  setAttribute(name, value) {
    this.attributes.set(name, value)
  }

  getAttribute(name) {
    return this.attributes.get(name) ?? null
  }

  removeAttribute(name) {
    this.attributes.delete(name)
  }

  appendChild(child) {
    child.parentElement = this
    this.childNodes.push(child)
    return child
  }
}

globalThis.Element = FakeElement

let canvasGetContextCalls = 0
const canvasContext = {
  font: "",
  measureText: (content) => ({ width: content.length * 8 }),
}
globalThis.document = {
  createElement(tagName) {
    if (tagName === "div") return new FakeSvgElement(tagName, "http://www.w3.org/1999/xhtml")
    if (tagName !== "canvas") throw new Error(`unexpected element creation: ${tagName}`)
    return {
      getContext(contextName) {
        if (contextName !== "2d") throw new Error(`unexpected canvas context: ${contextName}`)
        canvasGetContextCalls += 1
        return canvasContext
      },
    }
  },
  createElementNS(namespaceURI, tagName) {
    return new FakeSvgElement(tagName, namespaceURI)
  },
}

const { main_$x_, svg_host_smoke_$x_, verify_dom_regressions_$x_ } = await import("./js-out/respo.test.dom.mjs")
const { add_event, add_prop, insert_before_target_$x_, remove_target_$x_, replace_prop, rm_prop } = await import("./js-out/respo.render.patch.mjs")
const { CalcitSliceList, init_tags } = await import("@calcit/procs")
const { set_inner_html_$x_ } = await import("./js-out/respo.dom.mjs")
const { input_event_checked_$q_, input_event_value } = await import("./js-out/respo.util.format.mjs")
const { shared_canvas_context, text_width } = await import("./js-out/respo.util.dom.mjs")
const { document_available_$q_ } = await import("./js-out/js-ffi.browser.mjs")

const jsFfiModule = readFileSync(new URL("./js-out/js-ffi.browser.mjs", import.meta.url), "utf8")
if (!jsFfiModule.includes("JS FFI: js-ffi.browser/document-available?")) {
  throw new Error("js-ffi file expression was not embedded in its Calcit module")
}
if (!jsFfiModule.includes("calcit://js-ffi@0.2.1-alpha.11/js-ffi.browser/document-available%3F/file/js-ffi-assets/document-available.js")) {
  throw new Error("js-ffi source provenance lost the installed module version or file path")
}
if (/^import\s+.*js-ffi-assets\//m.test(jsFfiModule)) {
  throw new Error("js-ffi generated a separate snippet import")
}
if (!document_available_$q_()) throw new Error("js-ffi document guard failed in Respo's browser host")
const availableDocument = globalThis.document
try {
  Reflect.deleteProperty(globalThis, "document")
  if (document_available_$q_()) throw new Error("js-ffi document guard failed without a browser host")
} finally {
  globalThis.document = availableDocument
}

if (canvasGetContextCalls !== 1 || shared_canvas_context !== canvasContext) {
  throw new Error("shared canvas context did not call the native getContext method")
}
if (text_width("typed", 14, "sans-serif") !== 40) {
  throw new Error("text width did not use the shared native canvas context")
}

const elementHost = (localName, innerHTML, children) => new FakeElement(localName, innerHTML, children)

const eventTarget = elementHost("button", "", [])
const eventTags = init_tags(["click"])
const eventCoord = new CalcitSliceList([eventTags.click])
const eventOrder = []
const event = { stopPropagation: () => { eventOrder.push("stop") } }
const eventBuilder = (name) => {
  if (name !== eventTags.click) throw new Error("add-event changed the event name")
  eventOrder.push("build")
  return (actualEvent, actualCoord) => {
    if (actualEvent !== event || actualCoord !== eventCoord) {
      throw new Error("add-event changed the original event or coordinates")
    }
    eventOrder.push("deliver")
  }
}
if (add_event(eventTarget, eventTags.click, eventBuilder, eventCoord) !== undefined) {
  throw new Error("add-event must return Calcit Unit, not the assigned listener")
}
if (eventOrder.length !== 0 || typeof eventTarget.onclick !== "function") {
  throw new Error("add-event must install the listener without invoking its builder")
}
eventTarget.onclick(event)
if (JSON.stringify(eventOrder) !== JSON.stringify(["build", "deliver", "stop"])) {
  throw new Error("add-event changed listener delivery or propagation order")
}
console.log("event-install-unit-contract-ok")

const childHost = elementHost("span", "", [])
const rootHost = elementHost("div", "", [childHost])
const htmlHost = elementHost("div", "<b>x</b>", [childHost])

main_$x_(rootHost, htmlHost)

const ssrChild = elementHost("span", "", [])
const ssrRoot = elementHost("div", "", [ssrChild])
const ssrMount = elementHost("main", "", [ssrRoot])
let ssrClicks = 0
const clickSsrElement = (target) => {
  if (typeof target.onclick !== "function") {
    throw new Error(`SSR adoption left ${target.localName} without an onclick handler`)
  }
  let stopped = false
  target.onclick({ type: "click", target, stopPropagation: () => { stopped = true } })
  if (!stopped) throw new Error("SSR event did not stop propagation")
  ssrClicks += 1
}
verify_dom_regressions_$x_(ssrMount, ssrRoot, ssrChild, clickSsrElement)
if (ssrClicks !== 12 || ssrMount.firstElementChild !== ssrRoot || ssrRoot.children.item(0) !== ssrChild) {
  throw new Error("SSR adoption did not preserve the existing DOM through subsequent renders")
}
if (ssrRoot.onfocus != null) throw new Error("component switch kept a removed focus handler")
console.log("typed-SSR-ref-and-events-contract-ok")
console.log("component-event-coords-contract-ok")

const { verifyDataCompUpdates } = await import("./test/data-comp-fixture.mjs")
const decoratedRoot = elementHost("a", "", [elementHost("span", "", [])])
const decoratedMount = elementHost("main", "", [decoratedRoot])
verifyDataCompUpdates(decoratedMount, () => {
  decoratedRoot.dataset.comp = "comp-event-shell"
  decoratedRoot.href = "/page"
  decoratedRoot.title = "title"
  return decoratedRoot
})
console.log("data-comp-attrs-contract-ok")

const { verifyPasteEvents } = await import("./test/paste-fixture.mjs")
const pasteRoot = elementHost("textarea", "", [])
const pasteMount = elementHost("main", "", [pasteRoot])
verifyPasteEvents(pasteMount, () => {
  pasteRoot.dataset.comp = "comp-event-shell"
  return pasteRoot
}, (target, value) => {
  let stopped = false
  target.onpaste({ type: "paste", target,
    clipboardData: { getData: () => value },
    stopPropagation: () => { stopped = true },
  })
  if (!stopped) throw new Error("Paste event did not stop propagation")
})
console.log("paste-event-contract-ok")

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

const svg = svg_host_smoke_$x_()
const rect = svg.childNodes[0]
const foreignObject = svg.childNodes[1]
const appendedCircle = svg.childNodes[2]
const svgNamespace = "http://www.w3.org/2000/svg"
if (svg.namespaceURI !== svgNamespace || rect.namespaceURI !== svgNamespace) {
  throw new Error("SVG children were not created with the SVG namespace")
}
if (foreignObject.namespaceURI !== svgNamespace || foreignObject.childNodes[0].namespaceURI !== "http://www.w3.org/1999/xhtml") {
  throw new Error("foreignObject children did not return to the HTML namespace")
}
if (appendedCircle.namespaceURI !== svgNamespace || appendedCircle.getAttribute("r") !== "5") {
  throw new Error("incrementally appended SVG child lost its namespace or attributes")
}
if (svg.getAttribute("width") !== "320" || rect.getAttribute("fill") !== "red" || rect.getAttribute("stroke-width") !== "2") {
  throw new Error("initial SVG attributes were not set")
}
const svgTags = init_tags(["opacity", "strokeWidth"])
add_prop(rect, svgTags.opacity, 1)
replace_prop(rect, svgTags.strokeWidth, 3)
if (rect.getAttribute("opacity") !== "1" || rect.getAttribute("stroke-width") !== "3") {
  throw new Error("incremental SVG attributes were not updated")
}
for (const [name, update] of [["add-prop", add_prop], ["replace-prop", replace_prop]]) {
  try {
    update(rect, svgTags.strokeWidth, new CalcitSliceList([1, 2]))
    throw new Error(`${name} accepted a non-scalar SVG attribute`)
  } catch (error) {
    if (!String(error).includes("Attribute value must be a scalar")) throw error
  }
  if (rect.getAttribute("stroke-width") !== "3") {
    throw new Error(`${name} changed the SVG attribute before rejecting its value`)
  }
}
rm_prop(rect, svgTags.opacity)
if (rect.getAttribute("opacity") !== null) {
  throw new Error("removed SVG attribute remained on the element")
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
