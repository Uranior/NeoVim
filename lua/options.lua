require "nvchad.options"

-- add yours here!
vim.g.mapleader = " "
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
-- Reconocimiento de plantillas Jinja2 / J2
vim.filetype.add {
  extension = {
    j2 = "jinja",
    jinja2 = "jinja",
    jinja = "jinja",
  },
}
