local M = {}

M.config = function ()
  lvim.keys.insert_mode["<C-c>"] = "<esc>"

  lvim.keys.normal_mode["<C-c>"] = "<esc>"
  lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

  lvim.keys.visual_mode["<C-c>"] = "<esc>"


  if lvim.builtin.dap.active then
    lvim.keys.normal_mode["<M-g>"] = ":lua require'dapui'.toggle()<cr>"
    lvim.keys.normal_mode["<M-t>"] = ":lua require'dap'.toggle_breakpoint()<cr>"
    lvim.keys.normal_mode["<M-b>"] = ":lua require'dap'.step_back()<cr>"
    lvim.keys.normal_mode["<M-c>"] = ":lua require'dap'.continue()<cr>"
    lvim.keys.normal_mode["<M-r>"] = ":lua require'dap'.run_to_cursor()<cr>"
    lvim.keys.normal_mode["<M-i>"] = ":lua require'dap'.step_into()<cr>"
    lvim.keys.normal_mode["<M-o>"] = ":lua require'dap'.step_over()<cr>"
    lvim.keys.normal_mode["<M-u>"] = ":lua require'dap'.step_out()<cr>"
    lvim.keys.normal_mode["<M-q>"] = ":lua require'dap'.close()<cr>"

  end

end

return M
