vim = vim
map = vim.keymap.set
autocmd = vim.api.nvim_create_autocmd

vim.g.mapleader = " "

require("lazynvim")
require("setting")
require("mapping")
