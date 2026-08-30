return {
  "stevearc/aerial.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  -- Define el atajo, la descripción para Which-Key y la carga automática
  keys = {
    { "<leader>a", "<cmd>AerialToggle!<CR>", desc = "Alternar esquema del código (Aerial)" },
  },
  opts = {
    layout = {
      default_direction = "right",
      max_width = { 40, 0.2 },
      width = 35,
      min_width = 20,
    },
    filter_kind = {
      "Class",
      "Constructor",
      "Enum",
      "Function",
      "Interface",
      "Module",
      "Method",
      "Struct",
      "Variable",
      "Constant",
      "Field",
      "Property",
    },
    backends = { "treesitter", "lsp", "markdown", "man" },
    show_guides = true,
    ignore = {
      filetypes = { "NvimTree", "neo-tree", "TelescopePrompt", "lazy", "mason" },
    },
  },
}
