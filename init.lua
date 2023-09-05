require('user.keymaps')
require('user.packer')
require('user.set')
vim.g.coq_settings = {
    keymap = {
        jump_to_mark = '',  -- NOTE: <C-h> is currently used in Harpoon.
    },
    auto_start = 'shut-up'
}
require('coq')
