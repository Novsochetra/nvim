local cmp = require("cmp")
local lspkind = require("lspkind")
local M = {}

function M.truncate_word(word, max_len)
  if #word > max_len then
    return string.sub(word, 1, max_len) .. "..."
  end

  return word
end

cmp.setup({
  preselect = cmp.PreselectMode.Item,
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  completion = {
    completeopt = "menu,menuone,noinsert", -- or "menu,menuone,noselect"
  },
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text', -- show both icon + text
      maxwidth = 50,
      ellipsis_char = '...',
    }),
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm({ select = true })
      else
        fallback()
      end
    end, { "i", "s" }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = 'buffer' },
  }),
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
})

-- Basic LSP mappings
--  -- map('grn', vim.lsp.buf.rename, '[R]e[n]ame')
--  map('gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })

local Input = require("nui.input")
-- local event = require("nui.input.event")

vim.keymap.set('n', 'gd', function()
  require('telescope.builtin').lsp_definitions()
end, { desc = '[G]oto [D]efinition' })

vim.keymap.set('n', 'gy', function()
  require('telescope.builtin').lsp_type_definitions()
end, { desc = '[G]oto [D]efinition' })

vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Show diagnostic under cursor" })

vim.keymap.set('n', 'gi', function()
  require('telescope.builtin').lsp_implementations()
end, { desc = '[G]oto [D]efinition' })

vim.keymap.set("n", "grn", function()
  local curr_word = vim.fn.expand('<cword>')
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  local truncate_curr_word = M.truncate_word(curr_word, 20)
  local width = math.max(#curr_word + 5, 40)

  local input = Input({
    position = { row = row + 1, col = col },
    size = { width = width },
    border = { style = 'rounded', text = { top = 'Rename: ' .. truncate_curr_word, top_align = 'center' } },
    win_options = { winhighlight = 'Normal:Normal,FloatBorder:FloatBorder' },
  }, {
    prompt = "New Name: ",
    on_submit = function(value)
      if value and value ~= '' then
        vim.lsp.buf.rename(value) -- call the original rename
      end
    end,
    on_close = function() end
  })

  input:mount()
  input:map("i", "<ESC>", function()
    input:unmount()
  end, { noremap = true })
end, { desc = "Rename Under Cursor" })

vim.keymap.set("n", "gra", function()
  vim.lsp.buf.code_action({ noremap = true, silent = true, buffer = bufnr })
end, { desc = "[G]oto Code [A]ction" }, { 'n', 'x' })

vim.keymap.set('n', 'gr', function()
  require('telescope.builtin').lsp_references()
end, { desc = '[G]oto [R]eferences' })

vim.keymap.set('n', 'gk', function()
  require('telescope.builtin').lsp_document_symbols()
end, { desc = 'Document Symbols' })

vim.keymap.set('n', 'grD', function()
  vim.lsp.buf.declaration()
end, { desc = '[G]oto [D]eclaration' })

vim.keymap.set('n', 'gW', function()
  require('telescope.builtin').lsp_dynamic_workspace_symbols()
end, { desc = 'Workspace Symbols' })


-- Document highlights if supported
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    local buf = args.buf

    -- Highlight references if supported
    if client and client.supports_method("textDocument/documentHighlight") then
      local hl_group = vim.api.nvim_create_augroup("custom-lsp-highlight-" .. buf, { clear = true })

      vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
        buffer = buf,
        group = hl_group,
        callback = vim.lsp.buf.document_highlight,
      })

      vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
        buffer = buf,
        group = hl_group,
        callback = vim.lsp.buf.clear_references,
      })
    end

    -- Inlay hints toggle if supported
    if client and client.supports_method("textDocument/inlayHint") then
      vim.keymap.set("n", "<leader>th", function()
        vim.lsp.inlay_hint.enable(
          not vim.lsp.inlay_hint.is_enabled { bufnr = buf },
          { bufnr = buf }
        )
      end, { buffer = buf, desc = "Toggle Inlay Hints" })
    end
  end,
})

vim.lsp.handlers['textDocument/completion'] = function(_, result, ctx, _)
  print(vim.inspect(result))
end
