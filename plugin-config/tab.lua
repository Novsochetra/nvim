local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Switch Specific Tabs
map('n', ';1', ':BufferLineGoToBuffer 1 <CR>', opts)
map('n', ';2', ':BufferLineGoToBuffer 2 <CR>', opts)
map('n', ';3', ':BufferLineGoToBuffer 3 <CR>', opts)
map('n', ';4', ':BufferLineGoToBuffer 4 <CR>', opts)
map('n', ';5', ':BufferLineGoToBuffer 5 <CR>', opts)
map('n', ';6', ':BufferLineGoToBuffer 6 <CR>', opts)
map('n', ';7', ':BufferLineGoToBuffer 7 <CR>', opts)
map('n', ';8', ':BufferLineGoToBuffer 8 <CR>', opts)
map('n', ';9', ':BufferLineGoToBuffer 9 <CR>', opts)

-- Bufferline cycling
map('n', ';t', ':BufferLineCyclePrev<CR>', opts)
map('n', '<Tab>', ':BufferLineCycleNext<CR>', opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', opts)
map('n', ';X', ':BufferLineCloseOthers<CR>', opts)
map('n', ';x', ':bdelete<CR>', opts)

-- Close current buffer and go to next
-- map('n', ';x', function()
--   local current = vim.api.nvim_get_current_buf()
--   local name = vim.api.nvim_buf_get_name(current)
--   if name:match('NvimTree_') then return end
--
--   vim.cmd('BufferLineCyclePrev')
--   vim.schedule(function()
--     if vim.api.nvim_buf_is_valid(current) then
--       vim.cmd('bdelete ' .. current)
--     end
--   end)
-- end, opts)

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
