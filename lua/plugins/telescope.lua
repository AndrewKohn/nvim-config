-- telescope
-- the fuzziest of finders
-- TODO: Add ui-select for code actions.  current pr is handling ca issues...

return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")

			telescope.load_extension("harpoon")
		end,
	},
}
