-- Credits to original https://github.com/NTBBloodbath/doom-one.nvim
-- This is modified version of it

local M = {}

M.base_30 = {
  white = "#99c1f1",
  darker_black = "#1a1a1a", --nvimtree bg
  black = "#1e1e1e", --  nvim bg
  black2 = "#2e323a",
  one_bg = "#32363e", -- real bg of onedark
  one_bg2 = "#ffffff",
  one_bg3 = "#41454d",
  grey = "#494d55",
  grey_fg = "#53575f",
  grey_fg2 = "#5d6169",
  light_grey = "#676b73",
  red = "#f66151",
  baby_pink = "#f66151",
  pink = "#ff75a0",
  line = "#3b3f47", -- for lines like vertsplit
  green = "#26a269",
  vibrant_green = "#a9cf76",
  nord_blue = "#1c71d8",
  blue = "#1c71d8",
  yellow = "#e66100",
  sun = "#f2c481",
  purple = "#dc8ef3",
  dark_purple = "#c678dd",
  teal = "#4db5bd",
  orange = "#f66151",
  cyan = "#46D9FF",
  statusline_bg = "#2d3139",
  lightbg = "#3a3e46",
  pmenu_bg = "#98be65",
  folder_bg = "#51afef",
}

M.base_16 = {
  base00 = "#1e1e1e",
  base01 = "#32363e",
  base02 = "#3c4048",
  base03 = "#4e525a",
  base04 = "#5a5e66",
  base05 = "#99c1f1",
  base06 = "#b3bac7",
  base07 = "#bbc2cf",
  base08 = "#f66151",
  base09 = "#e5a50a",
  base0A = "#ff7800",
  base0B = "#26a269",
  base0C = "#1a5fb4",
  base0D = "#9141ac",
  base0E = "#1c71d8",
  base0F = "#c65600",
}

M.polish_hl = {
  treesitter = {
    ["@variable.member"] = { fg = M.base_30.blue },
    ["@punctuation.bracket"] = { fg = M.base_30.yellow },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "doomchad")

return M
