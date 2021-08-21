local M = {}

M.config = function ()
  lvim.keys.insert_mode["<C-c>"] = "<esc>"

  lvim.keys.normal_mode["<C-c>"] = "<esc>"
  lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

  lvim.keys.visual_mode["<C-c>"] = "<esc>"


  if lvim.builtin.dap.active then
    lvim.keys.normal_mode["<C-g>"] = ":lua require'dapui'.toggle()<cr>"
  end

end

return M
