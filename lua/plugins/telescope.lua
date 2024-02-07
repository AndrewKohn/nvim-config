-- telescope
-- the fuzziest of finders
-- TODO:
-- Add ui-select for code actions.  current pr is handling ca issues...
-- configure telescope layout.  Vertical?

return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			defaults = {
				prompt_prefix = "   ",
				selection_caret = " ",
				path_display = { "smart" },
				sorting_strategy = "ascending",
				layout_config = {
					prompt_position = "top",
					horizontal = {
						preview_cutoff = 80,
						width = 0.9,
					},
				},
			},
		},
		config = function(_, opts)
			local telescope = require("telescope")

			telescope.setup(opts)
			telescope.load_extension("harpoon")
		end,
	},
}
