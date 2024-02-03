-- to-do comments
-- EXAMPLES:
-- FIX: asdfasd kasd fjaksd fi woi xiasdfhlj...?
-- TODO: asdfasd kasd fjaksd fi woi xiasdfhlj...?
-- HACK: asdfasd kasd fjaksd fi woi xiasdfhlj...?
-- WARN: asdfasd kasd fjaksd fi woi xiasdfhlj...?
-- PERF: asdfasd kasd fjaksd fi woi xiasdfhlj...?
-- NOTE: asdfasd kasd fjaksd fi woi xiasdfhlj...?
-- TEST: asdfasd kasd fjaksd fi woi xiasdfhlj...?

-----------------------------------------

return {
	"folke/todo-comments.nvim",
	opts = {
		signs = true,
		sign_priority = 8,
		keywords = {
			FIX = {
				icon = " ",
				color = "error",
				alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
			},
			TODO = { icon = " ", color = "info" },
			HACK = { icon = "󰈸 ", color = "#f26419" },
			WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
			PERF = { icon = "󰄧 ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
			NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
			TEST = { icon = "󰎑 ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
		},
		gui_style = {
			fg = "NONE",
			bg = "BOLD",
		},
		merge_keywords = true,
		highlight = {
			before = "",
			keyword = "wide",
			after = "fg",
			pattern = [[.*<(KEYWORDS)\s*:]],
			comments_only = true,
			max_line_len = 400,
			exclude = {},
		},
		colors = {
			error = { "#DC2626" },
			warning = { "#FBBF24" },
			info = { "#2563EB" },
			hint = { "#10B981" },
			default = { "#7C3AED" },
			test = { "#FF00FF" },
		},
		search = {
			command = "rg",
			args = {
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
			},
			pattern = [[\b(KEYWORDS):]], -- ripgrep regex
		},
	},
}
