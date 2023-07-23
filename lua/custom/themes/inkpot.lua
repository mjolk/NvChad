local M = {}

M.base_30 = {
  white = "#FFFFFF",
  darker_black = "#0b1221",
  black = "#111827", --  nvim bg
  black2 = "#1a2130",
  one_bg = "#1e2534",
  one_bg2 = "#282f3e",
  one_bg3 = "#780000",
  grey = "#3e4554",
  grey_fg = "#4a5160",
  grey_fg2 = "#545b6a",
  light_grey = "#5f6675",
  red = "#FCA5A5",
  baby_pink = "#FECDD3",
  pink = "#ff8e8e",
  line = "#282f3e", -- for lines like vertsplit
  green = "#B5E8B0",
  vibrant_green = "#B5E8B0",
  nord_blue = "#9baaf2",
  blue = "#A5B4FC",
  yellow = "#E8D4B0",
  sun = "#f2deba",
  purple = "#BDB0E4",
  dark_purple = "#b3a6da",
  teal = "#719bd3",
  orange = "#E3D213",
  cyan = "#DEDBFF",
  statusline_bg = "#171e2d",
  lightbg = "#282f3e",
  pmenu_bg = "#FCA5A5",
  folder_bg = "#A5B4FC",
}

M.base_16 = {
  base00 = "#000000",
  base01 = "#1e2534",
  base02 = "#282f3e",
  base03 = "#323948",
  base04 = "#3e4554",
  base05 = "#01C90E",
  base06 = "#E5E7EB",
  base07 = "#D1D5DB",
  base08 = "#DDD6FE",
  base09 = "#E8D4B0",
  base0A = "#FBC19D",
  base0B = "#B5E8B0",
  base0C = "#BAE6FD",
  base0D = "#BAE6FD",
  base0E = "#BAE6FD",
  base0F = "#9CA3AF",
}

M.polish_hl = {

  Keyword = {
    fg = M.base_30.nord_blue,
  },

  ["@keyword"] = {
    fg = M.base_30.nord_blue,
  },

  ["@keyword.operator"] = {
    fg = M.base_30.baby_red,
  },

  ["@method"] = {
    fg = M.base_30.orange,
    bold = true
  },

  ["@method.call"] = {
    fg = M.base_30.orange,
    bold = true
  },

  ["@symbol"] = {
    fg = M.base_30.baby_red,
  },

  Function = {
    fg = M.base_30.orange,
    bold = true
  },

  ["@function"] = {
    fg = M.base_30.orange,
    bold = true
  },

  ["@function.call"] = {
    fg = M.base_30.orange,
    bold = true
  },

  ["@function.builtin"] = {
    fg = M.base_30.orange,
    bold = true
  },

  String = {
    fg = M.base_30.white,
    bg = M.base_30.one_bg3,
  },

  ["@string"] = {
    fg = M.base_30.white,
    bg = M.base_30.one_bg3,
  },

  Type = {
    fg = M.base_30.nord_blue,
  },

  ["@type.builtin"] = {
    fg = M.base_30.nord_blue,
  },

  ["@field"] = {
    fg = M.base_16.base05,
  },

  ["@field.key"] = {
    fg = M.base_16.base05,
  },

  ["@property"] = {
    fg = M.base_16.base05,
  },

  Operator = {
    fg = M.base_30.baby_red,
  },

  ["@operator"] = {
    fg = M.base_30.baby_red,
  },

  ["@parameter"] = { fg = M.base_16.base05 },

  Variable = {
    fg = M.base_16.base05,
  },

  Number = { fg = M.base_30.red },

  Define = {
    fg = M.base_16.base05
  },

  Identifier = {
    fg = M.base_16.base05,
  },

  StorageClass = {
    fg = M.base_16.base05,
  },

  Typedef = {
    fg = M.base_16.base05,
  },

  Boolean = {
    fg = M.base_16.base05,
  },

  Character = {
    fg = M.base_16.base05,
  },

  Label = {
    fg = M.base_16.base05,
  },

}

M.type = "dark"

return M
