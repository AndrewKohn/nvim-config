-- noice
-- nice ui additions

return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		{
			"rcarriga/nvim-notify",
			opts = {
				max_width = 70,
				render = "compact",
				timeout = 1000, -- 1s after animation ends
				top_down = false,
			},
		},
	},
	opts = {
		views = {
			cmdline_popup = {
				border = {
					style = "rounded",
					padding = { 1, 1 },
				},
				size = {
					min_width = 60,
					width = "auto",
					height = "auto",
				},
			},
		},
	},
}
