# Strict renderer boundaries

- Normalize open property collections before list dispatch and convert CSS maps through a typed helper.
- Read input values through the existing DOM event/element traits, explicitly rejecting events whose nullish target is absent before narrowing the host value.
- Use typed DOM field and insertion aliases for style elements and patch operations. Route DOM HTML writes through the exported `respo.dom/set-inner-html!` helper so generated JavaScript targets `innerHTML`, not an empty custom `inner-html` property, including across module boundaries.
- Convert nullish `parentElement` values to `Option` before narrowing, with a clear detached/root-node error instead of an implicit host-method failure.
- Cover `parentElement.insertBefore`, detached insertion, nullish input targets, and static style content writes in the Node DOM-host contract; browser smoke tests caught and verified the trait-name mappings used by the generated JavaScript.
- Compile replacement removal through the `DomElement.remove!` trait alias and exercise the generated helper against a mock browser `remove` method.
- The exact Calcit 0.13.77 gen-code strict consumer drops from 22 warnings to 11, with no Respo-owned warning remaining.
- Refresh the reviewed quality baseline after unresolved findings fell from 322 to 286; all 38 attached tests, DOM-host contract, docs, JS generation, Vite build, and add/remove browser interactions pass.
- Tracks `Respo/respo.calcit#137` and `calcit-lang/calcit#871`.
