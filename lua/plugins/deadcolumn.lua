-- deadcolumn
-- for code readability & to not get too nested in code.
-- colorcolumn is set to 80.  Change in user/set

return {
	"Bekaboo/deadcolumn.nvim",
	opts = {
		scope = "line",
		modes = { "i", "ic", "ix", "R", "Rc", "Rx", "Rv", "Rvc", "Rvx", "n" },
		blending = {
			threshold = 0.65,
			colorcode = "#000000",
			hlgroup = {
				"Normal",
				"background",
			},
		},
		warning = {
			alpha = 0.15,
			offset = 0,
			colorcode = "#fd151b",
			hlgroup = {
				"Error",
				"background",
			},
		},
		extra = {
			follow_tw = nil,
		},
	},
}
