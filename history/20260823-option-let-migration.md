# Option binding macro migration

- Upgraded the project runtime declaration to Calcit 0.13.38.
- Reworked `respo.app.task/normalize-task`'s map branch to use `option:let`: missing task fields short-circuit to `%none`, while existing payload type validation is unchanged.
