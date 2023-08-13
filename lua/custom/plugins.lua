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
        "go",
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require "custom.configs.dap"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      require "custom.configs.dapui"
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  },
  {
    "dreamsofcode-io/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        return require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "jose-elias-alvarez/typescript.nvim",
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
  }
--  {
--    "mjolk/header.nvim",
--    config = function()
--      require "custom.configs.header"
--    end,
--  },
}
return plugins
