-- ~/.config/nvim/lua/themes/monochrome.lua

local M = {}

M.colors = {
  white = "#D8DEE9",
  darker_black = "#1a1a1a",
  black = "#101010", -- nvim bg
  black2 = "#202020",
  one_bg = "#242424",
  one_bg2 = "#2e2e2e",
  one_bg3 = "#383838",
  grey = "#424242",
  grey_fg = "#4c4c4c",
  grey_fg2 = "#606060",
  light_grey = "#677777",
  red = "#ec8989",
  baby_pink = "#eca8a8",
  pink = "#da838b",
  line = "#2e2e2e", -- for lines like vertsplit
  green = "#c9d36a",
  vibrant_green = "#eff6ab",
  blue = "#8abae1",
  nord_blue = "#a5c6e1",
  yellow = "#ffe6b5",
  sun = "#eff6ab",
  purple = "#e1bee9",
  dark_purple = "#db9fe9",
  teal = "#6484a4",
  orange = "#efb6a0",
  cyan = "#9aafe6",
  statusline_bg = "#1e1e1e",
  lightbg = "#2e2e2e",
  pmenu_bg = "#859ba2",
  folder_bg = "#7797b7",
}

M.base_16 = {
  base00 = "#101010",
  base01 = "#1f1f1f",
  base02 = "#2e2e2e",
  base03 = "#383838",
  base04 = "#424242",
  base05 = "#bfc5d0",
  base06 = "#c7cdd8",
  base07 = "#ced4df",
  base08 = "#eee8d5",
  base09 = "#B8B7B1",
  base0A = "#859ba2",
  base0B = "#7b9198",
  base0C = "#DFDFDA",
  base0D = "#ced4df",
  base0E = "#DAD4C3",
  base0F = "#ced4df",
}

M.apply = function()
  local colors = M.colors
  local base_16 = M.base_16

  vim.cmd "highlight clear"
  if vim.fn.exists "syntax_on" then vim.cmd "syntax reset" end

  vim.o.background = "dark"
  vim.o.termguicolors = true

  -- Apply base16 colors
  for group, color in pairs(base_16) do
    vim.cmd(string.format("highlight %s guifg=%s", group, color))
  end

  -- Apply custom colors
  vim.cmd("highlight Normal guifg=" .. colors.white .. " guibg=" .. colors.black)
  vim.cmd("highlight LineNr guifg=" .. colors.grey .. " guibg=" .. colors.black)
  vim.cmd("highlight CursorLineNr guifg=" .. colors.white .. " guibg=" .. colors.black)
  vim.cmd("highlight StatusLine guifg=" .. colors.white .. " guibg=" .. colors.statusline_bg)
  vim.cmd("highlight StatusLineNC guifg=" .. colors.grey_fg .. " guibg=" .. colors.statusline_bg)
  vim.cmd("highlight VertSplit guifg=" .. colors.line .. " guibg=" .. colors.black)
  vim.cmd("highlight Pmenu guifg=" .. colors.white .. " guibg=" .. colors.pmenu_bg)
  vim.cmd("highlight PmenuSel guifg=" .. colors.black .. " guibg=" .. colors.cyan)
  vim.cmd("highlight PmenuSbar guifg=" .. colors.white .. " guibg=" .. colors.one_bg2)
  vim.cmd("highlight PmenuThumb guifg=" .. colors.white .. " guibg=" .. colors.grey)
  vim.cmd("highlight Visual guifg=" .. colors.black .. " guibg=" .. colors.grey_fg)
  vim.cmd("highlight Search guifg=" .. colors.black .. " guibg=" .. colors.yellow)
  vim.cmd("highlight IncSearch guifg=" .. colors.black .. " guibg=" .. colors.orange)
  vim.cmd("highlight CursorLine guibg=" .. colors.one_bg2)
  vim.cmd("highlight CursorColumn guibg=" .. colors.one_bg2)
  vim.cmd("highlight ColorColumn guibg=" .. colors.one_bg2)
  vim.cmd("highlight Folded guifg=" .. colors.grey .. " guibg=" .. colors.black)
  vim.cmd("highlight FoldColumn guifg=" .. colors.grey .. " guibg=" .. colors.black)
  vim.cmd("highlight DiffAdd guifg=" .. colors.black .. " guibg=" .. colors.vibrant_green)
  vim.cmd("highlight DiffChange guifg=" .. colors.black .. " guibg=" .. colors.yellow)
  vim.cmd("highlight DiffDelete guifg=" .. colors.black .. " guibg=" .. colors.red)
  vim.cmd("highlight DiffText guifg=" .. colors.black .. " guibg=" .. colors.blue)
  vim.cmd("highlight MatchParen guifg=" .. colors.red .. " guibg=" .. colors.black2)
  vim.cmd("highlight NonText guifg=" .. colors.grey .. " guibg=" .. colors.black)
  vim.cmd("highlight SpecialKey guifg=" .. colors.grey .. " guibg=" .. colors.black)
  vim.cmd("highlight Title guifg=" .. colors.green .. " guibg=" .. colors.black)
  vim.cmd("highlight WarningMsg guifg=" .. colors.red .. " guibg=" .. colors.black)
  vim.cmd("highlight WildMenu guifg=" .. colors.black .. " guibg=" .. colors.blue)

  -- Treesitter highlights
  vim.cmd("highlight @punctuation.bracket guifg=" .. colors.red)
end

return M
