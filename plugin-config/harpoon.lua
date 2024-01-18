local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup({
  settings = {
    -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
    save_on_toggle = true,

    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true
  }
})
-- REQUIRED

vim.keymap.set("n", "<F3>", function() harpoon:list():append() end)
vim.keymap.set("n", "<F4>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<F5>", ':source ~/.config/nvim/init.vim<CR>')
