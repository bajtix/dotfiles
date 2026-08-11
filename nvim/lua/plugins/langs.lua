return {{
    "https://github.com/zenc-lang/zenc.vim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
        vim.lsp.config('zenc', {
          cmd = { 'zc', 'lsp' },
          filetypes = { 'zenc', 'zc' },
          root_dir = vim.fs.root(0, {'.git', 'build.bat', 'Makefile'}),
          settings = {},
        })

        vim.lsp.enable('zenc')
    end,
}, {
    dir = "~/.config/nvim/external/avalonia.nvim",
    opts = {
        cmd = { "/home/bajtix/random-gits/ls-for-avalonia/bin/lsp/AvaloniaLanguageServer" }
    }
}}
