# Resource request id uses nominal Option

- Migrated `ResourceState.request-id` from legacy nullable `Optional<Number>` to `Option<Number>`.
- Idle state stores `%none`; active, ready, and failed states store `%some request-id`.
- Stale response comparison now compares the state option with `%some request-id`.
- Added reducer coverage for idle, pending, ready, failed, and stale transitions.
- DOM props, component tree placeholders, refs, and event normalization remain unchanged compatibility boundaries.
