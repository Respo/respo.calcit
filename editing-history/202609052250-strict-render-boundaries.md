# Strict renderer boundaries

- Normalize open property collections before list dispatch and convert CSS maps through a typed helper.
- Read input values through the existing DOM event/element traits.
- Use typed DOM field and insertion aliases for style elements and patch operations.
- Cover `parentElement.insertBefore` in the Node DOM-host contract; a browser smoke test caught and verified the trait-name mapping used by the generated JavaScript.
- The exact Calcit 0.13.77 gen-code strict consumer drops from 22 warnings to 11, with no Respo-owned warning remaining.
- Refresh the reviewed quality baseline after unresolved findings fell from 322 to 286; all 38 attached tests, DOM-host contract, docs, JS generation, Vite build, and add/remove browser interactions pass.
- Tracks `Respo/respo.calcit#137` and `calcit-lang/calcit#871`.
