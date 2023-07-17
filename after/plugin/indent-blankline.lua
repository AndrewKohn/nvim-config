vim.opt.list = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#393836 guibg=#181616 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#4C494A guibg=#1A1919 gui=nocombine]]

-- listchars
vim.opt.listchars:append({ tab = '▶‒' })
-- vim.opt.listchars:append({ lead = '…' })
vim.opt.listchars:append({ trail = '·' })
vim.opt.listchars:append({ nbsp = '␣' })
vim.opt.listchars:append({ extends = '❯' })
vim.opt.listchars:append({ precedes = '❮' })
-- vim.opt.listchars:append({ eol = '¬' })

require('indent_blankline').setup {
	char = '┊',
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
	show_current_context = true,
	show_current_context_start = true,
	show_trailing_blankline_indent = false,
}
