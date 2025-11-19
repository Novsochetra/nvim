-- vim.keymap.set("n", "<leader>n", function()
--   require("yazi").yazi({
--     open_for_directories = true,          -- allow folder navigation
--     change_neovim_cwd_on_close = true,
--     hooks = {
--       yazi_closed_successfully = function(chosen_file, config, state)
--         -- INFO: when we selected the file we will need to change neovim working dir
--         -- otherwise plugin like telescope.find_files will search the default folder
--         if chosen_file then
--           local path = vim.fn.fnamemodify(chosen_file, ":p") -- full path
--
--           -- check if it is a directory
--           if vim.fn.isdirectory(path) == 1 then
--             vim.cmd("cd " .. path)
--             vim.notify("Neovim CWD changed to directory: " .. path)
--           else
--             -- it's a file, set cwd to parent folder
--             local dir = vim.fn.fnamemodify(path, ":h")
--             vim.cmd("cd " .. dir)
--             vim.notify("Neovim CWD changed to parent folder: " .. dir)
--           end
--         end
--       end
--     }
--   })
-- end)

vim.keymap.set("n", "<leader>n", ":Yazi<CR>", { desc = "Open Yazi for current dir" })
vim.keymap.set("n", "<leader>vc", function()
  vim.cmd("cd ~/.config/nvim")
end, { desc = "Open Nvim config directory with default explorer" })
