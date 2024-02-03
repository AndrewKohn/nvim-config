-- alpha
-- dashboard

return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.startify")
		local stats = require("lazy").stats()
		vim.api.nvim_set_hl(0, "dashboard", { fg = "#e3c78a", bold = false })
		vim.api.nvim_set_hl(0, "dashboardBold", { fg = "#fe8019", bold = true })

		dashboard.section.header.val = {
			[[⠀⠀⠀⠀⠀⠀⣠⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⣼⠟⠈⠻⣷⡄⠀⠀⠀⠀⠀⣠⣾⠏⠁⠈⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⢰⡿⠐⣷⠀⠈⢻⣦⠀⠀⠀⣴⠟⠀⢠⣿⠃⣿⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⣼⡇⠀⣿⠃⠀⠀⠻⠿⠶⠾⠏⠀⠀⠸⠇⠀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⣰⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⢰⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠠⣾⠃⠀⠀⠀⠀⣴⡶⠀⢠⣶⣦⠀⠀⠰⣶⠄⠀⠀⠀⠀⢻⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⢸⡏⠀⠀⠀⠀⠀⠀ ⠀⠈⣻⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣏⠀⠀⠀⠀⢀⣠⣤⣶⣶⣶⣤⣀⠀⠀⠀]],
			[[⠀⢸⣧⠀⠀⠀⠀⠀⠀⠻⢷⡶⠟⠻⣷⣴⠟⠀⠀⠀⠀⠀⠀⣸⡏⠀⠀⠀⢠⡾⠋⠁⠀⠀⠀⠈⠻⣷⡄⠀]],
			[[⠀⠀⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡃⠀⠀⠀⣾⠇⠀⢠⣴⠶⣶⡄⠀⠘⣿⡀]],
			[[⠀⠀⢸⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⡿⠋⠻⢷⣶⣤⣹⣇⠀⠀⠁⠀⢸⡿⠀⠀⣿⡇]],
			[[⠀⠀⠸⣿⠛⢷⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠟⢛⣿⠃⠀⠀⠀⠀⠉⠙⠛⢿⣦⣶⣶⠿⠃⠀⢀⣿⠁]],
			[[⠀⠀⠀⠹⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣴⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣷⡀⠀⢀⣾⠋⠀]],
			[[⠀⠀⠀⢸⣿⠙⢿⣷⣶⣶⣶⣶⣶⣶⣶⣶⣾⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣷⣴⡿⠃⠀⠀]],
			[[⠀⠀⠀⢸⣯⠀⠀⠙⠻⠿⣿⣿⣤⣤⣿⣿⠿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡟⠀⠀⠀⠀]],
			[[⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠨⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣄⠀⠀⣿⡇⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⣿⡄⠀⠐⣷⣄⡀⠀⠀⠀⠀⠀⢸⣇⠀⠀⠀⠀⢸⡟⠀⠀⣸⣧⠀⠀⠀⠀⠀⠺⣷⡄⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⢹⣇⠀⠀⠈⠙⢻⣿⠿⠷⠶⠶⠾⣿⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠈⣿⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠈⣿⠀⠀⠀⠀⢸⡟⠀⠀⠀⠀⠀⣿⡀⠀⠀⢰⡟⢹⣿  ⣿⡟⠻⣷⡄⠀⠀⠀⣿⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⢻⣇⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⣿⡇⠀⠀⢼⡇⢸⣿  ⡿⠀⠀⠈⣿⡆⠀⠀⣿⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠈⣿⠀⠀⠀⣽⡇⠀⠀⠀⠀⠀⣻⡇⠀⠀⣾⡇⣾   ⡇⠀⠀⠀⣿⠇⠀⣸⡟⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⢠⡿⠀⠀⠀⣿⠇⠀⠀⠀⠀⠀⢹⡇⠀⠀⢿⡇⠈⠙⠉⠉⠀⠀⠀⠀⠿⣶⠾⠟⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠘⢷⣶⣶⠾⠏⠀⠀⠀⠀⠀⠀⢸⣇⣀⡀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[ ]],
			[[ ]],
			[[     ━━━━━━━━━━━━  ❖  ━━━━━━━━━━━━]],
		}
		dashboard.section.header.opts = { hl = "dashboard" }

		-- MRU
		local function mru_title()
			return "  ❖  Current Project  ▌  " .. vim.fn.getcwd()
		end

		dashboard.section.mru.val[2].val = "  ❖  Recent Files"
		dashboard.section.mru.val[2].opts = { hl = "dashboardBold" }
		dashboard.section.mru_cwd.val[2].val = mru_title
		dashboard.section.mru_cwd.val[2].opts = { hl = "dashboardBold" }
		dashboard.section.footer.type = "text"
		dashboard.section.footer.val = {
			[[ ]],
			[[ ]],
			[[     ━━━━━━━━━━━━  ❖  ━━━━━━━━━━━━]],
			[[ ]],
			"           " .. stats.count .. " plugins loaded",
		}
		dashboard.section.footer.opts = { hl = "dashboard" }
		alpha.setup(dashboard.opts)
	end,
}
