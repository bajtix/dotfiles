return {{
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  config = true
  -- use opts = {} for passing setup options
  -- this is equivalent to setup({}) function
}, {
  "AckslD/nvim-neoclip.lua",
  dependencies = {
    -- you'll need at least one of these
    {'ibhagwan/fzf-lua'},
  },
  config = function()
    require('neoclip').setup({})
  end,
}, {
  "swaits/universal-clipboard.nvim",
  opts = {},
}, {
  "chrisgrieser/nvim-justice",
  opts = {
    recipeModes = {
	  streaming = { -- useful for progress bars (requires `snacks.nvim`)
        name = { "download" },
        comment = { "streaming", "curl" }, -- comment contains "streaming" or "curl"
	  },
      terminal = { -- useful for recipes with input
        name = { "." },
        comment = {},
      },
      quickfix = {
          name = { "%-qf$" }, -- name ending with "-qf"
          comment = { "quickfix" },
      },
      ignore = { -- hides them from the nvim-justice selection window
          name = {},
          comment = {},
      },
	},
  }
}, {
  "norcalli/nvim-colorizer.lua"
}}
