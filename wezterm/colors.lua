-- colors.lua
local M = {}

M.coolnight = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

M.doom = {
	foreground = "#bbc2cf",
	background = "#282c34",
	cursor_bg = "#51afef",
	cursor_fg = "#282c34",
	cursor_border = "#51afef",
	selection_fg = "#282c34",
	selection_bg = "#51afef",
	scrollbar_thumb = "#4b5263",
	split = "#4b5263",
	ansi = { "#1c1f24", "#ff6c6b", "#98be65", "#ecbe7b", "#51afef", "#c678dd", "#46d9ff", "#bbc2cf" },
	brights = { "#5b6268", "#ff6c6b", "#98be65", "#ecbe7b", "#51afef", "#c678dd", "#46d9ff", "#ffffff" },
	indexed = { [16] = "#ff6c6b", [17] = "#98be65" },
}

M.gnome = {
	foreground = "#fefefe",
	background = "#1f1f1f",
	cursor_bg = "#ffffff",
	cursor_fg = "#1f1f1f",
	cursor_border = "#ffffff",
	selection_fg = "#1f1f1f",
	selection_bg = "#fefefe",
	ansi = { "#1f1f1f", "#c01c28", "#2ec27e", "#f5c211", "#1e78e4", "#9841bb", "#0ab9dc", "#5e5c64" },
	brights = { "#1f1f1f", "#ed333b", "#57e389", "#f8e45c", "#51a1ff", "#c061cb", "#4fd2fd", "#5e5c64" },
}

return M
