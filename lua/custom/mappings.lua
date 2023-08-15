local M = {}

M.dap = {
  n = {
    ["<leader>dB"] = {
      function()
        require("dap").set_breakpoint(vim.fn.input "Breakpoint condition: ")
      end,
      "Breakpoint Condition",
    },
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle Breakpoint",
    },
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end,
      "Continue",
    },
    ["<leader>dC"] = {
      function()
        require("dap").run_to_cursor()
      end,
      "Run to Cursor",
    },
    ["<leader>dg"] = {
      function()
        require("dap").goto_()
      end,
      "Go to line (no execute)",
    },
    ["<leader>di"] = {
      function()
        require("dap").step_into()
      end,
      "Step Into",
    },
    ["<leader>dj"] = {
      function()
        require("dap").down()
      end,
      "Down",
    },
    ["<leader>dk"] = {
      function()
        require("dap").up()
      end,
      "Up",
    },
    ["<leader>dl"] = {
      function()
        require("dap").run_last()
      end,
      "Run Last",
    },
    ["<leader>do"] = {
      function()
        require("dap").step_out()
      end,
      "Step Out",
    },
    ["<leader>dO"] = {
      function()
        require("dap").step_over()
      end,
      "Step Over",
    },
    ["<leader>dp"] = {
      function()
        require("dap").pause()
      end,
      "Pause",
    },
    ["<leader>dr"] = {
      function()
        require("dap").repl.toggle()
      end,
      "Toggle REPL",
    },
    ["<leader>ds"] = {
      function()
        require("dap").session()
      end,
      "Session",
    },
    ["<leader>dt"] = {
      function()
        require("dap").terminate()
      end,
      "Terminate",
    },
    ["<leader>dw"] = {
      function()
        require("dap.ui.widgets").hover()
      end,
      "Widgets",
    },
    ["<leader>dx"] = {
      function()
        require("dap").clear_breakpoints()
      end,
      "Clear all breakpoints",
    },
  },
}

M.dapui = {
  n = {
    ["<leader>du"] = {
      function()
        require("dapui").toggle {}
      end,
      "Dap UI",
    },
    ["<leader>de"] = {
      function()
        require("dapui").eval()
      end,
      "Eval",
    },
  },
  v = {
    ["<leader>de"] = {
      function()
        require("dapui").eval()
      end,
      "Eval",
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
    ["<leader>fer"] = {
      function()
        require("telescope.builtin").diagnostics { bufnr = 0 }
      end,
      "Show lsp diagnostics current buffer",
    },
  },
}

M.header = {
  n = {
    ["<leader>kut"] = { "<cmd> Stdheader <CR>" },
  },
}

return M
