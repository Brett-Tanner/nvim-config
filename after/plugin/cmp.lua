local cmp = require("cmp")

cmp.setup({
	experimental = {
		ghost_text = true,
	},
	sources = cmp.config.sources({
		{ name = "lazydev", group_index = 0 },
	}),
})
