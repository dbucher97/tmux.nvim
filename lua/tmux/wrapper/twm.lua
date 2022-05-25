local options = require("tmux.configuration.options")

local M = { twm_active = false }

M.focus_window = function(direction)
  local cmd = options.navigation.tiling_window_manager[direction]
  if cmd ~= nil then
    io.popen(cmd .. " 2> /dev/null")
  end
end

M.setup = function()
  M.twm_active = not rawequal(next(options.navigation.tiling_window_manager), nil)
end

return M
