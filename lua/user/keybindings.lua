local M = {}

M.config = function ()
  lvim.keys.insert_mode["<C-c>"] = "<esc>"
  lvim.keys.normal_mode["<C-c>"] = "<esc>"
  lvim.keys.visual_mode["<C-c>"] = "<esc>"
end

return M
