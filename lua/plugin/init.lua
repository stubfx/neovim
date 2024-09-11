return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function ()
            require('catppuccin').setup {
                transparent_background = true, -- disables setting the background color.
            }
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
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
        "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}
    },
    {
        'lewis6991/gitsigns.nvim'
    }
}
