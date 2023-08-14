local dap = require "dap"

vim.g.dap_virtual_text = true

dap.adapters.cppdbg = {
  id = "cppdbg",
  type = "executable",
  command = "OpenDebugAD7", -- add ~/.local/share/nvim/mason/bin to PATH!
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    end,

    cwd = "${workspaceFolder}",
    stopAtEntry = true,
  },
}
dap.configurations.c = dap.configurations.cpp
