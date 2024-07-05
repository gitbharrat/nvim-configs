--if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

vim.opt.textwidth = 120 -- Set the maximum width of text before it gets wrapped
vim.opt.wrap = true -- Enable text wrapping
vim.opt.linebreak = true -- Wrap lines at convenient points
vim.opt.relativenumber = false
vim.opt.shiftwidth = 4

-- Theme

require("tokyonight").setup {
  style = "night", -- You can choose from "storm", "night", "moon", or "day"
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
    functions = { italic = false },
    variables = { italic = false },
  },
  -- on_colors = function(colors) colors.bg = "#111111" end,
  -- Additional configurations can go here
  terminal_colors = true,
  transparent = false,
  sidebars = "dark", -- style for sidebars
  floats = "dark", -- style for floating windows
}

-- Load the colorscheme
vim.cmd [[colorscheme tokyonight]]

-- Tabline
vim.opt.showtabline = 0

-- Custom highlight groups
-- -----------------------

-- Background Color
-- vim.cmd "highlight Normal guibg=#191919"
-- vim.cmd "highlight NeoTreeNormal guibg=#191919" -- Example color, adjust as needed
-- vim.cmd "highlight NeoTreeEndOfBuffer guibg=#191919"
-- vim.cmd "highlight NormalNC guibg=#191919" -- Example color for inactive windows, adjust as needed
-- vim.cmd "highlight NeoTreeNormalNC guibg=#191919" -- Set NeoTree unfocused window background to black
--
-- vim.cmd [[
--   highlight CursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=#242424
--   highlight CursorLineNr cterm=NONE ctermbg=black ctermfg=white guifg=#FFFFFF guibg=#242424
--   highlight Cursor cterm=NONE ctermbg=black ctermfg=white guibg=#242424 guifg=#FFFFFF
--   highlight CursorColumn cterm=NONE ctermbg=black ctermfg=NONE guibg=#191919
--
--   highlight NeoTreeCursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=#242424
--   highlight NeoTreeCursorLineNr cterm=NONE ctermbg=black ctermfg=white guifg=#FFFFFF guibg=#242424
--   highlight NeoTreeCursor cterm=NONE ctermbg=black ctermfg=white guibg=#242424 guifg=#FFFFFF
--   highlight NeoTreeCursorColumn cterm=NONE ctermbg=black ctermfg=NONE guibg=#191919
-- ]]
--
-- vim.api.nvim_set_hl(0, "WinBar", { bg = "#000000", fg = "#808080" })
-- vim.api.nvim_set_hl(0, "WinBarNC", { bg = "#000000", fg = "#808080" })
--
-- vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "BufferLineBufferSelected", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "BufferLineSeparator", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "BufferLineSeparatorVisible", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "BufferLineSeparatorSelected", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "BufferLineIndicatorSelected", { bg = "#000000" })
--
-- vim.api.nvim_set_hl(0, "StatusLine", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#000000" })
--
-- -- vim.api.nvim_set_hl(0, "TabLine", { bg = "#808080", fg = "#ffffff" })
-- vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#000000" })
-- -- vim.api.nvim_set_hl(0, "TabLineSel", { bg = "#505050", fg = "#ffffff" })

-- Themes
-----------------
-- vim.cmd "colorscheme PaperColor"
-- vim.cmd "colorscheme catppuccin-frappe"
-- vim.cmd "colorscheme astrodark"
-- vim.cmd "colorscheme carbonfox"

-- Config for Kanagawa
-- vim.cmd "colorscheme kanagawa-dragon"
-- vim.cmd [[
--   highlight LineNr guifg=#3A3A3A guibg=#181515
--   highlight CursorLineNr guifg=#FFFFFF guibg=#181515
--   highlight SignColumn guibg=#181515
-- ]]
-- vim.cmd [[
--   highlight GitSignsAdd guifg=#3A3A3A guibg=#181515
--   highlight GitSignsChange guifg=#3A3A3A guibg=#181515
--   highlight GitSignsDelete guifg=#3A3A3A guibg=#181515
-- ]]
--

vim.opt.spell = false
vim.opt.spelllang = "en_us"
vim.opt.colorcolumn = "120"

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}
