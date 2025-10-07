local bufferline = require('bufferline')

-- default options
local opts = {
  options = {
    mode = "buffers",
    separator_style = "slant",
    always_show_bufferline = true,

    show_buffer_default_icon = true,
    show_close_icon = true,
  },
  highlights = {},
}

-- setup bufferline with the options
bufferline.setup(opts)
