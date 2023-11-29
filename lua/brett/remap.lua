vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.cmd("map <leader>lf :lua vim.lsp.buf.format({ timeout_ms = 2000 })<CR>")
vim.keymap.set("n", "<leader>i", vim.diagnostic.open_float)
