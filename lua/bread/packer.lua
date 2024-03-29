-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use ({
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	})

	use ({
		"ellisonleao/gruvbox.nvim"
	})

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use( 'nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	--use('tpope/vimfugitive')

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets`
			{'L3MON4D3/LuaSnip'},
			-- Snippet Collection (Optional)
			{'rafamadriz/friendly-snippets'},
		}
	}


	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	use( 'vim-airline/vim-airline')
	use('vim-airline/vim-airline-themes')
	use('ms-jpq/coq_nvim')
end)
