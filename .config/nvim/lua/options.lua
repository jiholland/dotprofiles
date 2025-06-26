-- ~/.config/nvim/lua/options.lua

local g = vim.g

g.mapleader = " "
g.maplocalleader = " "

g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0

local opt = vim.opt

opt.background = none
opt.confirm = true
opt.expandtab = true
opt.guicursor = ""
opt.ignorecase = true
opt.laststatus = 1
opt.mouse = ""
opt.number = true
opt.relativenumber = true
opt.scrolloff = 5
opt.shiftwidth = 2
opt.signcolumn = "yes"
opt.smartcase = true
opt.softtabstop = 2
opt.tabstop = 2
opt.termguicolors = true
opt.timeoutlen = 300
opt.undofile = true
opt.updatetime = 200
opt.wrap = false
