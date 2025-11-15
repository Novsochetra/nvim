-- Mason setup
require("mason").setup()

-- Mason-LSPConfig setup
require("mason-lspconfig").setup({
  ensure_installed = {},
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT', -- Neovim uses LuaJIT
      },
      diagnostics = {
        globals = { 'vim' }, -- So 'vim' is recognized
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
})


local lspconfig = require('lspconfig')
lspconfig.dartls.setup({
  -- Dart LSP settings
  settings = {
    dart = {
      lineLength = 120, -- LSP hint for line wrapping
    },
  },
  -- Format on save
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_clear_autocmds({ group = 0, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
      })
    end
  end,
})
