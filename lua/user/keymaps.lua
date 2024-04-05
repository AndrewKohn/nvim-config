-- NOTE : Global vim keymaps

-- MODES
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = "c",
-----------------------------------------------------------
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle, { desc = "NvimTree: toggle tree" })
vim.keymap.set("n", "Q", "<nop>")

-- move selected text up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Vim: move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Vim: move selection up" })

-- keeps search terms in middle of screen
vim.keymap.set("n", "n", "nzzzv", { desc = "Vim: go to previous search" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Vim: go to next search" })

-- Allows replacing the word (eg. variable) and changes all instances within the file
vim.keymap.set(
	"n",
	"<leader>s",
	":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>",
	{ desc = "Vim: refactor variable" }
)

-- code actions
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Vim: code actions" })

-- Organize imports (js/ts)
vim.keymap.set("n", "<leader>oi", function()
	vim.lsp.buf.execute_command({
		command = "_typescript.organizeImports",
		arguments = { vim.fn.expand("%:p") },
	})
end, { desc = "Typescript: Organize imports" })

-- diagnostic float on cursor
vim.cmd([[autocmd CursorMoved * lua vim.diagnostic.open_float()]])
