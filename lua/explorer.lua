vim.pack.add{
	Gh('nvim-mini/mini.icons'),
	Gh('stevearc/oil.nvim'),
}

require('mini.icons').setup()
require('oil').setup()

vim.keymap.set('n', '<Leader>e', '<Cmd>e .<CR>', {desc = 'Open project root directory'})
