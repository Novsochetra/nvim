local bufferline = require("bufferline")

bufferline.setup({
  options = {
    mode = "buffers",
    separator_style = "slant",
    always_show_bufferline = true,
    numbers = "ordinal",
    show_buffer_icons = true,
    show_close_icon = true,
    diagnostics = "nvim_lsp",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left",
      },
    },
  },
})
