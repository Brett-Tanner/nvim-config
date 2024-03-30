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
	"simrat39/rust-tools.nvim",
	"tpope/vim-fugitive",
	"tpope/vim-surround",
	"tpope/vim-rails",
	"tpope/vim-bundler",
	{ "BurntSushi/ripgrep" },
	{ "Exafunction/codeium.vim", event = "BufEnter" },
	{ "L3MON4D3/LuaSnip" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "neovim/nvim-lspconfig" },
	{ "nvim-telescope/telescope.nvim" },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "williamboman/mason.nvim" },
	{
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"nvim-neotest/neotest-go",
			"rouge8/neotest-rust",
		},
	},
	{ "folke/neodev.nvim", opts = {} },
}
