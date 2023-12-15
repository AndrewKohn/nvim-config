vim.o.termguicolors = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Make line numbers default
vim.wo.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"

-- indentations
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- amount of lines kept when scrolling off page
vim.opt.scrolloff = 8

-- keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- clipboard
vim.o.clipboard = 'unnamedplus'
