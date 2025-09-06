## `clear-cache!`

```cirru
clear-cache!
```

Respo has two copies of caches inside for the purpose of:

1. DOM diffing
2. speed up rendering

The first one is easy to understand since virtual DOM is corresponding to the DOM we currently see in the page. That's why it's cached.

The second one is for rendering, maybe I should explain it in `shouldComponentUpdate`-like process. Most times this virtual DOM is same with the previous one for diffing. But during hot code swapping, it's not. DOM state is updated, however, caches should be removed. That's why there's a second one.

`clear-cache!` is to clear the second cache, during hot swapping.
