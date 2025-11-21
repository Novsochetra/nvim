require('Comment').setup({
  toggler = {
    basic = false,
    extra = false
  },
  pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook()
})


local api = require('Comment.api')

vim.keymap.set("n", "gcc", function()
  api.toggle.linewise.current()
end)

vim.keymap.set("x", "gc", function()
  api.toggle.blockwise(vim.fn.visualmode())
end)
