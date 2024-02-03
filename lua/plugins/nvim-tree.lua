-- nvim-tree
-- alternative file explorer
-- netrw is disabled
-- Hack Nerd Font should be set as terminal font
-- TODO: change diag. icons to utf icons

return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		sort_by = "case_sensitive",
		actions = {
			open_file = { quit_on_open = true },
		},
		update_focused_file = {
			enable = true,
			update_cwd = true,
		},
		renderer = {
			indent_width = 2,
			indent_markers = {
				enable = false,
				inline_arrows = true,
				icons = {
					corner = "└",
					edge = "│",
					item = "│",
					bottom = "─",
					none = " ",
				},
			},
			icons = {
				glyphs = {
					symlink = "",
					folder = {
						arrow_open = "",
						arrow_closed = "",
						default = "",
						open = "",
						empty = "",
						empty_open = "",
						symlink = "",
						symlink_open = "",
					},
					git = {
						unstaged = "✗",
						staged = "✓",
						unmerged = "",
						renamed = "➜",
						untracked = "U",
						deleted = "",
						ignored = "◌",
					},
				},
			},
		},
		view = {
			--width = 30,
			adaptive_size = true,
		},
		filters = {
			custom = { "^.git$", "^node_modules$" },
		},
		git = {
			enable = false,
		},
		log = {
			enable = true,
			types = {
				diagnostics = true,
			},
		},
		diagnostics = {
			enable = true,
			show_on_dirs = false,
			debounce_delay = 50,
			icons = {
				error = "✘",
				warning = "▲",
				hint = "⚑",
				info = "»",
			},
		},
	},
}
