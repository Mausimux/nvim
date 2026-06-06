vim.g.mapleader = ' '

Gh = function(repo) return 'https://github.com/' .. repo end

vim.opt.clipboard = "unnamedplus"
vim.opt.confirm = true
vim.opt.cursorline = true
vim.keymap.set("n", "<Esc>", '<cmd>nohlsearch<CR>')

require('indent')
require('line_numbers')
require('whitespace')
require('arrow_keys')
require('highlight_yank')
require('lsp')
require('finder')
require('explorer')
require('whichkey')


