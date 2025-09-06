## `realize-ssr!`

This one is complicated. I wrote [a long post before trying to explain this new feature][progressive].
The code looks like this:

[progressive]: https://medium.com/@jiyinyiyong/progressive-server-side-rendering-that-we-may-need-8980e7c4d61a

```cirru
def ssr? (some? (.!querySelector js/document "|meta.respo-ssr"))
def mount-target (.!querySelector js/document "|.app"))

if ssr?
  realize-ssr! mount-target
    comp-container @*store ssr-stages
    , dispatch!
```

The job of `realize-ssr!` function is to simulate a virtual DOM of currently rendered HTML from server, so that the followed virtual DOM rendering steps can run a little easier.
