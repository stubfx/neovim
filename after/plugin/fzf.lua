-- local fzf_lua = require('fzf-lua')

-- Keybindings
vim.api.nvim_set_keymap('n', '<leader>pf', ':FzfLua files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':FzfLua git_files<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>ps', ':lua require("fzf-lua").grep_cword()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>ps', ':lua require("fzf-lua").grep_visual()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ps', ':lua require("fzf-lua").grep()<CR>', { noremap = true, silent = true })

