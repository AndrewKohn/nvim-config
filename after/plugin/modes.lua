require('modes').setup({
	colors = {
		copy = "#80A0FF",
		delete = "#FF5189",
		insert = "#C6C6C6",
		visual = "#AE81FF",
	},

	-- Set opacity for cursorline and number background
	line_opacity = 0.1,

	-- Enable cursor highlights
	set_cursor = true,

	-- Enable cursorline initially, and disable cursorline for inactive windows
	-- or ignored filetypes
	set_cursorline = true,

	-- Enable line number highlights to match cursorline
	set_number = true,

	-- Disable modes highlights in specified filetypes
	-- Please PR commonly ignored filetypes
	ignore_filetypes = { 'NvimTree', 'TelescopePrompt' }
})
