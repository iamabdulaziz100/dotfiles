-- Vim HJKL: focus (keep SUPER+Arrows as well) - vim order H=left J=down K=up L=right
hl.unbind("SUPER + J") -- was: Toggle window split
hl.unbind("SUPER + K") -- was: Keybindings
hl.unbind("SUPER + L") -- was: Toggle workspace layout
o.bind("SUPER + H", "Focus previous window", hl.dsp.focus({ direction = "l" }))
o.bind("SUPER + J", "Focus on below window", hl.dsp.focus({ direction = "d" }))
o.bind("SUPER + K", "Focus on above window", hl.dsp.focus({ direction = "u" }))
o.bind("SUPER + L", "Focus next window", hl.dsp.focus({ direction = "r" }))

-- Vim HJKL: swap/move window
o.bind("SUPER + SHIFT + H", "Swap window to the left", hl.dsp.window.swap({ direction = "l" }))
o.bind("SUPER + SHIFT + J", "Swap window down", hl.dsp.window.swap({ direction = "d" }))
o.bind("SUPER + SHIFT + K", "Swap window up", hl.dsp.window.swap({ direction = "u" }))
o.bind("SUPER + SHIFT + L", "Swap window to the right", hl.dsp.window.swap({ direction = "r" }))

-- Relocated originals to ALT+J/K/L
o.bind("ALT + J", "Toggle window split", hl.dsp.layout("togglesplit"))
o.bind("ALT + K", "Keybindings", "omarchy-menu-keybindings")
o.bind("ALT + L", "Toggle workspace layout", "omarchy-hyprland-workspace-layout-toggle")

-- Relocate Close window from SUPER+W to SUPER+Q
hl.unbind("SUPER + W") -- was: Close window
o.bind("SUPER + Q", "Close window", hl.dsp.window.close())
