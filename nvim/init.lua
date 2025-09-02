-- Load all the plugins
require('plugins') -- the manager
require("nvim-tree").setup()

vim.wo.number = true
vim.wo.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.pumheight = 10

vim.keymap.set('n', '<Up>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Down>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Left>', '<Nop>', { noremap = true })
vim.keymap.set('n', '<Right>', '<Nop>', { noremap = true })
vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })

vim.keymap.set('t', 'jj', '<C-\\><C-n>', { noremap = true })
vim.keymap.set('t', 'mm', 'make<CR>', { noremap = true })
vim.keymap.set('t', 'kk', '<C-c><C-\\><C-n>:q<CR>', { noremap = true })

vim.keymap.set('n', '<C-k>k', ':LspHover<CR>', {noremap = true})
vim.keymap.set('n', '<C-k>j', ':LspPeekDefinition<CR>', {noremap = true})
vim.keymap.set('n', '<C-k>l', ':LspPeekTypeDefinition<CR>', {noremap = true})
-- build macro
vim.keymap.set('n', '<F5>', ':split<CR><C-w>j:term<CR>i make<CR>', { noremap = true })

vim.cmd('colorscheme unokai')
--vim.cmd('highlight Normal guibg=#000000')
vim.cmd('highlight Visual guifg=#605b5b guibg=#fafafa')
vim.cmd('highlight NvimTreeFolderName guifg=#c98082 gui=bold') 
vim.cmd('highlight NvimTreeEmptyFolderName guifg=#c98082 gui=bold') 
vim.cmd('highlight NvimTreeSymlinkFolderName guifg=#c98082 gui=bold') 
vim.cmd('highlight NvimTreeOpenedFolderName guifg=#a06b6c gui=bold') 

-- Set up nvim-tree
require('nvim-tree').setup {
	view = {
		side = "right",
		width = 35
	},
}

vim.keymap.set('n', '<C-b>', require("nvim-tree.api").tree.focus, { noremap = true })


-- Set up telescope
local telescope_b = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', telescope_b.find_files, { desc = 'Telescope find files' })

-- vim.lsp.set_log_level('debug')

require('deferred-clipboard').setup {
  fallback = 'unnamedplus', -- or your preferred setting for clipboard
}

-- Set up nvim-cmp.
local cmp = require('cmp')

cmp.setup({
	completion = {
		keyword_length = 3,
	},
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
		      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		end,
	},
	window = {
	  -- completion = cmp.config.window.bordered(),
	  -- documentation = cmp.config.window.bordered(),
	},

	mapping = cmp.mapping.preset.insert({
		-- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
		-- ['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' }, -- For vsnip users.
		{ name = 'path' },
	}) 
})

  -- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
  -- Set configuration for specific filetype.
  --[[ cmp.setup.filetype('gitcommit', {
	sources = cmp.config.sources({
	  { name = 'git' },
	}, {
	  { name = 'buffer' },
	})
 })
 require("cmp_git").setup() ]]-- 

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	}),
	matching = { disallow_symbol_nonprefix_matching = false }
})

-- Set up lspconfig completions
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['clangd'].setup {
	capabilities = capabilities,
	cmd = {"clangd", "--background-index", "--function-arg-placeholders=false"}
}

require('lspconfig')['v-analyzer'].setup {
	capabilities = capabilities
}
-- ------------------

require('nvim-treesitter.configs').setup {
	ensure_installed = { "c", "lua", "vim","markdown_inline" },
	highlight = {
		enable = true,
	},
}

require('cord').setup {
	display = {
		view = 'asset',
	}
}

require("mason").setup()
require("mason-lspconfig").setup()
require('Comment').setup()
