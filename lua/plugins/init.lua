return {
  {
    "stevearc/conform.nvim",
    lazy = false,
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {

        -- Packages for lua
        "lua-language-server",
        "stylua",

        -- Packages for html and ccs development
        "html-lsp",
        "css-lsp",
        "prettier",

        -- Packages for python
        "pyright",
        "mypy",
        "ruff",
        "black",

        -- Packages for sql
        "sqlfluff",
      },
    },
  },
  --
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "python",
        "yaml",
        "python",
      },
    },
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "python", "sql" },
    opts = function()
      return require "configs.null-ls"
    end,
  },

  {
    "mbbill/undotree",
    lazy = false,
  },
  {
    "Vigemus/iron.nvim",
    ft = { "python" },
    init = function()
      return require "configs.iron-nvim"
    end,
  },
}
