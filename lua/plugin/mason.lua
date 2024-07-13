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

            -- Function to set key mappings after LSP attaches to a buffer
            -- local on_attach = function(client, bufnr)
            --     local bufopts = { noremap=true, silent=true, buffer=bufnr }
            --     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', bufopts)
            --     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', bufopts)
            --     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', bufopts)
            --     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gti', '<cmd>lua vim.lsp.buf.implementation()<CR>', bufopts)
            --     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gtd', '<cmd>lua vim.lsp.buf.type_definition()<CR>', bufopts)
            --     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', bufopts)
            --     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', bufopts)
            --     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', bufopts)
            --     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', bufopts)
            -- end

            -- Automatically set up installed servers via mason-lspconfig
            local lspconfig = require('lspconfig')
            require('mason-lspconfig').setup_handlers {
                function(server_name)
                    lspconfig[server_name].setup {
                        capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
                        root_dir = require('lspconfig/util').root_pattern('.eslintrc', '.git', 'package.json')
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
        end
    },
    -- LSPConfig
    { 'neovim/nvim-lspconfig' }
}
