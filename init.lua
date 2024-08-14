-- init.lua
vim.o.exrc = true
vim.o.secure = true
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.cmd('language en_US')
-- Bootstrap lazy.nvim (if not already done)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Setup plugins with lazy.nvim
require('lazy').setup("plugin")

vim.wo.number = true
vim.wo.relativenumber = true
vim.o.wrap = false
vim.cmd.colorscheme "catppuccin"
-- Set tab width to 4 spaces
vim.o.tabstop = 4
-- Set indentation width to 4 spaces
vim.o.shiftwidth = 4
-- Use spaces instead of tabs
vim.o.expandtab = true
-- Always case insensitive search
vim.opt.ignorecase = true
-- Case sensitive if uppercase letter is present in search
vim.opt.smartcase = true
-- Set the color column at the 80th character
vim.opt.colorcolumn = "80"
vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*",
    command = "w"
})

