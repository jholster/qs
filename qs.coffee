# qs, a ~200-byte selector engine

window.$ = (s, ctx) ->
  ctx ?= document
  ctx.querySelector.call ctx, s

window.$$ = (s, ctx, f) ->
  f = ctx unless f
  ctx ?= document
  list = ctx.querySelectorAll.call(ctx, s)
  if f then Array.forEach.apply list, f else list
