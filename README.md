qs
==

~200-byte selector engine

API
---

```coffeescript
$('body').contentEditable = true                          # get single node
$('h1', parent).textContent = 'Hai!'                      # get single node from parent
$$ 'a'                                                    # get list of nodes
$$ 'a', (a) -> a.dataset.foo = 'bar'                      # loop through list of nodes
$$ 'p', parent, (child) -> child.classList.add 'hidden'   # loop through list of nodes from parent
```

Installation
------------

```html
<script>
  var $ = function(s, ctx) { var n = ctx || document; return n.querySelector.call(n, s) };
  var $$ = function(s, ctx, f) { if (undefined == f) f = ctx; var n = ctx || document; return Array.prototype.forEach.call(n.querySelectorAll.call(n, s), f) };
</script>
```

FAQ
---

**How is this better than jQuery?**

jQuery is amazing piece of software but adds tens of kilobytes of code for stuff already included in modern browsers.
