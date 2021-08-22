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

    lvim.builtin.compe.autocomplete = true

    lvim.builtin.nvimtree.side = "left"
    lvim.builtin.nvimtree.show_icons.git = 0

    lvim.builtin.treesitter.ensure_installed = {}
    lvim.builtin.treesitter.ignore_install = { "haskell" }
    lvim.builtin.treesitter.highlight.enabled = true


    if lvim.builtin.tabnine.active then
        lvim.builtin.compe.source.tabnine = true
        lvim.builtin.compe.source.tabnine = { kind = " ", priority = 150, max_reslts = 6 }
    end

end

return M
