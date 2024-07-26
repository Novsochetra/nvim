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

-- MARK: this is the key Alt + j on the mac
-- you can check on your terminal what print on terminal 
-- when you press Alt + j and just copy that output and paste here
vim.keymap.set("n", "<A-j>", function() harpoon:list():next() end)
-- MARK: this is the key Alt + k on the mac
-- you can check on your terminal what print on terminal 
-- when you press Alt + k and just copy that output and paste here
vim.keymap.set("n", "<A-k>", function() harpoon:list():prev() end)

vim.keymap.set("n", "<F5>", ':source ~/.config/nvim/init.vim<CR>')
