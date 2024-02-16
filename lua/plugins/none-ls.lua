-- none-ls
-- community-maintained null-ls fork

return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua, -- lua
				null_ls.builtins.formatting.prettier, -- js/ts formatter
				null_ls.builtins.formatting.black, -- python
				--null_ls.builtins.completion.spell,
			},
		})
	end,
}
