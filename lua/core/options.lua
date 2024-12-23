vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = false
vim.opt.autoread = true
vim.o.mouse = "a"
vim.opt.clipboard = "unnamedplus"

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
--vim.opt.expandtab = true

vim.cmd([[ set noswapfile ]])

--Line numbers
vim.wo.number = true
vim.cmd("set relativenumber")
