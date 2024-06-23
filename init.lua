-- init.lua
-- vim.fn.setenv("CC", "zig cc")
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
vim.cmd("colorscheme kanagawa")
-- do not use when using other plugins.
-- require('transparent')
require('tabs')
