vim = vim

vim.keymap.set("n", "<Space>", "<NOP>", { noremap = true, silent = true })

vim.keymap.set("n", "<Leader>w", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>q", ":wq<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>W", ":W<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>Q", ":q!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<ESC>", "<cmd>noh<CR>", { noremap = true, silent = true })

-- vim.keymap.set("n", "<C-w>", ":bd<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-q>", ":q!<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-s>", ":w!<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<Leader>p", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>n", ":bnext<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<A-q>", ":bp|bd #<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<A-b>", "<cmd>execute'set showtabline=' . (&showtabline ==# 0 ? 2 : 0)<CR>", { noremap = true, silent = true })

vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

vim.keymap.set("n", "<Leader>-", "<cmd>wincmd s<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>\\", "<cmd>wincmd v<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<Leader>h", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>j", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>k", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>l", "<C-w>l", { noremap = true, silent = true })

vim.keymap.set("n", "<Leader>K", "<cmd>wincmd +<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>J", "<cmd>wincmd -<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>L", "<cmd>wincmd ><CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>H", "<cmd>wincmd <<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

vim.keymap.set("n", "<Up>", "<cmd>wincmd +<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Down>", "<cmd>wincmd -<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Right>", "<cmd>wincmd ><CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Left>", "<cmd>wincmd <<CR>", { noremap = true, silent = true })

vim.keymap.set("i", "<C-f>", "<Right>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-b>", "<Left>", { noremap = true, silent = true })

vim.keymap.set("n", "<Leader>v", "<C-w>v", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>s", "<C-w>s", { noremap = true, silent = true })

-- vim.keymap.set("n", "<Leader><S-Tab>", ":Lexplore %:p:h<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<Leader><Tab>", ":Lexplore<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>cd", ":cd %:h<CR>", { noremap = true, silent = false })

-- vim.keymap.set("n", "<Tab>", ":b ", { noremap = true, silent = false })
