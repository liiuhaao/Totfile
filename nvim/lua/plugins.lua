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
        "ellisonleao/gruvbox.nvim",
        requires = { "rktjmp/lush.nvim" },
    })

    use({
        "neovim/nvim-lspconfig",
        config = function()
            require("config.nvim-lspconfig")
        end,
    })

    use({
        "jose-elias-alvarez/null-ls.nvim",
        requires = {
            use("nvim-lua/plenary.nvim"),
        },
        config = function()
            require("config.null-ls")
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
            { "L3MON4D3/LuaSnip" },
            { "saadparwaiz1/cmp_luasnip" },
            { "rafamadriz/friendly-snippets" },
            { "andersevenrud/cmp-tmux" },
        },
        config = function()
            require("config.nvim-cmp")
        end,
    })

    use({
        "nvim-treesitter/nvim-treesitter",
        requires = {
            { "p00f/nvim-ts-rainbow" },
            { "windwp/nvim-ts-autotag" },
            { "andymass/vim-matchup" },
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
        config = function()
            require("config.indent-blankline")
        end,
    })

    use({
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
    })

    use({
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
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
        "vijaymarupudi/nvim-fzf",
        requires = {
            use("ibhagwan/fzf-lua"),
        },
        config = function()
            require("config.fzf")
        end,
    })

    use({
        "noib3/nvim-cokeline",
        config = function()
            require("config.cokeline")
        end,
    })

    use({
        "goolord/alpha-nvim",
        config = function()
            require("alpha").setup(require("alpha.themes.startify").opts)
        end,
    })

    use({
        "kyazdani42/nvim-tree.lua",
        config = function()
            require("config.nvim-tree")
        end,
    })

    use({
        "is0n/fm-nvim",
        config = function()
            require("config.fm-nvim")
        end,
    })

    -- use({
    --     "sidebar-nvim/sidebar.nvim",
    --     branch = "dev",
    --     config = function()
    --         require("config.sidebar")
    --     end,
    -- })

    use({
        "dccsillag/magma-nvim",
        run = ":UpdateRemotePlugins",
        config = function()
            require("config.magma-nvim")
        end,
    })

    use({
        "aserowy/tmux.nvim",
        config = function()
            require("config.tmux")
        end,
    })
end)
