local M = {}

M.config = function ()
  lvim.keys.insert_mode["<C-c>"] = "<esc>"

  lvim.keys.normal_mode["<C-c>"] = "<esc>"
  lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

  lvim.keys.visual_mode["<C-c>"] = "<esc>"

  lvim.keys.normal_mode["[d"] =  "<cmd>lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = lvim.lsp.popup_border}})<cr>"
  lvim.keys.normal_mode["]d"] =  "<cmd>lua vim.lsp.diagnostic.goto_next({popup_opts = {border = lvim.lsp.popup_border}})<cr>"

  if lvim.builtin.dap.active then
    lvim.builtin.which_key.mappings["dw"] = { "<cmd>lua require'dapui'.toggle()<cr>", "Dap UI" }
    lvim.keys.normal_mode["<M-g>"] = "<cmd>lua require'dapui'.toggle()<cr>"
    lvim.keys.normal_mode["<M-h>"] = "<cmd>lua require'dapui'.eval()<cr>"
    lvim.keys.normal_mode["<M-t>"] = "<cmd>lua require'dap'.toggle_breakpoint()<cr>"
    lvim.keys.normal_mode["<M-b>"] = "<cmd>lua require'dap'.step_back()<cr>"
    lvim.keys.normal_mode["<M-c>"] = "<cmd>lua require'dap'.continue()<cr>"
    lvim.keys.normal_mode["<M-r>"] = "<cmd>lua require'dap'.run_to_cursor()<cr>"
    lvim.keys.normal_mode["<M-i>"] = "<cmd>lua require'dap'.step_into()<cr>"
    lvim.keys.normal_mode["<M-o>"] = "<cmd>lua require'dap'.step_over()<cr>"
    lvim.keys.normal_mode["<M-u>"] = "<cmd>lua require'dap'.step_out()<cr>"
    lvim.keys.normal_mode["<M-q>"] = "<cmd>lua require'dap'.close()<cr>"
  end

end

return M
