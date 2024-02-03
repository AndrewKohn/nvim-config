-- zen-mode
-- for focused code production
-- twilight is used to dim inactive portions of code

return {
	{
		"folke/zen-mode.nvim",
		opts = {
			window = {
				backdrop = 0.95,
				width = 0.85,
				height = 0.95,
				options = {
					number = false,
					relativenumber = false,
				},
			},
		},
	},
	{ "folke/twilight.nvim" },
}
