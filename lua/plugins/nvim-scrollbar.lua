-- scrollbar
-- vscode-like scrollbar that shows diagnostics/errors/info in context of
-- where it's positioned on the scrollbar

return {
	"petertriho/nvim-scrollbar",
	dependencies = {
		{ "lewis6991/gitsigns.nvim" },
		{ "kevinhwang91/nvim-hlslens" },
	},
	config = function()
		require("hlslens").setup({
			build_position_cb = function(plist, _, _, _)
				require("scrollbar.handlers.search").handler.show(plist.start_pos)
			end,
		})

		vim.cmd([[
        augroup scrollbar_search_hide
            autocmd!
            autocmd CmdlineLeave : lua require('scrollbar.handlers.search').handler.hide()
        augroup END
    ]])

		require("gitsigns").setup()
		require("scrollbar.handlers.gitsigns").setup()

		require("scrollbar").setup()
	end,
}
