return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-tree/nvim-tree.lua',
  		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
  		},
	}
	use {
		'OmniSharp/omnisharp-vim',
		requires = {
			'hrsh7th/vim-vsnip-integ',
		},
	}
	use 'hrsh7th/vim-vsnip'
	use 'rafamadriz/friendly-snippets'
	use 'prabirshrestha/vim-lsp'
	use 'mattn/vim-lsp-settings'
	use 'neovim/nvim-lspconfig'
	use 'mason-org/mason-lspconfig.nvim'
	use 'EtiamNullam/deferred-clipboard.nvim'

	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-vsnip',
		}
	}
	use 'nvim-treesitter/nvim-treesitter'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'vyfor/cord.nvim',
		run = ':Cord update',
	}
	use 'mason-org/mason.nvim'
	use 'numToStr/Comment.nvim'

	-- languages 
	use 'ollykel/v-vim'
	use '~/.config/nvim/c3-vim'
end)

