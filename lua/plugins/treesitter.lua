-- treesitter
-- Great & widely-used tool
-- helps disambiguates modules from variables, highlighter to help code readability, etc...

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")

		config.setup({
			auto_install = true,
			highlight = { enabled = true },
			indent = { enabled = true },
		})
	end,
}
