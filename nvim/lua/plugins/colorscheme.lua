return {
    {
        -- "sainnhe/gruvbox-material",
        -- "sainnhe/everforest",
        "neanias/everforest-nvim",
        -- "navarasu/onedark.nvim",
        -- "olimorris/onedarkpro.nvim",
        -- lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        -- priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("everforest").setup({
                transparent_background_level = 1,
                background = "hard",
                italics = true,
            })
            vim.cmd("colorscheme everforest")
            -- vim.cmd("colorscheme onedark")
        end,
    }
}
