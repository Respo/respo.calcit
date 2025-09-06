## `comp-space`

This is the component to add spaces.
It decouples whitespaces from margins of elements, so I consider it a good practice.

```cirru
; "for horizontal space"
comp-space 8 nil

; "for vertical space"
comp-space nil 8
```

Make sure that one of them left `nil` so the component may fill it.

It's also okay to use strings:

```cirru
; for vertical space
comp-space nil "|8px"
```

The bad aspect is every `<div>` actually costs.
And margin is still an alternative solution.

> Notice, margin is more performant than an extra element.
> Make you choice when you feel your app is slower.
