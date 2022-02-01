vim.opt.mouse = "a"
vim.opt.encoding = "UTF-8"

vim.opt.updatetime = 1
vim.opt.swapfile = false
vim.opt.ruler = true
vim.opt.scrolloff = 2
vim.opt.sidescrolloff = 15
vim.opt.termguicolors = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.showmatch = true
vim.opt.wrapscan = true
vim.opt.inccommand = "nosplit"

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.autoread = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.signcolumn = "no"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus = 0

vim.opt.linespace = 0
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.showmode = true
vim.opt.showcmd = true
vim.opt.title = false
vim.opt.conceallevel = 0
vim.opt.completeopt = "noinsert,menuone,noselect"
vim.opt.emoji = true

vim.opt.splitbelow = true
vim.opt.splitright = false

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 10

vim.opt.showbreak = "﬌"
vim.opt.background = "dark"

vim.opt.list = true
vim.opt.listchars:append("tab:▸\\")
vim.opt.listchars:append("trail:•")
vim.opt.listchars:append("precedes:←")
vim.opt.listchars:append("extends:→")
-- vim.opt.listchars:append("space:.")
vim.opt.listchars:append("eol:")
vim.o.clipboard = "unnamedplus"

vim.g.netrw_winsize = 20
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = "cp -r"
vim.g.netrw_altv = 1
vim.cmd([[hi! link netrwMarkFile Search]])

vim.opt.autochdir = false

vim.cmd([[highlight IndentBlanklineContextChar guifg=#fb4934 gui=nocombine]])
vim.cmd([[syntax on]])
vim.cmd([[colorscheme gruvbox]])
vim.cmd([[hi! Normal guibg=NONE]])
vim.cmd([[au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=500, on_visual=true}]])
vim.cmd([[filetype plugin on]])
