vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>j", vim.cmd.tabprevious)
vim.keymap.set("n", "<leader>k", vim.cmd.tabnext)
vim.keymap.set("n", "<leader><S-j>", ":tabmove -1<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader><S-k>", ":tabmove +1<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>PV", ":tabnew .<CR>", { noremap = true, silent = true })

-- LSP Remaps
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
