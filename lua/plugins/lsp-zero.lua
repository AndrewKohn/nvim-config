-- lsp-zero
-- A collection of useful functions to setup nvim's lsp client

return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v3.x",
	dependencies = {
		{ "williamboman/mason.nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
		{ "neovim/nvim-lspconfig" },
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/nvim-cmp" },
		{ "L3MON4D3/LuaSnip" },
	},
	config = function()
		local lsp_zero = require("lsp-zero").preset({})
		local lsp_config = require("lspconfig")

		lsp_zero.set_sign_icons({
			error = "✘",
			warn = "▲",
			hint = "⚑",
			info = "»",
		})

		lsp_zero.on_attach(function(client, bufnr)
			lsp_zero.default_keymaps({ buffer = bufnr })
		end)

		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {},
			handlers = {
				lsp_zero.default_setup,
			},
		})

		local cmp = require("cmp")
		-- local cmp_action = require('lsp-zero').cmp_action()
		local cmp_select = { behavior = cmp.SelectBehavior.Select }

		cmp.setup({
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = {
				["<S-Tab>"] = cmp.mapping.select_prev_item(cmp_select),
				["<Tab>"] = cmp.mapping.select_next_item(cmp_select),
				["<Enter>"] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
			},
		})

		lsp_zero.setup()
	end,
}
