return {
  "williamboman/mason.nvim",
  cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
  opts = {
    ensure_installed = {
      "lua-language-server",
      "stylua",
      "yaml-language-server",    -- yamlls
      "ansible-language-server", -- ansiblels
      "jinja-lsp",               -- jinja_lsp
    },
  },
  config = function(_, opts)
    require("mason").setup(opts)

    -- Comando utilitario para instalar de golpe todo ensure_installed
    vim.api.nvim_create_user_command("MasonInstallAll", function()
      if opts.ensure_installed and #opts.ensure_installed > 0 then
        vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
      end
    end, {})
  end,
}
