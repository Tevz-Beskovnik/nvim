local M = {}

M.dap = {
  plugin = true,

  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpount at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>dj"] = {
      "<cmd> DapStepOver <CR>",
      "Jump over statement",
    },
    ["<leader>di"] = {
      "<cmd> DapStepInto <CR>",
      "Step into statement",
    },
  }
}

return M
