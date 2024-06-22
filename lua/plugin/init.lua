
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
                ensure_installed = { }, -- Add any other LSP servers you need
                automatic_installation = true,
            }

            -- Automatically set up installed servers via mason-lspconfig
            local lspconfig = require('lspconfig')
            require('mason-lspconfig').setup_handlers {
                function(server_name)
                    lspconfig[server_name].setup {
                        capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
                    }
                end,
            }
            -- ESLint configuration
            require('lspconfig').eslint.setup {
                root_dir = require('lspconfig/util').root_pattern('.eslintrc', '.git', 'package.json')
            }
        end
    },
    -- LSPConfig
    { 'neovim/nvim-lspconfig' },
    -- Completion framework
    { 'hrsh7th/nvim-cmp' },
    -- LSP source for nvim-cmp
    { 'hrsh7th/cmp-nvim-lsp' },
    -- Snippet engine and snippet sources
    { 'hrsh7th/vim-vsnip' },
    { 'hrsh7th/cmp-vsnip' },
    -- Other useful completion sources
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
            local configs = require("nvim-treesitter.configs")
            local install = require("nvim-treesitter.install")
            install.compilers = {"zig"}

            configs.setup({
                -- yeah, don't do this.
                -- ensure_installed = "all",
                ensure_installed = {"vim", "vimdoc", "lua", "javascript", "html", "python"},
                -- especially on windows system, apparently it breaks? i still don't know why, possibly cmd
                -- will investigate, but for the moment installing sync works.
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },  
            })
        end
    },
    {
        "nvim-treesitter/playground",
        dependencies = { "nvim-treesitter/nvim-treesitter" }  -- Ensures load order
    },
    {
        "rebelot/kanagawa.nvim",
        config = function ()
            require('kanagawa').setup({
                transparent = true
            })
	end
    }
}
