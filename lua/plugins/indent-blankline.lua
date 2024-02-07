-- indent-blankline
-- displays indents & spaces for code readability.

return {
	{
		"lukas-reineke/indent-blankline.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		main = "ibl",
		config = function()
			local ibl = require("ibl")
			local hooks = require("ibl.hooks")

			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "fg_gray1", { fg = "#393836" })
				vim.api.nvim_set_hl(0, "fg_gray2", { fg = "#4c494a" })
				vim.api.nvim_set_hl(0, "bg_black1", { bg = "#181616" })
				vim.api.nvim_set_hl(0, "bg_black2", { bg = "#1F1D1D" })
				--vim.api.nvim_set_hl(0, "fg_lightyellow", { fg = "#f1f0cc" })
				vim.api.nvim_set_hl(0, "focus", { fg = "#80a0ff" })
			end)

			local fg_highlights = {
				"fg_gray1",
				"fg_gray2",
			}

			local bg_highlights = {
				"bg_black1",
				"bg_black2",
			}

			local opts = {
				indent = {
					char = "┊",
					highlight = fg_highlights,
				},
				scope = {
					enabled = true,
					char = "│",
					highlight = "focus",
				},
				whitespace = {
					highlight = bg_highlights,
					remove_blankline_trail = false,
				},
			}

			ibl.setup(opts)
		end,
	},
}
