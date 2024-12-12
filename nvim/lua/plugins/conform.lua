return{
    'stevearc/conform.nvim',
    config = function()
        require('conform').setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "isort", "black" },
                rust = { "rustfmt", lsp_format = "fallback" },
                javascript = { "prettierd", "prettier", stop_after_first = true },
            },

            format_on_save = {
                lsp_format = "fallback",
            },

        })
        require("conform").formatters.black = {
            prepend_args = { "--line-length", "200" },
        }

    end,

}