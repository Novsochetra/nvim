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
        globals = {'vim'}, -- So 'vim' is recognized
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
})
