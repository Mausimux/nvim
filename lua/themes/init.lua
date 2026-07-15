require('themes.catppuccin')
require('themes.kanagawa')
require('themes.tokyonight')
require('themes.nightfox')

vim.keymap.set("n", "<leader>uC",
	function()
	require("telescope.builtin").colorscheme{
		enable_preview = true,
		ignore_builtins = true,
	}
	end,
	{ desc = "Telescope: Colorscheme (live preview)" }
)

vim.cmd('colorscheme carbonfox')
