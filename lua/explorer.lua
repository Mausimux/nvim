vim.pack.add{
	Gh('nvim-mini/mini.icons'),
	Gh('stevearc/oil.nvim'),
}

require('mini.icons').setup()
require('oil').setup()

vim.keymap.set('n', '<Leader>e', '<Cmd>Oil<CR>', {desc = 'Open parent directory'})
