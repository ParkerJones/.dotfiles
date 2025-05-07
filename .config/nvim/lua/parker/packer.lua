-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use 'rebelot/kanagawa.nvim'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- LSPs
	use {
		'williamboman/mason.nvim',				-- LSP Installer
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig',
	}

	-- Autocomplete and Snippets
	use 'hrsh7th/nvim-cmp' 				-- Autocomplete
	use 'hrsh7th/cmp-nvim-lsp'			-- LSP Integration for Autocomplete
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'	-- Snippet Pack
	use 'saadparwaiz1/cmp_luasnip'
	use {
		'kkoomen/vim-doge', 			-- (Do)cument (Ge)nerator
		run = ':call doge#install()'
	}

end)
