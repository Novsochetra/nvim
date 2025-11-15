vim.keymap.set("n", "<leader>-", function()
  require("yazi").yazi({
    open_for_directories = true,
    change_neovim_cwd_on_close = true
  })
end)

vim.keymap.set("n", "<leader>n", ":Yazi<CR>", { desc = "Toggle Yazi File Explorer" })

