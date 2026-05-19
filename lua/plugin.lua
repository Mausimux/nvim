-- Plugin helpers
Gh = function(repo) return 'https://github.com/' .. repo end


-- Keybindings popup
vim.pack.add{ Gh('folke/which-key.nvim') }
require('which-key').setup()
