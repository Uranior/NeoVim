local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

-- 1. Configuración moderna para YAML (yamlls)
vim.lsp.config["yamlls"] = {
  cmd = { "yaml-language-server", "--stdio" },
  filetypes = { "yaml", "yaml.docker-compose", "yaml.gitlab" },
  root_markers = { ".git", "kubernetes", "Chart.yaml" },
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
        kubernetes = "/*.k8s.yaml",
        ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
        ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
        ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
      },
      validate = true,
      completion = true,
      hover = true,
    },
  },
}

-- 2. Configuración moderna para Ansible (ansiblels)
vim.lsp.config["ansiblels"] = {
  cmd = { "ansible-language-server", "--stdio" },
  filetypes = { "yaml.ansible" },
  root_markers = { ".git", "ansible.cfg", "playbooks" },
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    ansible = {
      python = {
        interpreterPath = "python3",
      },
      ansible = {
        useDefinitionForGoTo = true,
      },
      validation = {
        enabled = true,
        lint = {
          enabled = true,
        },
      },
    },
  },
}

-- 3. Habilitar servidores de forma explícita
vim.lsp.enable "yamlls"
vim.lsp.enable "ansiblels"
