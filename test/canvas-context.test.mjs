import assert from "node:assert/strict"
import { spawnSync } from "node:child_process"
import test from "node:test"

const moduleUrl = new URL("../js-out/respo.util.dom.mjs", import.meta.url).href

// 独立进程让每个宿主条件都重新初始化 shared-canvas-context。
for (const scenario of ["context", "null", "undefined", "no-document"]) {
  test(`Canvas context preserves measurement with ${scenario}`, () => {
    const result = spawnSync(process.execPath, ["--input-type=module", "--eval", `
      import assert from "node:assert/strict"
      const scenario = ${JSON.stringify(scenario)}
      const calls = []
      const context = {
        set font(value) {
          assert.equal(this, context)
          calls.push(["font", value])
        },
        measureText(content) {
          assert.equal(this, context)
          calls.push(["measure", content])
          return { width: content.length * 8 }
        },
      }
      if (scenario !== "no-document") {
        globalThis.document = {
          createElement(tagName) {
            assert.equal(tagName, "canvas")
            calls.push(["create", tagName])
            return {
              getContext(kind) {
                assert.equal(kind, "2d")
                calls.push(["context", kind])
                return scenario === "context" ? context
                  : scenario === "null" ? null : undefined
              },
            }
          },
        }
      }
      const { shared_canvas_context, text_width } = await import(${JSON.stringify(moduleUrl)})
      if (scenario === "context") {
        assert.equal(shared_canvas_context, context)
        assert.equal(text_width("typed", 14, "sans-serif"), 40)
        assert.equal(text_width("", 16, "serif"), 0)
        assert.deepEqual(calls, [
          ["create", "canvas"], ["context", "2d"],
          ["font", "14px sans-serif"], ["measure", "typed"],
          ["font", "16px serif"], ["measure", ""],
        ])
      } else {
        assert.equal(text_width("typed", 14, "sans-serif"), 0)
        assert.equal(text_width("", 16, "serif"), 0)
        assert.deepEqual(calls, scenario === "no-document" ? []
          : [["create", "canvas"], ["context", "2d"]])
      }
    `], { encoding: "utf8", timeout: 10_000 })
    assert.ifError(result.error)
    assert.equal(result.status, 0, result.stderr || result.stdout)
  })
}
