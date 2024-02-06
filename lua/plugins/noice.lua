-- noice
-- nice ui additions

return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	},
	opts = function()
		--FIX: set nvim hl groups and correct border & icon colors

		return {
			views = {
				cmdline_popup = {
					border = {
						style = "rounded",
						padding = { 1, 1 },
					},
				},
			},
		}
	end,
}
