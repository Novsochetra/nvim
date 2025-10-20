vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    print("VimEnter autocmd fired!")
    local bufname = vim.api.nvim_buf_get_name(0)
    local is_empty = bufname == ""
    print("Buffer name: " .. (bufname ~= "" and bufname or "<empty>"))  -- debug

    if is_empty then
      vim.cmd("Dashboard")  -- show dashboard first
      -- open NvimTree sidebar without stealing focus
      vim.defer_fn(function()
        require("nvim-tree.api").tree.open({ focus = false })
      end, 50)
    end
  end
})
