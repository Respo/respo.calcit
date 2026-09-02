import { main_$x_ } from "./js-out/respo.test.dom.mjs"

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
