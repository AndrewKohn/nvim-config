-- MODES
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = "c",
-----------------------------------------------------------
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "Q", "<nop>")

-- move selected text up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keeps search terms in middle of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Allows replacing the word (eg. variable) and changes all instances within the file
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-----------------------------------------------------------
-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-----------------------------------------------------------
-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<a-1>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<a-2>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<a-3>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<a-4>", function() ui.nav_file(4) end)

-----------------------------------------------------------
-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-----------------------------------------------------------
-- vim-fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-----------------------------------------------------------
-- neoscroll
require('neoscroll').setup({
  easing_function = "quadratic",
  mappings = { "zt", "zz", "zb" },
})

local t = {}
t['<C-[>'] = { 'scroll', { '-vim.wo.scroll', 'true', '250' } }
t['<C-]>'] = { 'scroll', { 'vim.wo.scroll', 'true', '250' } }

require('neoscroll.config').set_mappings(t)

-----------------------------------------------------------
-- zen-mode
vim.keymap.set("n", "<leader>zm", vim.cmd.ZenMode)

-----------------------------------------------------------
