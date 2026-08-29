return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- Configuración estándar de la interfaz
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    -- Registrar los nombres y descripciones de todos los grupos y teclas
    wk.add({
      -- Atajos principales individuales
      { "<leader>w", desc = "Guardar archivo" },
      { "<leader>q", desc = "Cerrar pestaña actual" },
      { "<leader>u", desc = "Historial de cambios (Undotree)" },
      { "<leader>e", desc = "Abrir / Enfocar explorador (NvimTree)" },

      -- Grupos de herramientas
      { "<leader>f", group = "Telescope (Buscador)" },
      { "<leader>ff", desc = "Buscar archivos" },
      { "<leader>fg", desc = "Buscar texto (Live Grep)" },
      { "<leader>fb", desc = "Buscar en buffers abiertos" },
      { "<leader>fh", desc = "Buscar en la ayuda" },
      { "<leader>fw", desc = "Buscar palabra bajo el cursor" },
      { "<leader>fz", desc = "Buscar texto en archivo actual" },

      { "<leader>h", group = "Git (Gitsigns)" },
      { "<leader>hp", desc = "Previsualizar cambio (Hunk)" },
      { "<leader>hb", desc = "Ver autor de línea (Git Blame)" },

      { "<leader>b", group = "Pestañas / Buffers" },
      { "<leader>c", group = "Código / LSP" },
      { "<leader>d", group = "Diagnósticos / Errores" },
      { "<leader>m", group = "Formato" },
      { "<leader>p", group = "Plugins (Lazy)" },
      { "<leader>t", group = "Terminal / Pestañas" },
      -- Grupo Git
      { "<leader>g", group = "Git" },
      { "<leader>gl", desc = "Ver Git Log & Diff" },
      { "<leader>gc", desc = "Cerrar Git Log & Diff" },
      { "<leader>gd", desc = "Abrir Diffview" },
      { "<leader>gx", desc = "Cerrar Diffview" },
      -- Grupo Spotify
      { "<leader>s", group = "Spotify" },
      { "<leader>st", desc = "Play / Pausa" },
      { "<leader>sn", desc = "Siguiente canción" },
      { "<leader>sp", desc = "Canción anterior" },
    })
  end,
}
