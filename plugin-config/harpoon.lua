local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<F3>", function() harpoon:list():append() end)
vim.keymap.set("n", "<F4>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<F5>", ':source ~/.config/nvim/init.vim<CR>')
