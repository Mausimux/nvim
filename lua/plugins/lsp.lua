vim.pack.add {
	Gh('neovim/nvim-lspconfig'),
}

-- Load Neovim's Lua API for both most popular Lua LSPs
vim.lsp.config('emmylua_ls', {
	on_init = function(client)
		if client.workspace_folders then
			local path = client.workspace_folders[1].name
			if path ~= vim.fn.stdpath('config') and (vim.uv.fs_stat(path .. '/.emmyrc.json') or vim.uv.fs_stat(path .. '/.luarc.json'))
				then return end
			end

		client.config.settings.emmylua = vim.tbl_deep_extend('force', client.config.settings.emmylua or {}, {
			runtime = {
				version = 'LuaJIT',
				path = {
					'lua/?.lua',
					'lua/?/init.lua'
				},
			},
			workspace = { library = vim.api.nvim_get_runtime_file('', true) }
		})
	end,
})


vim.lsp.config('lua_ls', {
	on_init = function(client)

		if client.workspace_folders then
			local path = client.workspace_folders[1].name
			if path ~= vim.fn.stdpath('config') and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
			then return end
		end

		client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
			runtime = {
				version = 'LuaJIT',
				path = {
					'lua/?.lua',
					'lua/?/init.lua'
				},
			},
			workspace = { library = vim.api.nvim_get_runtime_file('', true) },
		})
	end,
})

