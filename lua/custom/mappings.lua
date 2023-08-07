local M = {}

M.dap = {
  n = {
    ["<leader>sbr"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Set breakpoint at line",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
    ["<leader>con"] = {
      "<cmd> DapContinue <CR>",
      "Continue",
    },
    ["<leader>sti"] = {
      "<cmd> DapStepInto <CR>",
      "Dap step into",
    },
    ["<leader>sto"] = {
      "<cmd> DapStepOut <CR>",
      "Dap step out",
    },
    ["<leader>sov"] = {
      "<cmd> DapStepOver <CR>",
      "Dap step over",
    },
    ["<leader>dre"] = {
      "<cmd> DapToggleRepl <CR>",
      "Dap repl",
    },
    ["<leader>dax"] = {
      "<cmd> DapTerminate <CR>",
      "Dap terminate",
    },
  },
}

M.dap_go = {
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    },
  },
}

M.gopher = {
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
    },
  },
}

M.telescope = {
  n = {
    ["<C-p>"] = { "<cmd> Telescope find_files <CR>", "Find Files CtrlP" },
    ["<leader>di"] = {
      function()
        require("telescope.builtin").diagnostics { bufnr = 0 }
      end,
      "Show lsp diagnostics current buffer",
    },
  },
  i = {
    ["<leader>tp"] = {
      function(prompt_bufnr)
        require("telescope.actions.layout").toggle_preview(prompt_bufnr)
      end,
      "Toggle preview",
    },
  },
}

return M
