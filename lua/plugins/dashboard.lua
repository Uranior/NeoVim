return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    theme = "hyper",
    config = {
      week_header = {
        enable = true, -- Muestra la fecha y el día actual en la cabecera
      },
      shortcut = {
        {
          icon = "󰈞 ",
          icon_hl = "Title",
          desc = "Buscar archivo   ",
          group = "Label",
          action = "Telescope find_files",
          key = "f",
        },
        {
          icon = "󰊄 ",
          icon_hl = "String",
          desc = "Buscar texto     ",
          group = "Label",
          action = "Telescope live_grep",
          key = "g",
        },
        {
          icon = "󰒲 ",
          icon_hl = "Number",
          desc = "Gestor Lazy      ",
          group = "Label",
          action = "Lazy",
          key = "l",
        },
        {
          icon = "󰩈 ",
          icon_hl = "Error",
          desc = "Salir            ",
          group = "Label",
          action = "qa",
          key = "q",
        },
      },
    },
  },
}
