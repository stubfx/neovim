return {
    -- Mason and Mason-LSPConfig
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig' },
        event = "VeryLazy",
        config = function()
            require('mason-lspconfig').setup {
                ensure_installed = { "lua_ls" }, -- Add any other LSP servers you need
                automatic_installation = true,
            }

            -- Automatically set up installed servers via mason-lspconfig
            local lspconfig = require('lspconfig')
            require('mason-lspconfig').setup_handlers {
                function(server_name)
                    lspconfig[server_name].setup {
                        capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
                        -- root_dir = require('lspconfig/util').root_pattern('.eslintrc', '.git', 'package.json')
                        root_dir = function () return vim.fn.getcwd() end,
                    }
                end,
            }

            lspconfig.lua_ls.setup {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {'vim'},
                        },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                            -- userThirdParty = {
                            --     "C:\\Users\\lucam\\Desktop\\fivem\\library"
                            -- },
                        },
                    },
                },
            }

            lspconfig.clangd.setup{
                cmd = { "clangd", "--compile-commands-dir=D:/EpicGames/UE_5.4" },
                -- cmd = { "clangd", "--compile-commands-dir=" .. function () return vim.fn.getcwd() end },
                settings = {
                    clangd = {
                        onConfigChanged = "restart",
                    }
                }
            }


            lspconfig.ts_ls.setup {
                settings = {
                    javascript = {
                        suggest = {
                            completeFunctionCalls = true,
                        }
                    }
                }
            }

            lspconfig.pylsp.setup {
                settings = {
                    pylsp = {
                        plugins = {
                            pycodestyle = {
                                enabled = true
                            }
                        }
                    }
                }
            }

            lspconfig.glsl_analyzer.setup{}


        end
    },
    -- LSPConfig
    { 'neovim/nvim-lspconfig' }
}
