return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- Lenguajes base
      "lua",
      "vim",
      "vimdoc",
      "query",
      "bash",

      -- Infraestructura, Plantillas y Logs
      "yaml",
      "json",
      "html",
      "jinja",
      "toml",     -- <--- Telegraf
    },
    highlight = {
      enable = true,
      use_languagetree = true,
    },
    indent = {
      enable = true,
    },
  },
}
