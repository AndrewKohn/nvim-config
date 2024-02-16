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
		{ "rafamadriz/friendly-snippets" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "hrsh7th/cmp-cmdline" },
		{ "saadparwaiz1/cmp_luasnip" },
	},
	config = function()
		local lsp_zero = require("lsp-zero")
		local lsp_config = require("lspconfig")

		local servers = {
			"cssls",
			"tsserver",
			"pyright",
			"lua_ls",
			"rust_analyzer",
			"jdtls",
		}

		lsp_zero.set_sign_icons({
			error = " ",
			warn = " ",
			hint = "󰛨 ",
			info = " ",
		})

		lsp_zero.on_attach(function(client, bufnr)
			lsp_zero.default_keymaps({ buffer = bufnr })
		end)

		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		require("mason-lspconfig").setup({
			automatic_installation = true,
			ensure_installed = servers,
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
				["<Enter>"] = cmp.mapping.confirm({ select = false }),
				["<C-Space>"] = cmp.mapping.complete(),
			},
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			completion = { completeopt = "menu,menuone,noinsert,noselect" },
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "path" },
			}),
		})

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		for _, server in pairs(servers) do
			lsp_config[server].setup({
				capabilities = capabilities,
			})
		end

		lsp_zero.setup()
	end,
}
