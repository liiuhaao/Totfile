vim = vim
map = vim.api.nvim_set_keymap
autocmd = vim.api.nvim_create_autocmd

vim.g.mapleader = " "

require("lazynvim")
require("keymappings")
require("settings")
