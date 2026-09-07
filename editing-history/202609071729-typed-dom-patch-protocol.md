# Typed DOM patch protocol / 类型化 DOM patch 协议

- Added the nominal `respo.schema/DomPatch` enum and migrated every current diff/effect producer plus the sole DOM consumer away from anonymous `:: :tag ...` command construction.
- Kept all 16 real variants: prop/style add, replace, and remove; event set/remove; element add, remove, replace, and append; and mount, unmount, update, and before-update effects.
- Split property and style entry pairs into typed `Tag` key and value payloads, removed the legacy nil payload from element removal, narrowed virtual-node payloads to `Struct`, and typed all collector callbacks as `DomPatch -> Unit`.
- Replaced positional `nth` dispatch in `apply-dom-changes` with a no-default exhaustive match over `List<DomPatch>`. No anonymous enum constructor remains under `respo.render.*`.
- Added a versioned architecture inventory and an executable negative-type gate covering an invalid payload type, an application/Recollect-style `Op` passed as `DomPatch`, and a missing match variant.
- Preserved keyed rendering and lifecycle order. Forty attached tests pass, including all-variant construction/matching, identical-tree no-op, ref ordering, component/element transitions, and property payload checks.

- 新增名义类型 `respo.schema/DomPatch`，将全部现有 diff/effect 生产端及唯一 DOM 消费端从匿名 `:: :tag ...` 指令构造迁移到同一协议。
- 完整保留 16 个实际 variant：prop/style 的新增、替换、删除，事件设置/删除，元素新增、删除、替换、追加，以及 mount、unmount、update、before-update effect。
- 将 prop/style 的匿名 pair 拆成有类型的 `Tag` key 与 value payload，删除元素移除指令的遗留 nil payload，将虚拟节点收窄到 `Struct`，并把所有 collector callback 收窄为 `DomPatch -> Unit`。
- `apply-dom-changes` 不再通过位置 `nth` 分发，而是对 `List<DomPatch>` 做无默认分支的穷尽匹配；`respo.render.*` 下已无匿名 enum 构造。
- 新增版本化架构清单和可执行负例门禁，覆盖错误 payload、把应用/Recollect 风格的 `Op` 当作 `DomPatch`、以及遗漏 match variant。
- keyed 渲染与生命周期顺序保持不变；40 个定义附着测试通过，包括全部 variant 构造/匹配、相同 tree 零指令、ref 顺序、component/element 转换和 property payload。

Validation / 验证：

- Calcit 0.14.0 in temporary compatibility mode: `--check-only`, 40/40 attached tests, `analyze check-types`, unresolved weak-type audit, and quality baseline all pass; this change reduces unresolved dynamic positions by 12 and schema dynamic positions by 9. Strict generated-function schemas remain tracked in calcit-lang/calcit#902, while the DomPatch negative gate stays strict.
- `yarn test-dom-patch-types`, `yarn test-dom-host`, nullish DOM property tests, 53 Markdown files / 111 checked blocks, JS generation, and the Node 24 Vite production build pass.
- Real-browser add/order/remove/clear, property/style toggles, component state replacement, focus/selection preservation, and listener single-fire checks pass with zero console errors.
- The same 41-round browser stress sequence reports baseline 50–91 ms and typed protocol 50–93 ms (both median about 53 ms), ending with the same 11 keyed nodes.
- Production bundle: baseline 634,912 bytes / 93,440 gzip; typed protocol 647,426 bytes / 94,222 gzip (+12,514 raw, +782 gzip). The increase is nominal enum metadata, with no observed behavior or timing regression.
- The SSR adoption collector now stores the single nominal `DomPatch` emitted by `collect-mounting`, preventing mount effects and refs from hitting the legacy four-argument callback.
