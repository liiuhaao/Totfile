return {
    {
        "olimorris/onedarkpro.nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("onedarkpro").setup({
                options = {
                    transparency = true
                },
            })
        end
    },
    {
        "neanias/everforest-nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("everforest").setup({
                transparent_background_level = 1,
                italics = true,
            })
        end,
    },
}
