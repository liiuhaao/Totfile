return {
    {
        -- "sainnhe/gruvbox-material",
        -- "sainnhe/everforest",
        -- "neanias/everforest-nvim",
        -- "navarasu/onedark.nvim",
        "olimorris/onedarkpro.nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("onedarkpro").setup({
                options = {
                    transparency = true
                },
            })
            vim.cmd("colorscheme onedark")
        end,
    }
}
