vim.pack.add {
	Gh('neovim/nvim-lspconfig'),
}

require('plugins.lsp.lua')
require('plugins.lsp.rust')
