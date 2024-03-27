-- General
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Exp, { desc = "Exit to containing directory", remap = true })

-- Linting
vim.cmd(
	"map <leader>lf :lua vim.lsp.buf.format({ timeout_ms = 2000, filter = function(client) return client.name ~= 'tsserver' end })<CR>"
)

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>i", vim.diagnostic.open_float, { desc = "Show line diagnostics", remap = true })

-- Split windows
vim.keymap.set("n", "<leader>-", "<C-W>s<C-W>j", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>|", "<C-W>v<C-W>l", { desc = "Split window right", remap = true })

-- Switch windows
vim.keymap.set("n", "<C-h>", "<C-W>h", { desc = "Switch to left window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-W>j", { desc = "Switch to below window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-W>k", { desc = "Switch to above window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-W>l", { desc = "Switch to right window", remap = true })

-- nvim-rails
vim.keymap.set("n", "<leader>rn", vim.cmd.Runner, { desc = "Run current Rails file", remap = true })

-- Trouble
vim.keymap.set("n", "<leader>xx", function()
	require("trouble").toggle()
end)
vim.keymap.set("n", "<leader>xw", function()
	require("trouble").toggle("workspace_diagnostics")
end)
vim.keymap.set("n", "<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end)
vim.keymap.set("n", "<leader>xq", function()
	require("trouble").toggle("quickfix")
end)
vim.keymap.set("n", "<leader>xl", function()
	require("trouble").toggle("loclist")
end)
vim.keymap.set("n", "gR", function()
	require("trouble").toggle("lsp_references")
end)
