local M = {}
M.config = function()
  local components = require "core.lualine.components"

  lvim.builtin.lualine.sections.lualine_y = {components.encoding ,components.location }

end

return M
