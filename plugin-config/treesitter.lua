require("nvim-treesitter.configs").setup {
  highlight = { enable = true },
  ensure_installed = {
    "bash",
    "c",
    "html",
    "javascript",
    "json",
    "lua",
    "luap",
    "markdown",
    "markdown_inline",
    "regex",
    "tsx",
    "typescript",
    "vim",
    "yaml",
  },
  indent = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<Space>", -- set to `false` to disable one of the mappings
      node_incremental = "<Space>",
      scope_incremental = "grc",
      node_decremental = "<BS>",
    },
  },
}
