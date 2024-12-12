return {
    {
        "williamboman/mason.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason-lspconfig.nvim",
            -- "jay-babu/mason-null-ls.nvim",
            -- "nvimtools/none-ls.nvim",
        },
        config = function()
            -- require("nvim-lspconfig").setup()
            require("mason").setup()
            require("mason-lspconfig").setup {
                ensure_installed = { "basedpyright","black", "isort", "prettier" },
                automatic_installation = true,
            }

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
                                    typeCheckingMode = "standard",
                                    diagnosticSeverityOverrides = {
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
