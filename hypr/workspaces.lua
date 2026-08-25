for i = 1, 4 do
  hl.workspace_rule({
    workspace = tostring(i),
    monitor = "HDMI-A-1",
  })
end

hl.workspace_rule({
  workspace = "5",
  monitor = "eDP-1",
})
