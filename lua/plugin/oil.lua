return {
    {
        'stevearc/oil.nvim',
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
        config = function ()
            require("oil").setup({})
            vim.api.nvim_set_keymap("n", "<leader>pv", ":Oil<CR>", {noremap = true, silent = true})
        end
    }
}
