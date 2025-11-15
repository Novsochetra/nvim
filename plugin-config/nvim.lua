--  vim.opt.compatible = false
vim.opt.termguicolors = true

-- Enable autoread option to automatically load external changes
vim.opt.autoread = true

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
-- local theme_name = "catppuccin-mocha" -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
local theme_name = "onedark" -- onedark onelight onedark_vivid onedark_dark vaporwave
vim.cmd("colorscheme " .. theme_name)

-- Function to update cursor based on theme
local function update_cursor_for_theme(theme)
  if theme == "onelight" or theme == "latte" then
    -- Light theme → purple cursor
    vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor"
    vim.api.nvim_set_hl(0, "Cursor", { bg = "#432dd7", fg = "NONE" })
    vim.api.nvim_set_hl(0, "lCursor", { bg = "#432dd7", fg = "NONE" })
  else
    -- Dark theme → white cursor
    vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor"
    vim.api.nvim_set_hl(0, "Cursor", { bg = "#FFFFFF", fg = "NONE" })
    vim.api.nvim_set_hl(0, "lCursor", { bg = "#FFFFFF", fg = "NONE" })

    -- Make editor and NvimTree fully transparent
    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "NONE" })

  end

end



update_cursor_for_theme(theme_name)


-- Python host
vim.g.python3_host_prog = '/usr/local/bin/python3'
