# Fix SSR innerHTML comparison

- The SSR DOM comparison must warn only when virtual and real `innerHTML` values differ.
- Keep the explicit `Option` unwrap and typed DOM host boundary introduced by the pending typed-DOM work.
- This follow-up addresses the latest review comment on Respo PR #128.
