-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "aurora"
-- lvim.log.level = "debug"

vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.timeoutlen = 200

-- Builtin
-- =========================================
require("user.builtin").config()

-- Langs
-- =========================================
require("user.langs").config()

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Autocommands
-- =========================================
require("user.autocommands").config()

-- Additional keybindings
-- =========================================
require("user.keybindings").config()

