return {
  -- Plugin principal de visualización de diffs (Dependencia requerida)
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
  },

  -- Plugin para el historial de logs de Git
  {
    "Salanoid/gitlogdiff.nvim",
    cmd = { "GitLogDiff", "GitLogDiffClose" },
    dependencies = {
      "sindrets/diffview.nvim",
    },
    config = function()
      require("gitlogdiff").setup()
    end,
  },
}
