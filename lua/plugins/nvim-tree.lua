-- nvim-tree
-- alternative file explorer
-- netrw is disabled
-- Hack Nerd Font should be set as terminal font

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
			add_trailing = true,
			--highlight_opened_files = "name",
			--highlight_git = true,
			indent_width = 2,
			indent_markers = {
				enable = true,
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
				git_placement = "signcolumn",
				modified_placement = "before",
				show = { modified = true },
				glyphs = {
					modified = "●",
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
						unstaged = "ϟ",
						staged = "✓",
						unmerged = "",
						renamed = "➜",
						untracked = "?",
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
			enable = true,
		},
		modified = { enable = true },
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
