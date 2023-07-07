-- This file can be loaded by calling `lua require('plugins')` from your init.vimpacka

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },
		}
	}
	-- Navigation
	use { -- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		run = function()
			pcall(require('nvim-treesitter.install').update { with_sync = true })
		end,
	}
	use('Theprimeagen/harpoon')
	use('nvim-lua/plenary.nvim')
	use('mbbill/undotree')
	use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }


	-- QOL
	use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
	use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically
	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup {
				icons = false,
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	})
	use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
	use("github/copilot.vim")
	-- use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }


	-- Git
	use 'tpope/vim-fugitive'
	use 'lewis6991/gitsigns.nvim'

	-- Design
	use { "ellisonleao/gruvbox.nvim" }
	use 'nvim-lualine/lualine.nvim' -- Fancier statusline


	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
