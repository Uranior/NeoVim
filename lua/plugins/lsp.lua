return {
  -- Gestor de binarios LSP/Linters
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "yaml-language-server",    -- yamlls
        "ansible-language-server", -- ansiblels
        "jinja-lsp",               -- jinja_lsp (Soporte para plantillas Jinja2 / J2)
      },
    },
  },

  -- Configuración de servidores LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
}
