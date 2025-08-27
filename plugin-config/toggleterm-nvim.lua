local Terminal = require('toggleterm.terminal').Terminal
local lazygit  = Terminal:new({
  cmd = "lazygit status",
  direction = "float",
  hidden = true,
  float_ops = {
    border = "double"
  }
})


function lazygit_toggle()
  lazygit:toggle()
end

vim.keymap.set("n", ";gs", lazygit_toggle, { noremap = true, silent = true })
