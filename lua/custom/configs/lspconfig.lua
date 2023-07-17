local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
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
-- Angular requires a node_modules directory to probe for @angular/language-service and typescript
-- in order to use your projects configured versions.
-- This defaults to the vim cwd, but will get overwritten by the resolved root of the file.
--local function get_probe_dir(root_dir)
--  local project_root = util.find_node_modules_ancestor(root_dir)
--
--  return project_root and (project_root .. '/node_modules') or ''
--end
--
--local default_probe_dir = get_probe_dir(vim.fn.getcwd())
--
--lspconfig.angularls.setup {
--  on_attach = on_attach,
--  capabilities = capabilities,
--  cmd = {
--    'ngserver',
--    '--stdio',
--    '--tsProbeLocations',
--    default_probe_dir,
--    '--ngProbeLocations',
--    default_probe_dir,
--  },
--  filetypes = { 'typescript', 'html', 'typescriptreact', 'typescript.tsx' },
--  -- Check for angular.json since that is the root of the project.
--  -- Don't check for tsconfig.json or package.json since there are multiple of these
--  -- in an angular monorepo setup.
--  root_dir = util.root_pattern 'angular.json',
--}

lspconfig.tsserver.setup {}
lspconfig.clangd.setup {}
lspconfig.yamlls.setup{}
lspconfig.lua_ls.setup{}
