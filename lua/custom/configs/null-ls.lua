local null_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local h = require "null-ls.helpers"
local methods = require "null-ls.methods"

local DIAGNOSTICS_ON_SAVE = methods.internal.DIAGNOSTICS_ON_SAVE

local ninja = {
  name = "ninja",
  meta = {
    url = "",
    description = "ninja",
    notes = {
      "`ninja` will be run only when files are saved to disk, so that `compile_commands.json` files can be used. It is recommended to use this linter in combination with `compile_commands.json` files.",
    },
  },
  method = DIAGNOSTICS_ON_SAVE,
  filetypes = { "c", "cpp" },
  generator = h.generator_factory {
    command = "ninja",
    args = {
      "-Cbuild",
    },
    to_stdin = false,
    from_stderr = true,
    multiple_files = true,
    format = "line",
    on_output = h.diagnostics.from_pattern(
      [[^([^:]+):(%d+):(%d+):%s+([^:]+):%s+(.*)$]],
      { "file", "row", "col", "severity", "message" },
      {
        severities = {
          ["fatal error"] = h.diagnostics.severities.error,
          ["error"] = h.diagnostics.severities.error,
          ["note"] = h.diagnostics.severities.information,
          ["warning"] = h.diagnostics.severities.warning,
        },
      }
    ),
  },
}

null_ls.setup {
  debug = true,
  sources = {
    null_ls.builtins.formatting.gofumpt,
    null_ls.builtins.formatting.goimports_reviser,
    null_ls.builtins.formatting.golines,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.stylua,
    require "typescript.extensions.null-ls.code-actions",
    ninja,
    -- null_ls.builtins.diagnostics.clang_check,
    null_ls.builtins.diagnostics.yamllint,
    null_ls.builtins.formatting.clang_format,
    null_ls.builtins.formatting.protolint,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { async = false }
        end,
      })
    end
  end,
}
