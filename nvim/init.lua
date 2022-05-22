vim = vim
map = vim.api.nvim_set_keymap
autocmd = vim.api.nvim_create_autocmd

require("plugins")
require("keymappings")
require("settings")
