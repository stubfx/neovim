return {
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
    }
}
