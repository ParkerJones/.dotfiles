require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = {
		'lua_ls',
		'ts_ls'
	}
})

-- local lspconfig = require('lspconfig')
-- lspconfig.lua_ls.setup({})
vim.lsp.enable({
	'lua_ls',
	'ts_ls'
})
