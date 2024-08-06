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

            -- Key mappings for LSP functions
            local opts = { noremap=true, silent=true }
            vim.api.nvim_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
            vim.api.nvim_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
            vim.api.nvim_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
            vim.api.nvim_set_keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)

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
                -- root_dir = function () return vim.fn.getcwd() end,
                cmd = { "clangd", "--compile-commands-dir=D:/EpicGames/UE_5.4" },
                -- cmd = { "clangd", "--compile-commands-dir=" .. function () return vim.fn.getcwd() end },
            }
        end
    },
    -- LSPConfig
    { 'neovim/nvim-lspconfig' }
}
