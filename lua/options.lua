require "nvchad.options"

-- add yours here!
vim.g.mapleader = " "

-- Reconocimiento dinámico de plantillas Jinja2 según el servicio
vim.filetype.add({
  extension = {
    j2 = "jinja",
    jinja2 = "jinja",
    jinja = "jinja",
  },
  pattern = {
    -- 1. Plantillas YAML (docker-compose.yml.j2, main.yml.j2, etc.)
    [".*%.yml%.j2"] = "yaml.jinja",
    [".*%.yaml%.j2"] = "yaml.jinja",

    -- 2. Telegraf (Sintaxis TOML + Jinja2)
    [".*telegraf.*%.conf%.j2"] = "toml.jinja",
    [".*/telegraf/.*%.conf%.j2"] = "toml.jinja",

    -- 3. Logstash Pipelines (DSL Logstash + Jinja2)
    [".*/%d+.*%.conf%.j2"] = "logstash.jinja",
    [".*/pipeline.*/.*%.conf%.j2"] = "logstash.jinja",
    [".*/logstash.*/.*%.conf%.j2"] = "logstash.jinja",
    [".*/pipeline.*/.*%.conf"] = "logstash",
    [".*/logstash.*/.*%.conf"] = "logstash",
  },
})
