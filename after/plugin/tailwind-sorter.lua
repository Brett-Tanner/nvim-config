require("tailwind-sorter").setup({
	on_save_enabled = true,
	on_save_pattern = {
		"*.haml",
		"*.html",
		"*.css",
		"*.htmldjango",
		"*.js",
		"*.jsx",
		"*.tsx",
		"*.twig",
		"*.hbs",
		"*.php",
		"*.heex",
		"*.astro",
	},
	node_path = "node",
})
