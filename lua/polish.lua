--if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

vim.opt.wrap = true

vim.opt.linebreak = true

vim.opt.relativenumber = false

vim.opt.shiftwidth = 4

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

-- Enable cursorline and cursorcolumn
-- vim.o.cursorline = true
-- vim.o.cursorcolumn = true

-- Config for Kanagawa
vim.cmd "colorscheme kanagawa-dragon"

-- In your AstroNvim configuration file

-- Set the line number color to be slightly lighter than the background
vim.cmd [[
  highlight LineNr guifg=#3A3A3A guibg=#181515
  highlight CursorLineNr guifg=#FFFFFF guibg=#181515
  highlight SignColumn guibg=#181515
]]
--
-- -- Assuming 'gitsigns' plugin for showing git hunks
vim.cmd [[
  highlight GitSignsAdd guifg=#3A3A3A guibg=#181515
  highlight GitSignsChange guifg=#3A3A3A guibg=#181515
  highlight GitSignsDelete guifg=#3A3A3A guibg=#181515
]]

-- If you are using other git sign plugins like vim-gitgutter or signify
-- Uncomment and use the appropriate section

-- vim-gitgutter plugin
-- vim.cmd [[
--   highlight GitGutterAdd guifg=#3A3A3A guibg=#181515
--   highlight GitGutterChange guifg=#3A3A3A guibg=#181515
--   highlight GitGutterDelete guifg=#3A3A3A guibg=#181515
-- ]]

-- signify plugin
-- vim.cmd [[
--   highlight SignifySignAdd guifg=#3A3A3A guibg=#181515
--   highlight SignifySignChange guifg=#3A3A3A guibg=#181515
--   highlight SignifySignDelete guifg=#3A3A3A guibg=#181515
-- ]]

--
vim.opt.spell = true
vim.opt.spelllang = "en_us"

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
