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
	use 'EtiamNullam/deferred-clipboard.nvim'
end)

