require("Brett")
print("Hello, Brett")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
local time = os.date("*t")
if time.hour < 9 or time.hour > 17 then
	vim.cmd([[colorscheme kanagawa-dragon]])
else
	vim.cmd([[colorscheme kanagawa-wave]])
end
