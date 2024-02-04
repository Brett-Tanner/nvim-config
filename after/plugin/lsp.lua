local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function() end)

local lspconfig = require("lspconfig")
require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"astro",
		"cssls",
		"emmet_language_server",
		"lua_ls",
		"rubocop",
		"ruby_ls",
		"tailwindcss",
		"tsserver",
	},
	handlers = {
		lsp_zero.default_setup,
		cssls = function()
			lspconfig.cssls.setup({})
		end,
		lua_ls = function()
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						runtime = {
							-- Tell the language server which version of Lua you're using
							-- (most likely LuaJIT in the case of Neovim)
							version = "LuaJIT",
						},
						diagnostics = {
							-- Get the language server to recognize the `vim` global
							globals = {
								"vim",
								"require",
							},
						},
						workspace = {
							-- Make the server aware of Neovim runtime files
							library = vim.api.nvim_get_runtime_file("", true),
						},
						-- Do not send telemetry data containing a randomized but unique identifier
						telemetry = {
							enable = false,
						},
					},
				},
			})
		end,
		pyright = function()
			lspconfig.pyright.setup({})
		end,
		ruby_ls = function()
			lspconfig.ruby_ls.setup({
				cmd = { "/Users/brett/.rbenv/shims/ruby-lsp" },
			})
		end,
		tsserver = function()
			lspconfig.tsserver.setup({
				on_attach = function(client)
					client.resolved_capabilities.document_formatting = false
				end,
			})
		end,
	},
})

local cmp = require("cmp")
require("lsp-zero").cmp_action()

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer" },
	},
	mapping = cmp.mapping.preset.insert({
		-- `Enter` key to confirm completion
		["<CR>"] = cmp.mapping.confirm({ select = true }),

		-- Ctrl+Space to trigger completion menu
		["<C-Space>"] = cmp.mapping.complete(),
	}),
})

local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
					vim.lsp.buf.format({ async = false })
				end,
			})
		end
	end,
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettierd,
		null_ls.builtins.diagnostics.haml_lint,
		null_ls.builtins.diagnostics.markdownlint_cli2,
		null_ls.builtins.diagnostics.mypy,
		null_ls.builtins.diagnostics.pylint.with({
			extra_args = {
				"--disable=missing-module-docstring",
				"--disable=missing-class-docstring",
				"--disable=missing-function-docstring",
				"--disable=import-error",
			},
		}),
	},
})
