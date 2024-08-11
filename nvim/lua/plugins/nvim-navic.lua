return {
    "SmiteshP/nvim-navic",
    config = function()
        require("nvim-navic").setup {
            -- highlight = true,
        }
        -- vim.api.nvim_set_hl(0, "<all NavicIcons* group names>", { bg = "NONE", fg = "#5a93aa" })
        -- vim.api.nvim_set_hl(0, "NavicText", { bg = "NONE"})
        -- vim.api.nvim_set_hl(0, "NavicSeparator", { bg = "NONE"})
    end
}
