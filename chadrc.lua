---@type ChadrcConfig 
local M = {}

M.plugins = 'custom.plugins'

M.mappings = require "custom.mappings"

M.ui = {
  theme = 'catppuccin',
  transparency = true,
  statusline = {
    theme = "minimal"
  }
}

return M
