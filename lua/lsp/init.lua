vim.pack.add {
	Gh('neovim/nvim-lspconfig'),
}

require('lsp.lua')
require('lsp.rust')
require('lsp.nix')
require('lsp.qml')
