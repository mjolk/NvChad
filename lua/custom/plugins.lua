local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "golines",
        "goimports-reviser",
        "angularls",
        "prettier",
        "typescript-language-server",
        "lua-language-server",
        "html-lsp",
        "stylua",
        "clangd",
        "clang-format",
        "delve",
        "cpptools",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "c",
        "cpp",
        "go",
        "dockerfile",
        "yaml",
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "rcarriga/nvim-dap-ui",
        opts = {},
        config = function()
          require "custom.configs.dapui"
        end,
      },
      {
        "theHamsta/nvim-dap-virtual-text",
        opts = {},
      },
      {
        "dreamsofcode-io/nvim-dap-go",
        ft = "go",
        config = true,
      },
    },
    config = function()
      require "custom.configs.dap"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
      {
        "jose-elias-alvarez/typescript.nvim",
        ft = "typescript",
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = true,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local settings = require "plugins.configs.telescope"

      settings.defaults.mappings.i = {
        ["<A-t>"] = require("telescope.actions.layout").toggle_preview,
      }

      return settings
    end,
  },
  {
    "mjolk/header.nvim",
    config = function()
      require "custom.configs.header"
    end,
  },
}
return plugins
