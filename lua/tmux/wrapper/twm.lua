local options = require("tmux.configuration.options")

local M = {}

M.twm_active = not rawequal(next(options.navigation.tiling_window_manager), nil)

M.focus_window = function(direction)
  local cmd = options.navigation.tiling_window_manager(direction)
  if cmd ~= nil then
    io.popen(cmd)
  end
end

return M
