require('nvim-treesitter.configs').setup({
	ensure_installed = { "c", "markdown", "javascript", "json", "ruby", "typescript", "lua", "query", "vim", "vimdoc", "yaml" },
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	}
})
