local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    css = { "prettier" },
    html = { "prettier" },
    htmldjango = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    sql = { "sqlfluff" },
    tex = { "latexindent" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    -- lsp_fallback = true,
  },
}

require("conform").setup(options)
