-- kanagawa
-- default at startup : 'kanagawa-dragon'
-- themes: -wave, -dragon, -lotus

return {
    'rebelot/kanagawa.nvim', -- wave, dragon, lotus
    priority = 1000,
    config = function()
        vim.cmd.colorscheme 'kanagawa-dragon'
    end,
}
