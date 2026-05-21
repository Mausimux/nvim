vim.pack.add {
	Gh('neovim/nvim-lspconfig'),
	Gh('mason-org/mason.nvim'),
	Gh('mason-org/mason-lspconfig.nvim')
}

require('mason').setup()
require('mason-lspconfig').setup()

