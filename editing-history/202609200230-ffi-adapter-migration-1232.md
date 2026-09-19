# FFI adapter migration evidence (#1232)

Migrate remaining raw `JsObject` field/method access to typed external-object
traits. This records the applicability, rejected candidates, and remaining
manual work requested by `calcit-lang/calcit#1232`.

## Toolchain

- Upgraded to Calcit `0.17.1` and `@calcit/procs` `0.17.1` (published releases).
- The repo already depended on `js-ffi` `0.1.19`; the toolchain upgrade makes
  `defexternal` and receiver-first typed field access available.

## Evidence

Inventory produced with:

```bash
calcit calcit.cirru analyze weak-types --ffi-evidence --format edn
```

Baseline on the unmodified 0.17.1 tree: 97 FFI boundary entries across the
project, with 25 definitions exposing trait candidates. Operation kinds:

| kind | meaning |
| --- | --- |
| `field-read` / `method-call` | raw `.-` / `.!` on a host receiver |
| `js-set` / `aset` / `aget` | field write / dynamic write / dynamic read |
| `unsafe-coerce` | explicit typed boundary assertion |
| `raw-js-call` | `js/...` global call |
| `module-call` | call into an already-typed `js-ffi` helper |

## Migrated in this change

| definition | before | after |
| --- | --- | --- |
| `respo.util.format/map-keyboard-event` | `.-key` / `.-ctrlKey` … | `event.:key` / `event.:ctrl-key` … |
| `respo.util.format/input-event-value` | `.-target` + double `unsafe-coerce` | `input-event.:target` + `target.:value` |
| `respo.util.format/input-event-checked?` | `.-target` + `unsafe-coerce` | `input-event.:target` + `target.:checked` |
| `respo.util.format/event->edn` | `.-type` / `.-keyCode` on untyped event | `event.:type` / `keyboard-event.:key-code` |
| `respo.comp.global-keydown/effect-listen-keyboard` | `some?` on `JsNullish` | `js-present?` |
| `respo.schema/dev?` | `unsafe-coerce (&get-env …)` at top level | typed `get-env` / `option:unwrap-or` |
| `respo.main/main!` | `.-key` / `.-ctrlKey` … | `event.:key` / `event.:ctrl-key` … |
| `respo.controller.client/activate-instance!` | `set! (.-innerHTML x)` / `.!appendChild` | `set! x.:inner-html` / `x .append-child!` |
| `respo.util.dom/text-width` | `.-font` / `.-width` + `unsafe-coerce` | `context.:font` / `metrics.:width` |
| `respo.util.dom/create-shared-canvas-context` | `.!getContext` | `.get-context` on `DomCanvasElement` |
| `respo.render.patch/find-target` | `aget` + `unsafe-coerce` chain | `(root .:children) .item index` |
| `respo.dom/set-inner-html!` | `js-set style-el :inner-html` | `set! style-el.:inner-html` |
| `respo.render.patch/rm-prop` | `js-set target :checked …` | `set! target.:checked …` |

All of these preserve call, return, and failure semantics: the typed access
lowers to the same host member (via the trait `:names` map) and the same
nullable/`Unit` behavior.

## Rejected candidates and false positives

These remain as raw access by design and are **not** migration debt:

- **String primitives.** `.!slice`, `.!startsWith`, and `.!replace` in
  `respo.render.patch/*` and `respo.util.format/dashed->camel` act on Calcit
  `String`, not on a host object; an external-object trait cannot describe them.
- **Dynamic keys.** `add-prop`, `replace-prop`, `rm-prop`, `add-style`,
  `replace-style`, `rm-style`, `add-event`, and `rm-event` compute the property
  name at runtime (`prop-name`, `style-name`, `event-prop`, `k`). The compiler
  keeps dynamic-key `aget`/`aset`/`js-set` as explicit raw lookup by design; a
  trait only declares static fields.
- **Opaque `dataset` / `style` payloads.** `DomElement`/`DomElementHost` type
  them as `JsObject`; indexing them needs a dynamic key, so no typed adapter
  applies.
- **`js/...` globals.** `js/window.setTimeout`, `js/document.querySelector`,
  `js/Math.random`, `js/Date.now` are library globals rather than host objects.
- **`unsafe-coerce` boundaries.** The remaining assertions already sit in
  `:js-ffi` adapters and are reviewed as explicit host-contract evidence.

## Remaining manual work

- `fix --workflow strict` also compiles definitions that are not reachable from
  the entry. That surfaces pre-existing, non-FFI strict debt
  (`respo.memo/call-component` and `respo.util.list/map-with-idx` expose bare
  `List` schemas; `respo.util.format/mute-element` maps over an open `Dynamic`).
  This is separate from the FFI migration and belongs to the strict
  self-hosting work tracked by `calcit-lang/calcit#1237`.
- `effect-focus` and `realize-ssr!` keep raw field access because their
  receivers are declared `Dynamic`; typing them would change the public
  contract and should be a separate change.

## Compiler gap found

Migration planning (`calcit fix`) disabled strict types but left the strict
`js-ffi` capability policy, and macro capability inheritance was gated on strict
typing. A cross-namespace macro that generated an anonymous closure performing a
typed external-object call therefore failed planning while `--check-only`
passed. Fixed in `calcit-lang/calcit#1244`.
