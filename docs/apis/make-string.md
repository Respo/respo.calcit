## `make-string`

Generate HTML from a virtual DOM. Stringified HTML contains a lot of markups, such as `:data-coord`:

```cirru
make-string (div $ {})
; "<div data-coord=\"[]\" data-event=\"#{}\"></div>"
```

It's quite limited, so the only use case is server side rendering.
It doesn't have to be a real web server, scripts on Node.js is also fine.

And it's also called "universal rendering", or I would call it "progressive rendering".
The rendering process started in Gulp, then in server, and last last in a browser.
So it's **progressive**. Respo needs to make sure the HTML is identical rendered anywhere.
