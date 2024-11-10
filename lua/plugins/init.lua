return {
  {
    "mfussenegger/nvim-dap",
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    config = function()
      require("window-picker").setup()
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },
  {
    "nvim-neotest/nvim-nio",
  },
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

  -- Live Server Plugin
  {
    "barrett-ruth/live-server.nvim",
    -- build = "pnpm add -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    config = true,
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
        "htmx-lsp",
        "css-lsp",
        "prettier",

        -- Packages for python
        "pyright",
        "mypy",
        "ruff",
        "black",
        "debugpy",

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
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "html",
      "htmldjango",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
