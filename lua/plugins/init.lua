return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Tu personalización para NvimTree
  {
    "nvim-tree/nvim-tree.lua",
    opts = function(_, default_opts)
      default_opts.view = default_opts.view or {}
      default_opts.view.width = {
        min = 35,
        max = 75,
      }
      return default_opts
    end,
  },

  {
    "Salanoid/gitlogdiff.nvim",
    cmd = { "GitLogDiff", "GitLogDiffClose" },
    config = function()
      require("gitlogdiff").setup()
    end,
  },

}
