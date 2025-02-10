-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {}

-- UI
M.base_30 = {
  white = "#ffffff",
  black = "#1e1e1e", -- usually your theme bg
  darker_black = "#171717", -- 6% darker than black
  black2 = "#2a2a2a", -- 6% lighter than black
  one_bg = "#2c2c2c", -- 10% lighter than black
  one_bg2 = "#3a3a3a", -- 6% lighter than one_bg
  one_bg3 = "#444444", -- 6% lighter than one_bg2
  grey = "#5e5c64", -- 40% lighter than black
  grey_fg = "#7f7f7f", -- 10% lighter than grey
  grey_fg2 = "#8c8c8c", -- 5% lighter than grey
  light_grey = "#a0a0a0",
  red = "#c01c28",
  baby_pink = "#ff6f61",
  pink = "#ff79c6",
  line = "#3a3a3a", -- 15% lighter than black
  green = "#2ec27e",
  vibrant_green = "#57e389",
  nord_blue = "#1e78e4",
  blue = "#51a1ff",
  seablue = "#0ab9dc",
  yellow = "#f5c211", -- 8% lighter than yellow
  sun = "#f8e45c",
  purple = "#9841bb",
  dark_purple = "#c061cb",
  teal = "#4fd2fd",
  orange = "#ed333b",
  cyan = "#00bcd4",
  statusline_bg = "#2c2c2c",
  lightbg = "#3a3a3a",
  pmenu_bg = "#2ec27e",
  folder_bg = "#1e78e4"
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "#1e1e1e", -- background
  base01 = "#2c2c2c", -- lighter background
  base02 = "#3a3a3a", -- selection background
  base03 = "#444444", -- comment
  base04 = "#5e5c64", -- dark grey
  base05 = "#ffffff", -- foreground
  base06 = "#f6f5f4", -- light grey
  base07 = "#c0bfbc", -- lightest grey
  base08 = "#c01c28", -- red
  base09 = "#ed333b", -- orange
  base0A = "#f5c211", -- yellow
  base0B = "#2ec27e", -- green
  base0C = "#0ab9dc", -- cyan
  base0D = "#1e78e4", -- blue
  base0E = "#9841bb", -- purple
  base0F = "#c061cb", -- pink
}

-- OPTIONAL
-- overriding or adding highlights for this specific theme only
-- defaults/treesitter is the filename i.e integration there,

M.polish_hl = {
  defaults = {
    Comment = {
      bg = "#1e1e1e", -- or M.base_30.grey
      italic = true,
    },
    Normal = {
      fg = M.base_30.white,
      bg = M.base_30.black,
    },
    CursorLine = {
      bg = M.base_30.one_bg,
    },
  },

  treesitter = {
    ["@variable"] = { fg = M.base_30.green },
    ["@function"] = { fg = M.base_30.blue },
    ["@comment"] = { fg = M.base_30.grey, italic = true },
  },
}

-- set the theme type whether is dark or light
M.type = "dark" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "adwaita")

return M
