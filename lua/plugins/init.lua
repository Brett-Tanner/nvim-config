return {
	"hrsh7th/cmp-buffer",
	{
		"laytan/tailwind-sorter.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
		build = "cd formatter && npm ci && npm run build",
		config = true,
	},
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope-fzf-native.nvim",
	"nvim-tree/nvim-web-devicons",
	"nvim-treesitter/nvim-treesitter-textobjects",
	"nvimtools/none-ls.nvim",
	"rebelot/kanagawa.nvim",
	"tpope/vim-fugitive",
	"tpope/vim-surround",
	"tpope/vim-rails",
	"tpope/vim-bundler",
	{ "BurntSushi/ripgrep", tag = "13.0.0" },
	{ "Exafunction/codeium.vim", event = "BufEnter" },
	{ "L3MON4D3/LuaSnip" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "neovim/nvim-lspconfig" },
	{ "nvim-telescope/telescope.nvim", tag = "0.1.4" },
	{ "nvim-treesitter/nvim-treesitter", tag = "0.9.1" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "williamboman/mason.nvim" },
}
