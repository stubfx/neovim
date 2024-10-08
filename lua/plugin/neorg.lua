return {
    {
        "nvim-neorg/neorg",
        version = "*",
        event = "VeryLazy",
        -- cmd = "Neorg",
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {},
                    ["core.concealer"] = {},
                    ["core.dirman"] = {
                        config = {
                            workspaces = {
                                notes = "~/notes",
                            },
                            default_workspace = "notes",
                        },
                    },
                },
            }
            vim.wo.foldlevel = 99
            vim.wo.conceallevel = 2
        end
    },
    {
        "dhruvasagar/vim-table-mode",
        config = function ()
            vim.api.nvim_create_autocmd('FileType', {
                pattern = { 'markdown', 'norg' },
                command = 'TableModeEnable',
            })
        end
    }
}
