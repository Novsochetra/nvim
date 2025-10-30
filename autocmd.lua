vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local argc = vim.fn.argc()
    local first_arg = argc > 0 and vim.fn.argv(0) or ""

    local ok, api = pcall(require, "nvim-tree.api")
    -- when enter neovim i don't want nvim-tree to open
    api.tree.close()

    -- Case 1: no args (plain `nvim`)
    -- Case 2: single arg that is a directory (`nvim .`)
    if argc == 0 or (vim.fn.argv(0) == ".") or (vim.fn.argv(0) == "NvimTree_1") then
      -- Now open Dashboard
      vim.cmd("enew")
      vim.cmd("Dashboard")
    end
  end,
})
