function NvimColors(color)
	color = color or 'kanagawa-dragon'
	vim.cmd.colorscheme(color)

	-- sets the bg to window's default color
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	
end

NvimColors()
