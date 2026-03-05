return {{
  "mason-org/mason.nvim",
  opts = {}
},{
  "neovim/nvim-lspconfig",
},{
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    }
},{
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      gdscript = { "gdformat" }
    }
  },
},{
  "LittleEndianRoot/mason-conform",
  opts = {
    automatic_installation = false
  },
  dependencies = {
    "mason-org/mason.nvim",
    "stevearc/conform.nvim"
  }
},{
  "mfussenegger/nvim-lint",
  config = function()
    require('lint').linters_by_ft = {
      gdscript = { "gdlint" }
    }
  end
  
},{
  "rshkarin/mason-nvim-lint",
  opts = {
    automatic_installation = false
  },
  dependencies = {
    "mason-org/mason.nvim",
    "mfussenegger/nvim-lint"
  }
}}
