hl.config({
  decoration = {
    rounding = 8,
  },
})

-- Always opaque windows (override default 0.985 0.96)
o.window(".*", { opacity = "1 1" })
