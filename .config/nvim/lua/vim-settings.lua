local g = vim.g
local cmd = vim.cmd
local o, wo = vim.o, vim.wo
local api = vim.api

g.mapleader = " "

o.clipboard = "unnamedplus"
o.shiftwidth = 4
o.termguicolors = true
g.tokyonight_style = "storm"
cmd[[colorscheme tokyonight]]

-- Hybrid relative and absolute line numbers
wo.number = true
wo.relativenumber = true
