## `>>`

Creating a branch of states, as well as a new cursor:

```cirru
comp-x (>> states branch-key) p1 p2
```

Notice that the structure of `states` is a tree of data and cursor:

```cirru
{}
  :cursor $ [] :a
  :data $ {}

  :b $ {}
    :data $ {}
      :c $ {}
        :data $ {}
```

When `(>> states :b)` is evaluated, new piece of data is generated:

```cirru
{}
  :cursor $ [] :a :b
  :c $ {}
    :data $ {}
```

In an older version, `cursor` and `states` are two separated variables, but now combined for convenience.
