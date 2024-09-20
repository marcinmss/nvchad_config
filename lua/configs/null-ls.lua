local null_ls = require "null-ls"

local opts = {
  sources = {
    null_ls.builtins.diagnostics.ruff,
    null_ls.builtins.diagnostics.sqlfluff.with {
      extra_args = { "--dialect", "postgres" }, -- change to your dialect
    },
  },
}

return opts
