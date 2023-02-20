-- First read our docs (completely) then check the example_config repo
--
local M = {}

-- Theme switching integration with AwesomeWM 
M.ui = {
  theme = require("custom.theme"),
}
M.plugins = require "custom.plugins"

M.mappings = require "custom.mappings"
return M
