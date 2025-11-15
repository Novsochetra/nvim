local bufferline = require("bufferline")

bufferline.setup({
  options = {
    mode = "tabs",
    diagnostics = "nvim_lsp",
    offsets = {{filetype = "NvimTree", text = "  File Explorer  ", padding = 0}},
    show_buffer_close_icons = true,
    show_close_icon = false,
    diagnostics = "nvim_lsp",

  },
})

