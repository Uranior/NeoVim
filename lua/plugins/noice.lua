return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    cmdline = {
      enabled = true,
      view = "cmdline_popup", -- Vista flotante por defecto
      format = {
        -- Forzamos que la búsqueda con '/' y '?' use la ventana flotante centrada
        search_down = { view = "cmdline_popup", kind = "search", pattern = "^/", icon = " ", lang = "regex" },
        search_up   = { view = "cmdline_popup", kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
      },
    },
    views = {
      cmdline_popup = {
        position = {
          row = "50%", -- Centrado vertical exacto
          col = "50%", -- Centrado horizontal exacto
        },
        size = {
          width = 60,
          height = "auto",
        },
      },
      popupmenu = {
        relative = "editor",
        position = {
          row = "57%",
          col = "50%",
        },
        size = {
          width = 60,
          height = 10,
        },
        border = {
          style = "rounded",
          padding = { 0, 1 },
        },
      },
    },
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    presets = {
      bottom_search = false, -- FALSO: permite que '/' use el PopUp flotante central
      command_palette = false,
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = true,
    },
  },
}
