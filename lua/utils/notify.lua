-- lua/utils/notify.lua
local notify = require("notify")

-- Define your custom levels
---@class NotifyLevels
---@field TRACE integer
---@field DEBUG integer
---@field INFO integer
---@field WARN integer
---@field ERROR integer
---@field SUCCESS integer

---@type NotifyLevels
local levels = {
  TRACE = vim.log.levels.TRACE,
  DEBUG = vim.log.levels.DEBUG,
  INFO = vim.log.levels.INFO,
  WARN = vim.log.levels.WARN,
  ERROR = vim.log.levels.ERROR,
  SUCCESS = 9, -- custom numeric level
}

local icons = {
  SUCCESS = "", -- your green check icon
  INFO    = "",
  WARN    = "",
  ERROR   = "",
  DEBUG   = "",
  TRACE   = "✎",
}

-- Setup nvim-notify
notify.setup({
  fps = 60,
  timeout = 3000,
  stages = "fade",
  render = "minimal",
  background_colour = "#000000",
  icons = icons
  ,
})

-- Create a reusable module
local M = {}

-- Helper to prepend icon to title automatically
local function notify_with_icon_for_compact_style(msg, level, title)
  local icon = icons[level] or ""
  local full_msg = string.format("%s %s: %s", icon, title or level, msg or "")
  notify(full_msg, level)
end

-- Exported functions
function M.success(msg, title)
  notify_with_icon_for_compact_style(msg, "SUCCESS", title or "Success")
end

function M.info(msg, title)
  notify_with_icon_for_compact_style(msg, "INFO", title or "Info")
end

function M.warn(msg, title)
  notify_with_icon_for_compact_style(msg, "WARN", title or "Warning")
end

function M.error(msg, title)
  notify_with_icon_for_compact_style(msg, "ERROR", title or "Error")
end

function M.debug(msg, title)
  notify_with_icon_for_compact_style(msg, "DEBUG", title or "Debug")
end

function M.trace(msg, title)
  notify_with_icon_for_compact_style(msg, "TRACE", title or "Trace")
end

return M
