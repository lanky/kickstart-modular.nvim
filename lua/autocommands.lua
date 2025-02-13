vim.api.nvim_create_autocmd("colorscheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "red", bg = "None" })
    vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "cyan", bg = "None" })
    vim.api.nvim_set_hl(0, "GitSignsadd", { fg = "lightgreen", bg = "None" })
    vim.api.nvim_set_hl(0, "SignColumn", {})
    vim.api.nvim_set_hl(0, "Folded", {})
    vim.api.nvim_set_hl(0, "NonText", {})
    vim.api.nvim_set_hl(0, "CursorLine", {})
    vim.api.nvim_set_hl(0, "CursorColumn", { bg = "NvimDarkGray3" })
    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "DiffChange", { bg = "NONE", fg = "cyan" })
    vim.api.nvim_set_hl(0, "DiffDelete", { bg = "NONE", fg = "red" })
    vim.api.nvim_set_hl(0, "DiffAdd", { bg = "NONE", fg = "lightgreen" })
    vim.api.nvim_set_hl(0, "DiffText", { bg = "NONE", fg = "yellow" })
    vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE", fg = "yellow" })
    vim.api.nvim_set_hl(0, "Visual", { reverse = true })
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.lsp.buf.format()
  end,
})

local get_option = vim.filetype.get_option
vim.filetype.get_option = function(filetype, option)
  return option == "commentstring" and require("ts_context_commentstring.internal").calculate_commentstring()
    or get_option(filetype, option)
end
