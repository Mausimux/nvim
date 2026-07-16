vim.pack.add{ Gh('rachartier/tiny-inline-diagnostic.nvim') }

require('tiny-inline-diagnostic').setup({
    options = {
        multilines = {
            enabled = true,
            always_show = true,
        },
    },
})

vim.diagnostic.config({ virtual_text = false })
