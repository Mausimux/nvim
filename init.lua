-- Indentation
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2


-- Numbers
vim.opt.number = true
vim.opt.relativenumber = true


-- List chars (Whitespace visualization)
vim.opt.list = true
vim.opt.listchars = {
	tab = "> ",
	multispace = "·",
	lead = "·",
	trail = "·",
	nbsp = "+",
}


-- Share clipboard with OS
vim.opt.clipboard = "unnamedplus"


-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j"<CR>')


-- Highlight when yanking
vim.api.nvim_create_autocmd({ 'TextYankPost' }, {
	callback = function() vim.hl.on_yank() end,
})


-- Highlight the line the cursor is on
vim.opt.cursorline = true


-- Enabling undo/redo even after reopening
vim.opt.undofile = true


-- Confirm dialog for unsaved changes
vim.opt.confirm = true


-- Clear search highlights
vim.keymap.set("n", "<Esc>", '<cmd>nohlsearch<CR>')


-- Netrw explorer
vim.g.netrw_liststyle = 3


-- Plugin helpers
local gh = function(repo) return 'https://github.com/' .. repo end

local plugin = function(spec)
	vim.pack.add{
		spec
	}
	return require(spec.name)
end


-- Keybindings popup
plugin{ src = gh('folke/which-key.nvim'), name = 'which-key'}.setup()

-- LSP
vim.pack.add {
	gh('neovim/nvim-lspconfig'),
	gh('mason-org/mason.nvim'),
	gh('mason-org/mason-lspconfig.nvim'),
}

require('mason').setup()
require('mason-lspconfig').setup()
