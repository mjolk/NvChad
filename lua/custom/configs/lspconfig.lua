local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

local clangd_capabilities = capabilities
clangd_capabilities.offsetEncoding = "utf-8"

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

-- lspconfig.angularls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   root_dir = util.root_pattern "angular.json",
-- }

-- lspconfig.tsserver.setup {}

require("typescript").setup {
  disable_commands = false,
  debug = false,
  go_to_source_definition = {
    fallback = true,
  },
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  },
}

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = clangd_capabilities,
}

lspconfig.csharp_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  handlers = {
    ["textDocument/definition"] = require("csharpls_extended").handler,
    ["textDocument/typeDefinition"] = require("csharpls_extended").handler,
  },
}

-- lspconfig.omnisharp.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   cmd = { "dotnet", vim.fn.stdpath "data" .. "/mason/packages/omnisharp/libexec/OmniSharp.dll" },
--
--   settings = {
--     FormattingOptions = {
--       EnableEditorConfigSupport = false,
--       OrganizeImports = true,
--     },
--     MsBuild = {
--       LoadProjectsOnDemand = false,
--     },
--     RoslynExtensionsOptions = {
--       EnableAnalyzersSupport = false,
--       EnableImportCompletion = false,
--       AnalyzeOpenDocumentsOnly = true,
--     },
--     Sdk = {
--       IncludePrereleases = true,
--     },
--   },
-- }

-- lspconfig.yamlls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.docker_compose_language_service.setup {}
lspconfig.dockerls.setup {}
