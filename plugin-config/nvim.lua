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
-- local theme_name = "catppuccin-latte" -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
local theme_name = "vaporwave" -- onedark onelight onedark_vivid onedark_dark vaporwave
vim.cmd("colorscheme " .. theme_name)

-- Function to update cursor based on theme
local function update_cursor_for_theme(theme)
  if theme == "onelight" or theme == "latte" then
    vim.api.nvim_set_hl(0, "Cursor", { fg = "#000000", bg = "#000000" })
    -- Light theme → dark cursor
    vim.api.nvim_set_hl(0, "Cursor", { fg = "NONE", bg = "#000000" })
    vim.api.nvim_set_hl(0, "lCursor", { fg = "NONE", bg = "#000000" })
  else
    -- Dark theme → light cursor
    vim.api.nvim_set_hl(0, "Cursor", { fg = "NONE", bg = "#FFFFFF" })
    vim.api.nvim_set_hl(0, "lCursor", { fg = "NONE", bg = "#FFFFFF" })
  end
end

update_cursor_for_theme(theme_name)


-- Python host
vim.g.python3_host_prog = '/usr/local/bin/python3'
