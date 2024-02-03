-- indent-blankline
-- displays indents & spaces for code readability.
-- TODO: go thru docs and migrate v2 to v3...

return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			indent = {
				char = "┊",
			},
		},
	},
}
