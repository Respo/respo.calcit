export class ElementHost {
  static reads = 0;
  constructor(name = 'div') {
    this.localName = name;
    this.tagName = name.toUpperCase();
    this.namespaceURI = 'http://www.w3.org/1999/xhtml';
    this.nodes = [];
    this.dataset = {};
    this.style = {};
    this.scrollTop = 0;
    this.scrollLeft = 0;
    this.children = { item: index => { ElementHost.reads++; return this.nodes[index] ?? null; } };
    Object.defineProperty(this.children, 'length', { get: () => this.nodes.length });
  }
  get firstElementChild() { return this.nodes[0] ?? null; }
  appendChild(node) {
    node.remove();
    this.nodes.push(node);
    node.parentElement = this;
    return node;
  }
  insertBefore(node, anchor) {
    if (node === anchor) return node;
    node.remove();
    const index = this.nodes.indexOf(anchor);
    if (index < 0) throw new Error('move anchor must remain in the parent');
    this.nodes.splice(index, 0, node);
    node.parentElement = this;
    return node;
  }
  remove() {
    if (this.parentElement) {
      this.parentElement.nodes.splice(this.parentElement.nodes.indexOf(this), 1);
      this.parentElement = null;
    }
  }
  set innerText(value) { this.text = value; this.clearChildren(); }
  get innerText() { return this.text ?? ''; }
  set innerHTML(value) { this.html = value; this.clearChildren(); }
  get innerHTML() { return this.html ?? ''; }
  clearChildren() { for (const node of [...this.nodes]) node.remove(); }
  removeAttribute(name) { delete this[name]; }
  setAttribute(name, value) { this[name] = value; }
  querySelector() { return null; }
  matches(selector) { return selector === 'svg' && this.localName === 'svg'; }
  getContext() { return null; }
}
