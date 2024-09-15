return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        event = "VeryLazy",
        config = function ()
            require('lualine').setup {
                options = {
                    theme = "catppuccin"
                    -- ... the rest of your lualine config
                }
            }
        end
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {}
    },
    {
        'lewis6991/gitsigns.nvim'
    }
}
