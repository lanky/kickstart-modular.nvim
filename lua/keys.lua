local wk = require("which-key")
wk.add {
  { "<leader>l", group = "Diagnostics" },
  { "<leader>j", vim.diagnostic.goto_next,  desc = "Next Diagnostic" }, -- create a binding with label
  { "<leader>k", vim.diagnostic.goto_prev,  desc = "Previous Diagnostic" },
  { "<leader>e", vim.diagnostic.open_float, desc = "Show Diagnostic Error messager" },
  { "<leader>q", vim.diagnostic.setloclist, desc = "Open diagnostic quickfix list" },
}
