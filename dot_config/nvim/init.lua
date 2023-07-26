-- Editor
vim.o.ambiwidth = 'double'
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

-- Key Bind
require "config/keymaps"

-- Files
vim.o.encofing = 'utf-8'
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
vim.o.syntax = true

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

plugins = require('plugins')

require("lazy").setup(plugins)

-- lsp
require "config/lsp"
require "config/whichkey"
