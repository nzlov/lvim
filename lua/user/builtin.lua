local M = {}

M.config = function()

    lvim.builtin.dashboard.active = true
    lvim.builtin.telescope.active = true
    lvim.builtin.dap.active = true
    lvim.builtin.terminal.active = true
    lvim.builtin.tabnine = { active = true }
    lvim.builtin.lastplace = { active = true }
    lvim.builtin.orgmode = {active = true}
    lvim.builtin.bufferline.active = true

    lvim.builtin.nvimtree.side = "left"
    lvim.builtin.nvimtree.show_icons.git = 1

    lvim.builtin.treesitter.ensure_installed = {}
    lvim.builtin.treesitter.ignore_install = { "haskell" }
    lvim.builtin.treesitter.highlight.enabled = true

    lvim.builtin.telescope.defaults.path_display = {}


    if lvim.builtin.tabnine.active then
      local tabnine = require('cmp_tabnine.config')
      tabnine:setup({
              max_lines = 1000;
              max_num_results = 20;
              sort = true;
      })
    end

    require("user.lualine").config()
    require'dap'.set_log_level('TRACE')

end

return M
