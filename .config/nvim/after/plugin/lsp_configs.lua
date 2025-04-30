require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = {
		'lua_ls',
		'html',
		'cssls',
		'ts_ls',
	}
})

vim.lsp.enable({
	'lua_ls',
	'html',
	'cssls',
	'ts_ls',
})

vim.filetype.add({
	extension = {
		ejs = 'html'
	}
});
