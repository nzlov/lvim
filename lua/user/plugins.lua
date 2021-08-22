local M = {}

M.config = function()
  lvim.plugins = {
   { "LunarVim/Colorschemes"},
   {
      "ray-x/lsp_signature.nvim",
      config = function()
        require("user/lsp_signature").config()
      end,
      event = "InsertEnter",
    },
    {
      "ethanholz/nvim-lastplace",
      config = function()
        require("nvim-lastplace").setup {}
      end,
      event = "BufWinEnter",
      disable = not lvim.builtin.lastplace.active,
    },
    {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup()
      end,
      event = "BufRead",
    },
    {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup()
      end,
      cmd = "Trouble",
    },
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require("user.hop").config()
      end,
    },
    {
      "simrat39/symbols-outline.nvim",
      cmd = "SymbolsOutline",
    },
    {
      "sindrets/diffview.nvim",
      cmd = "DiffviewOpen",
    },
    {
      "lukas-reineke/indent-blankline.nvim",
      setup = function()
        require("user.indent_blankline").setup()
      end,
      event = "BufRead",
    },
    {
      "tzachar/compe-tabnine",
      run = "./install.sh",
      requires = "hrsh7th/nvim-compe",
      event = "InsertEnter",
      disable = not lvim.builtin.tabnine.active,
    },
    {
      "folke/twilight.nvim",
      config = function()
        require("user.twilight").config()
      end,
      event = "BufRead",
    },
    { "kevinhwang91/nvim-bqf", event = "BufRead" },
    {
      "rcarriga/nvim-dap-ui",
      config = function()
        require("dapui").setup()
      end,
      ft = { "go" },
      requires = { "mfussenegger/nvim-dap" },
      disable = not lvim.builtin.dap.active,
    },
    {
      "andymass/vim-matchup",
      event = "CursorMoved",
      config = function()
        vim.g.matchup_matchparen_offscreen = { method = "popup" }
      end,
    },
    {
      "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      ft = "markdown",
    },
    {
      "folke/zen-mode.nvim",
      config = function()
        require("user.zen").config()
      end,
      event = "BufRead",
    },
    {
      "windwp/nvim-spectre",
      event = "BufRead",
      config = function()
        require("user.spectre").config()
      end,
    },
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("user.colorizer").config()
      end,
      event = "BufRead",
    },
    {
      "kristijanhusak/orgmode.nvim",
      ft = { "org" },
      config = function()
        require("user.orgmode").setup {}
      end,
      disable = not lvim.builtin.orgmode.active,
    },
  }
end

return M
