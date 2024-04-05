local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    yaml = { "prettier" },
    sql = { "sqlfluff" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
