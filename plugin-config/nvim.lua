--  vim.opt.compatible = false
vim.opt.termguicolors = true

vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")

vim.opt.guifont = "JetBrainsMono Nerd Font MonoMono"
vim.opt.mouse = "a"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

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

-- Search & performance
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.lazyredraw = false

-- Colorscheme
vim.cmd("colorscheme nightfly")
vim.cmd [[
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
]]

-- OceanicNext terminal options
vim.g.oceanic_next_terminal_bold = 1
vim.g.oceanic_next_terminal_italic = 1

-- Python host
vim.g.python3_host_prog = '/usr/local/bin/python3'
vim.g.vimwiki_list = { {
  path = "~/vimwiki/",
  syntax = "markdown",
  ext = ".md"
} }
