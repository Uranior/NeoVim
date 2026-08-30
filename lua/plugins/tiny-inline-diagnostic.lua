return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "LspAttach", -- Se carga automáticamente al conectar cualquier servidor LSP
  priority = 1000,
  opts = {
    -- Opciones de visualización
    preset = "modern", -- Estilos disponibles: "modern", "classic", "minimal", "ghost"
    options = {
      show_source = true, -- Muestra la fuente del error (ej. yamlls, ansiblels)
      use_icons_from_diagnostic = true,
      add_message_area = true,
    },
  },
  config = function(_, opts)
    require("tiny-inline-diagnostic").setup(opts)

    -- Desactivamos el texto virtual por defecto de Neovim para evitar solapamientos visuales
    vim.diagnostic.config {
      virtual_text = false,
    }
  end,
}
