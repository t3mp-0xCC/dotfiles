-- Editor
vim.o.ambiwidth = 'double'
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.wo.relativenumber = true

-- Key Bind
require "config/keymaps"

-- Files
vim.o.encoding = 'utf-8'
vim.scriptencoding = 'utf-8'
---- binary editor (TODO)

-- Visual
vim.o.number = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.wildmenu = true
vim.o.confirm = true
vim.o.showcmd = true
vim.o.showmatch = true
vim.o.matchtime = 1
vim.o.guifont = 'HackGenConsole'
---- cursol
vim.o.ruler = true
vim.o.cursorline = true
---- color
vim.o.termguicolors = true
vim.o.syntax = ""

-- Search
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true

-- Manipulation
vim.g.mapleader = ' '
vim.opt.clipboard:append{'unnamedplus'}
vim.o.ttimeout = true
vim.o.ttimeoutlen = 50

vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath('cache') .. '/undo'

-- lazy.nvim
require "lazy_nvim"
-- lsp
require "plugin/lsp"
require "plugin/whichkey"
