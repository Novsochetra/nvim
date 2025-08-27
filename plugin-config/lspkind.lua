-- setup() is also available as an alias
require('lspkind').init({
  -- DEPRECATED (use mode instead): enables text annotations
  --
  -- default: true
  -- with_text = true,

  -- defines how annotations are shown
  -- default: symbol
  -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
  mode = 'symbol',

  -- default symbol map
  -- can be either 'default' (requires nerd-fonts font) or
  -- 'codicons' for codicon preset (requires vscode-codicons font)
  --
  -- default: 'default'
  preset = 'default',

  -- override preset symbols
  --
  -- default: {}
  symbol_map = {
    Class = "",
    Color = "",
    Constant = "",
    Constructor = "",
    Enum = "了",
    EnumMember = "",
    Event = "",
    Field = "",
    File = "",
    Folder = "",
    Function = "",
    Interface = "ﰮ",
    Keyword = "",
    Macro = "",
    Method = "ƒ",
    Module = "",
    Operator = "",
    Package = "",
    Property = "",
    Reference = "",
    Snippet = "﬌",
    Struct = "",
    Text = "",
    TypeParameter = "",
    Unit = "",
    Value = "",
    Variable = "",
  },
})
