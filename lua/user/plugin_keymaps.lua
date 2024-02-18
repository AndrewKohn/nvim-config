-- NOTE:
-- Keymaps placed here may not necessarily use plugin-specific commands.
-- Even if it's a global setting, the keymap/setting at least shows some
-- reference and/or relation to the plugin.

-----------------------------------------------------------
-- nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-----------------------------------------------------------
-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Telescope: find files" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Telescope: git files" })
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Telescope: grep" })
vim.keymap.set("n", "<leader>ph", builtin.help_tags, { desc = "Telescope: help tags" })
vim.keymap.set("n", "<leader>pb", builtin.buffers, { desc = "Telescope: buffers" })
vim.keymap.set("n", "<leader>pm", ":Telescope harpoon marks<CR>", { desc = "Telescope: harpoon marks" })
vim.keymap.set("n", "<leader>pn", ":Telescope noice<CR>", { desc = "Telescope: noice notifications" })

-----------------------------------------------------------
-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon: add file" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Harpoon: toggle menu" })

vim.keymap.set("n", "<a-1>", function()
	ui.nav_file(1)
end, { desc = "Harpoon: mark 1 jump" })
vim.keymap.set("n", "<a-2>", function()
	ui.nav_file(2)
end, { desc = "Harpoon: mark 2 jump" })
vim.keymap.set("n", "<a-3>", function()
	ui.nav_file(3)
end, { desc = "Harpoon: mark 3 jump" })
vim.keymap.set("n", "<a-4>", function()
	ui.nav_file(4)
end, { desc = "Harpoon: mark 4 jump" })

-----------------------------------------------------------
-- trouble
local trouble = require("trouble")
vim.keymap.set("n", "<leader>tt", function()
	trouble.toggle()
end, { desc = "Trouble: toggle menu" })
vim.keymap.set("n", "<leader>tw", function()
	trouble.toggle("workspace_diagnostics")
end, { desc = "Trouble: toggle workspace diagnostics" })
vim.keymap.set("n", "<leader>td", function()
	trouble.toggle("document_diagnostics")
end, { desc = "Trouble: toggle document diagnostics" })
vim.keymap.set("n", "<leader>tq", function()
	trouble.toggle("quickfix")
end, { desc = "Trouble: toggle quickfix" })
vim.keymap.set("n", "<leader>tl", function()
	trouble.toggle("loclist")
end, { desc = "Trouble: toggle loclist" })
vim.keymap.set("n", "<leader>tr", function()
	trouble.toggle("lsp_references")
end, { desc = "Trouble: toggle lsp refs" })

-----------------------------------------------------------
-- zen-mode
vim.keymap.set("n", "<leader>zm", vim.cmd.ZenMode, { desc = "Zen-mode: toggle" })

-----------------------------------------------------------
-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Undotree: toggle sidebar" })

-----------------------------------------------------------
-- vim-fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Fugitive: git" })
vim.keymap.set("n", "<leader>ds", vim.cmd.Gvdiffsplit, { desc = "Fugitive: vertical split" })

-----------------------------------------------------------
-- neoscroll
require("neoscroll").setup({
	easing_function = "quadratic",
	mappings = { "zt", "zz", "zb" },
})

local t = {}
t["<C-[>"] = { "scroll", { "-vim.wo.scroll", "true", "250" } }
t["<C-]>"] = { "scroll", { "vim.wo.scroll", "true", "250" } }

require("neoscroll.config").set_mappings(t)

-----------------------------------------------------------
-- gitsigns
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {
	desc = "Gitsigns: preview hunk",
})
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {
	desc = "Gitsigns: toggle blame current line",
})

-----------------------------------------------------------
-- none-ls (null-ls)
vim.keymap.set("n", "ff", vim.lsp.buf.format, {
	desc = "Vim: format file",
})

-----------------------------------------------------------
-- pretty_hover
vim.keymap.set("n", "K", function()
	require("pretty_hover").hover()
end, { desc = "pretty_hover: display hover info" })

-----------------------------------------------------------
-- comment
-- NOTE: <C-_> = ctrl + /
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false, desc = "Comment: comment line" })
vim.api.nvim_set_keymap("v", "<C-_>", "gc", { noremap = false, desc = "Comment: comment selection" })

-----------------------------------------------------------
