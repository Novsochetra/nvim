local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Switch Specific Tabs
map('n', ';1', '1gt', opts)
map('n', ';2', '2gt', opts)
map('n', ';3', '3gt', opts)
map('n', ';4', '4gt', opts)
map('n', ';5', '5gt', opts)
map('n', ';6', '6gt', opts)
map('n', ';7', '7gt', opts)
map('n', ';8', '8gt', opts)
map('n', ';9', '9gt', opts)

-- Bufferline cycling
map('n', ';t', ':BufferLineCyclePrev<CR>', opts)
map('n', '<Tab>', ':BufferLineCycleNext<CR>', opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', opts)
map('n', ';x', ':lua CloseTabOrBuffer()<CR>', opts)
map('n', ';X', ':BufferLineCloseOthers<CR>', opts)

-- Open new tab
map('n', '<C-n>', ':tabnew<CR>', opts)

-- Close current tab or buffer silently
function _G.CloseTabOrBuffer()
  if vim.fn.tabpagenr('$') > 1 then
    vim.cmd('tabclose')
  else
    vim.cmd('bdelete')
  end
end
