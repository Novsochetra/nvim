-- Setup nvim-notify
local notify = require("notify")

notify.setup({
  -- Background color of the notification window
  background_colour = "#000000",  -- or try "background_color"
  
  -- Optional: timeout in ms
  timeout = 3000,
  
  -- Optional: animation style
  stages = "fade",
  
  -- Optional: render style
  render = "compact"
})

vim.cmd([[
  highlight NotifyERRORBorder guifg=#8A1F1F guibg=#000000
  highlight NotifyWARNBorder guifg=#79491D guibg=#000000
  highlight NotifyINFOBorder guifg=#4F6752 guibg=#000000
  highlight NotifyDEBUGBorder guifg=#8B8B8B guibg=#000000
  highlight NotifyTRACEBorder guifg=#4F3552 guibg=#000000

  highlight NotifyERRORIcon guifg=#F70067 guibg=#000000
  highlight NotifyWARNIcon guifg=#F79000 guibg=#000000
  highlight NotifyINFOIcon guifg=#A9FF68 guibg=#000000
  highlight NotifyDEBUGIcon guifg=#8B8B8B guibg=#000000
  highlight NotifyTRACEIcon guifg=#D484FF guibg=#000000

  highlight NotifyERRORTitle guifg=#F70067 guibg=#000000
  highlight NotifyWARNTitle guifg=#F79000 guibg=#000000
  highlight NotifyINFOTitle guifg=#A9FF68 guibg=#000000
  highlight NotifyDEBUGTitle guifg=#8B8B8B guibg=#000000
  highlight NotifyTRACETitle guifg=#D484FF guibg=#000000

  " IMPORTANT: override body so it's not linked to Normal anymore
  highlight NotifyERRORBody guifg=#ffffff guibg=#000000
  highlight NotifyWARNBody  guifg=#ffffff guibg=#000000
  highlight NotifyINFOBody  guifg=#ffffff guibg=#000000
  highlight NotifyDEBUGBody guifg=#ffffff guibg=#000000
  highlight NotifyTRACEBody guifg=#ffffff guibg=#000000
]])

-- Override vim.notify to use nvim-notify
vim.notify = notify

