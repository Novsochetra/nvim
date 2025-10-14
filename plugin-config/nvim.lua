--  vim.opt.compatible = false
vim.opt.termguicolors = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")

vim.opt.guifont = "JetBrainsMono Nerd Font MonoMono"
vim.opt.mouse = "a"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.o.cmdheight = 1

-- Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Swapfile & clipboard
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
vim.opt.encoding = "utf8"

-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter$foldexpr()"
vim.opt.foldenable = false
vim.o.foldlevel = 99

vim.opt.colorcolumn = "120"

-- Search & performance
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Colorscheme
-- vim.cmd.colorscheme "nightfly"
vim.cmd.colorscheme "catppuccin-macchiato" -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

-- OceanicNext terminal options
-- vim.g.oceanic_next_terminal_bold = 1
-- vim.g.oceanic_next_terminal_italic = 1

-- Python host
vim.g.python3_host_prog = '/usr/local/bin/python3'
