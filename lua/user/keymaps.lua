-- MODES
  -- normal_mode = "n",
  -- insert_mode = "i",
  -- visual_mode = "v",
  -- visual_block_mode = "x",
  -- term_mode = "t",
  -- command_mode = "c",
------------------------------------
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)


-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)


-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)


-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)


-- vim-fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)


-- neoscroll
require('neoscroll').setup({
    easing_function = "quadratic",
    mappings = { "zt", "zz", "zb"},
})

local t = {}
t['<C-[>'] = {'scroll', {'-vim.wo.scroll', 'true', '250'}}
t['<C-]>'] = {'scroll', { 'vim.wo.scroll', 'true', '250'}}

require('neoscroll.config').set_mappings(t)
