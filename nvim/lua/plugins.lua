local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
    execute("packadd packer.nvim")
end
local use = require("packer").use

return require("packer").startup(function()
    use({
        "wbthomason/packer.nvim",
    })

    use({
        "neovim/nvim-lspconfig",
        config = function()
            require("config.nvim-lspconfig")
        end,
    })

    use({
        "williamboman/mason-lspconfig.nvim",
        requires = {
            "williamboman/mason.nvim",
        },
        config = function()
            require("config.mason")
        end,
    })

    use({
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                suggestion = { enabled = false },
                panel = { enabled = false },
            })
        end,
    })

    use({
        "hrsh7th/nvim-cmp",
        requires = {
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-cmdline" },
            { "hrsh7th/cmp-calc" },
            { "hrsh7th/cmp-emoji" },
            { "kdheepak/cmp-latex-symbols" },
            { "hrsh7th/cmp-nvim-lsp-signature-help" },
            { "L3MON4D3/LuaSnip" },
            { "saadparwaiz1/cmp_luasnip" },
            { "rafamadriz/friendly-snippets" },
            { "andersevenrud/cmp-tmux" },
        },
        config = function()
            require("config.nvim-cmp")
        end,
    })

    use {
        "zbirenbaum/copilot-cmp",
        after = { "copilot.lua" },
        config = function()
            require("copilot_cmp").setup()
        end
    }

    use({
        "nvim-treesitter/nvim-treesitter",
        requires = {
            { "p00f/nvim-ts-rainbow" },
            { "windwp/nvim-ts-autotag" },
        },
        config = function()
            require("config.treesitter")
        end,
    })

    use({
        "kyazdani42/nvim-web-devicons",
    })

    use({
        "xiyaowong/nvim-cursorword",
    })

    use({
        "lukas-reineke/indent-blankline.nvim",
    })

    use({
        "terrortylor/nvim-comment",
        config = function()
            require("nvim_comment").setup()
        end,
    })

    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({
                enable_check_bracket_line = false,
            })
        end,
    })

    use({
        "is0n/fm-nvim",
        config = function()
            require("config.fm-nvim")
        end,
    })

    use({
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } },
        config = function()
            require("config.telescope")
        end,
    })


    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require 'alpha'.setup(require 'alpha.themes.startify'.config)
        end
    }
end)
