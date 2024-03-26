require("brett.remap")
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.bo.autoindent = true
vim.bo.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.hidden = true

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*" },
	command = [[%s/\s\+$//e]],
})

vim.filetype.add({
	extension = {
		mdx = "mdx",
	},
})

vim.treesitter.language.register("markdown", "mdx")

-- Stop vim-rails killing my syntax highlighting in yaml files
vim.api.nvim_create_autocmd("FileType", { pattern = "eruby.yaml", command = "set filetype=yaml" })
