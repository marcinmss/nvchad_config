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

        -- Packages for latex
        "latexindent",
        "texlab",
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
      },
    },
  },

  {
    "lervag/vimtex",
    ft = { "tex" },
    config = function()
      vim.g.vimtex_view_method = "zathura"
      --   vim.g.vimtex_compiler_method = "latexmk"
      --   vim.g.vimtex_syntax_enabled = 0
      --   vim.g.vimtex_compiler_latexmk = {}
    end,
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
}
