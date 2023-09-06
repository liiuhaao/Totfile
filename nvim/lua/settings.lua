vim.opt.mouse = "a"
vim.opt.encoding = "UTF-8"

-- vim.opt.termguicolors = true

vim.opt.updatetime = 1

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.undofile = true

vim.opt.scrolloff = 2
vim.opt.sidescrolloff = 15

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
vim.opt.copyindent = true
vim.opt.preserveindent = true

vim.opt.signcolumn = "yes:1"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 2
vim.opt.laststatus = 3

vim.opt.linespace = 0
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.wrap = true
vim.opt.breakindent = true

vim.opt.ruler = true
vim.opt.showmode = true
vim.opt.showcmd = true
vim.opt.title = true
vim.opt.conceallevel = 0
vim.opt.completeopt = "noinsert,menuone,noselect"
vim.opt.emoji = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 10
vim.opt.fillchars = {
    vert = "▕",
    fold = " ",
    eob = " ",
    diff = "─",
    msgsep = "‾",
    foldopen = "▾",
    foldclose = "▸",
    foldsep = "│",
}

vim.opt.showbreak = " "
vim.opt.background = "dark"

vim.opt.list = true
vim.opt.listchars = {
    tab = '▸\\',
    trail = '•',
    lead = ' ',
    extends = '»',
    precedes = '«',
    nbsp = '×',
    -- eol = ' ',
}
vim.o.clipboard = "unnamedplus"

vim.g.netrw_winsize = 20
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = "cp -r"
vim.g.netrw_altv = 1

vim.cmd([[syntax on]])
-- vim.cmd([[colorscheme habamax]])

--vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
--vim.cmd([[hi VertSplit guibg=NONE ctermbg=NONE]])
--vim.cmd([[hi Tablinefill guibg=NONE]])


-- Highlight on yank
autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({ timeout = 500 })
    end,
})

-- Set line number for help files.
local help_config = vim.api.nvim_create_augroup("help_config", { clear = true })
autocmd("FileType", {
    pattern = "help",
    callback = function()
        vim.opt.number = true
        vim.opt.relativenumber = true
        vim.opt.signcolumn = "no"
    end,
    group = help_config,
})

-- Use relative & absolute line numbers in 'n' & 'i' modes respectively
autocmd("InsertEnter", {
    callback = function()
        vim.opt.relativenumber = false
    end,
})
autocmd("InsertLeave", {
    callback = function()
        vim.opt.relativenumber = true
    end,
})

-- Open a file from its last left off position
autocmd("BufReadPost", {
    callback = function()
        if not vim.fn.expand("%:p"):match ".git" and vim.fn.line "'\"" > 1 and vim.fn.line "'\"" <= vim.fn.line "$" then
            vim.cmd "normal! g'\""
            vim.cmd "normal zz"
        end
    end,
})
