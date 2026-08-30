local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

-- 1. Configuración global por defecto para todos los servidores
vim.lsp.config("*", {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
})

-- 2. Servidor YAML (yamlls)
vim.lsp.config("yamlls", {
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
})

-- 3. Servidor Ansible (ansiblels)
vim.lsp.config("ansiblels", {
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
})

-- 4. Servidor Jinja2 / J2 (jinja_lsp)
vim.lsp.config("jinja_lsp", {
  filetypes = { "jinja", "jinja2", "j2", "htmldjango" },
})

-- 5. Habilitar los servidores configurados
vim.lsp.enable { "yamlls", "ansiblels", "jinja_lsp" }
