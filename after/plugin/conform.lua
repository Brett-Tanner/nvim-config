require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = {
			{
				function()
					return {
						exe = "prettierd",
						args = { vim.api.nvim_buf_get_name(0) },
						stdin = true,
					}
				end,
				"prettier",
			},
		},
		ruby = { "rubocop" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
