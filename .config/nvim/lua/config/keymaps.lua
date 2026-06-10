local opt = { noremap = true, silent = true }

-- nav
vim.keymap.set("n", "<C-h>", "<C-w>h", opt)
vim.keymap.set("n", "<C-j>", "<C-w>j", opt)
vim.keymap.set("n", "<C-k>", "<C-w>k", opt)
vim.keymap.set("n", "<C-l>", "<C-w>l", opt)

-- indent
vim.keymap.set("x", "<", "<gv", opt)
vim.keymap.set("x", ">", ">gv", opt)

-- buffers
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete buffer" })

-- quit
vim.keymap.set("n", "<leader>qq", ":qa<CR>", { desc = "Quit all" })

-- lsp
-- goto definitions, references, implementations, type definitions are handled by telescope.lua
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "LSP declaration" })
vim.keymap.set("n", "K", function()
  return vim.lsp.buf.hover()
end, { desc = "Hover" })
vim.keymap.set("n", "gK", function()
  return vim.lsp.buf.signature_help()
end, { desc = "Signature help" })
vim.keymap.set("i", "<c-k>", function()
  return vim.lsp.buf.signature_help()
end, { desc = "Signature help" })
vim.keymap.set({ "n", "x" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set({ "n", "x" }, "<leader>cc", vim.lsp.codelens.run, { desc = "Run codelens" })
vim.keymap.set("n", "<leader>cC", vim.lsp.codelens.refresh, { desc = "Refresh & display codelens" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })

-- diagnostic
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line diagnostics" })
