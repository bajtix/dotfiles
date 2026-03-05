require("config.lazy")

vim.wo.number = true
vim.wo.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.pumheight = 10
vim.o.termguicolors = true


vim.keymap.set('n', '<Up>', '<Nop>',    { noremap = true })
vim.keymap.set('n', '<Down>', '<Nop>',  { noremap = true })
vim.keymap.set('n', '<Left>', '<Nop>',  { noremap = true })
vim.keymap.set('n', '<Right>', '<Nop>', { noremap = true })
vim.keymap.set('i', '<C-j>', '<Esc>',   { noremap = true })
-- vim.keymap.set('i', '<C-k>', '<Esc>:q<CR>', { noremap = true })

vim.keymap.set('n', '<C-k>k', vim.lsp.buf.hover,       { noremap = true })
vim.keymap.set('n', '<C-k>j', vim.lsp.buf.definition,  { noremap = true })
vim.keymap.set('n', '<C-k>l', vim.lsp.buf.declaration, { noremap = true })
vim.keymap.set('n', '<C-k>h', vim.lsp.buf.code_action, { noremap = true })

vim.keymap.set('t', '<C-j>', '<C-\\><C-n>', { noremap = true })
vim.keymap.set('t', '<C-k>', '<C-c><C-\\><C-n>:q<CR>', { noremap = true })
-- vim.keymap.set('n', '<C-k>', '<C-c><C-\\><C-n>:q<CR>', { noremap = true })

vim.keymap.set('n', ';', require('fzf-lua').files, { noremap = true })
vim.keymap.set('n', '<C-p>', require('neoclip.fzf'), { noremap = true })

vim.keymap.set('n', '<F4>', require('nvim-tree.api').tree.toggle, { noremap = true })
vim.keymap.set('n', '<F5>', require('justice').select, { noremap = true })
vim.keymap.set('n', '<F6>', ':LazyGit<CR>', { noremap = true })


require('fzf-lua').register_ui_select()
vim.diagnostic.config({ virtual_text = true })

require('godot') --godot LSP support (custom lua script)
require('theme-stuff')
