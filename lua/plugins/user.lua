--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

-- Keybindings for Neotree -> Ctrl + N
vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", { noremap = true, silent = true })

--vim.cmd('colorscheme catppuccin')

-- Keybindings for Image Paste - > Space + V
vim.api.nvim_set_keymap(
  "n",
  "<leader>v",
  ":call mdip#MarkdownClipboardImage()<CR>",
  { noremap = true, silent = true, desc = "Paste Image from Clipboard " }
)

---@type LazySpec
return {
  -- Themes
  {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup {
        -- Your configuration options here
      }
      -- vim.cmd("colorscheme catppuccin")
    end,
  },
  { "folke/tokyonight.nvim" },
  { "kdheepak/monochrome.nvim" },
  { "dasupradyumna/midnight.nvim" },
  { "morhetz/gruvbox" },
  { "sainnhe/gruvbox-material" },
  {
    "rebelot/kanagawa.nvim",
    -- vim.cmd("colorscheme ")
  },
  { "rktjmp/lush.nvim" },
  { "pauchiner/pastelnight.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "kabouzeid/nvim-jellybeans", requires = "rktjmp/lush.nvim" },
  { "kepano/flexoki-neovim" },
  { "marko-cerovac/material.nvim", as = "mountain_vscodedark" },
  { "sainnhe/everforest", as = "papstelbeans" },
  -- {
  --   "NvChad/nvim-base16.lua",
  -- },
  -- {
  --   "NvChad/base46",
  --   requires = {
  --     "rktjmp/lush.nvim", -- required for lush.nvim, a dependency for base46
  --   },
  --   config = function()
  --     require("base46").load_all_highlights() -- Load all highlights from base46
  --   end,
  -- },
  { "NLKNguyen/papercolor-theme" },

  -- Setups Vertical Column
  {
    "lukas-reineke/virt-column.nvim",
    config = function()
      require("virt-column").setup {
        char = "│", -- Customize the character used for the column
        virt_text_pos = "eol", -- Position the virtual text at the end of the line
      }
    end,
  },
  -- Telescope Tags
  {
    "ludovicchabant/vim-gutentags",
    config = function()
      -- Optional: Set up custom configurations for gutentags
    end,
  },
  -- Image Paste
  { "img-paste-devs/img-paste.vim" },
  -- Markdown Preview
  { "iamcco/markdown-preview.nvim", build = "cd app && npm install", ft = "markdown" },
  -- Jupyter Talk
  { "jupyter-vim/jupyter-vim" },
  -- Another Theme
  { "rose-pine/neovim", name = "rose-pine" },
  -- Vim Latex for Markdown Support
  { "lervag/vimtex" },
}
