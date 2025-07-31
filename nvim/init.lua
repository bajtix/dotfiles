-- Load all the plugins
-- p> 
require('plugins') -- the manager
require("nvim-tree").setup()

vim.wo.number = true
vim.wo.relativenumber = true

vim.cmd('noremap <Up> <Nop>')
vim.cmd('noremap <Down> <Nop>')
vim.cmd('noremap <Left> <Nop>')
vim.cmd('noremap <Right> <Nop>')

vim.cmd('inoremap jj <Esc>')

vim.cmd('tnoremap jj <C-\\><C-n>')
vim.cmd('noremap <C-b> :NvimTreeFocus<CR>')
vim.cmd('colorscheme unokai')

vim.lsp.set_log_level('debug')
