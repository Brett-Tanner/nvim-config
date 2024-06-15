require("lualine").setup({
	extensions = { "oil" },
	options = {
		globalstatus = true,
		theme = "auto",
	},
	winbar = {
		lualine_a = { { "filename", path = 1 } },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},

	inactive_winbar = {
		lualine_a = { { "filename", path = 1 } },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
})
