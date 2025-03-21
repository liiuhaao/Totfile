return {
    {
        "williamboman/mason.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
            "jay-babu/mason-null-ls.nvim",
            "nvimtools/none-ls.nvim",
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup {
                ensure_installed = { "basedpyright" },
                automatic_installation = true,
            }
            require("mason-null-ls").setup({
                ensure_installed = { "black", "isort", "prettier" }
            })
            require("null-ls").setup({
                sources = {
                    require("null-ls").builtins.formatting.black.with({
                        extra_args = function(params)
                            return { "--line-length", 200 }
                        end,
                    }),
                    require("null-ls").builtins.formatting.isort,
                    require("null-ls").builtins.formatting.prettier,
                },
            })

            local capabilities = vim.lsp.protocol.make_client_capabilities()
            require("mason-lspconfig").setup_handlers {
                function(server_name)
                    local opts = { capabilities = capabilities }
                    if server_name == "basedpyright" then
                        opts.settings = {
                            python = {
                                pythonPath = vim.fn.exepath("python"),
                            },
                            basedpyright = {
                                analysis = {
                                    typeCheckingMode = "basic",
                                    diagnosticSeverityOverrides = {
                                        reportOptionalIterable = "warning",
                                        reportAttributeAccessIssue = false,
                                        reportPossiblyUnboundVariable = false,
                                        reportOptionalSubscript = false,
                                        reportArgumentType = false,
                                    },
                                }
                            }
                        }
                    end
                    opts.on_attach = function(client, bufnr)
                        require("nvim-navic").attach(client, bufnr)
                    end
                    require("lspconfig")[server_name].setup(opts)
                end,
            }
        end,
    },
}
