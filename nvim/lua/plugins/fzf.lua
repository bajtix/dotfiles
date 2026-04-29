return {{
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "nvim-mini/mini.icons" },
  ---@module "fzf-lua"
  ---@type fzf-lua.Config|{}
  ---@diagnostic disable: missing-fields
  opts = {},
  ---@diagnostic enable: missing-fields
},{
  "drop-stones/fzf-lua-normal-mode",
  opts = {
    -- see configuration section
    keys = {
    -- repeatable keys
      { key = "j", action = "<Down>" },
      { key = "k", action = "<Up>" },
      { key = "<Enter>", action = "<CR>", repeatable = false }
    }
  }
}}
