vim.opt.mouse               = "a"
vim.opt.encoding            = "UTF-8"

vim.opt.background          = "dark"
vim.opt.syntax              = "enable"
vim.opt.termguicolors       = true
vim.opt.updatetime          = 1

vim.opt.backup              = false
vim.opt.swapfile            = false
vim.opt.writebackup         = false
vim.opt.undofile            = true

vim.opt.scrolloff           = 2
vim.opt.sidescrolloff       = 15

vim.opt.ignorecase          = true
vim.opt.smartcase           = true
vim.opt.hlsearch            = true
vim.opt.incsearch           = true
vim.opt.showmatch           = true
vim.opt.wrapscan            = true
vim.opt.inccommand          = "nosplit"

vim.opt.backup              = false
vim.opt.writebackup         = false
vim.opt.swapfile            = false
vim.opt.autoread            = true

vim.opt.tabstop             = 4
vim.opt.softtabstop         = 4
vim.opt.shiftwidth          = 4
vim.opt.shiftround          = true
vim.opt.expandtab           = true
vim.opt.smarttab            = true

vim.opt.autoindent          = true
vim.opt.smartindent         = true
vim.opt.copyindent          = true
vim.opt.preserveindent      = true

vim.opt.signcolumn          = "yes:1"
vim.opt.number              = true
vim.opt.relativenumber      = true
vim.opt.numberwidth         = 2
vim.opt.laststatus          = 3
vim.opt.cmdheight           = 0

vim.opt.linespace           = 0
vim.opt.cursorline          = true
vim.opt.cursorcolumn        = true
vim.opt.wrap                = true
vim.opt.breakindent         = true

vim.opt.ruler               = true
vim.opt.showmode            = true
vim.opt.showcmd             = true
vim.opt.title               = true
vim.opt.conceallevel        = 0
vim.opt.completeopt         = "noinsert,menuone,noselect"
vim.opt.emoji               = true

vim.opt.splitbelow          = true
vim.opt.splitright          = true

vim.opt.foldmethod          = "expr"
vim.opt.foldexpr            = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart      = 999
vim.opt.fillchars           = {
    vert = "▕",
    fold = " ",
    eob = " ",
    diff = "─",
    msgsep = "‾",
    foldopen = "▾",
    foldclose = "▸",
    foldsep = "│",
}

vim.opt.showbreak           = '↪'

vim.opt.list                = true
vim.opt.listchars           = {
    tab = '▸\\',
    trail = '•',
    lead = ' ',
    extends = '»',
    precedes = '«',
    nbsp = '×',
    -- eol = ' ',
}
vim.opt.clipboard             = "unnamedplus"

vim.g.netrw_winsize         = 20
vim.g.netrw_banner          = 0
vim.g.netrw_liststyle       = 3
vim.g.netrw_keepdir         = 0
vim.g.netrw_localcopydircmd = "cp -r"
vim.g.netrw_altv            = 1

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '󰌵',
            [vim.diagnostic.severity.INFO] = '',
        },
        linehl = {
            -- [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
            -- [vim.diagnostic.severity.WARN] = 'WarningMsg',
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
            [vim.diagnostic.severity.WARN] = 'WarningMsg',
        },
    },
    update_in_insert = true,
    severity_sort = true,
})


