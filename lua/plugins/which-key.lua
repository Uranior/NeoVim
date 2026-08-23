return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- Configuración estándar
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    -- Registrar los nombres de los grupos de forma explícita
    wk.add({
      { "<leader>f", group = "Buscar (Telescope)" },
      { "<leader>h", group = "Git (Gitsigns)" },
    })
  end,
}
