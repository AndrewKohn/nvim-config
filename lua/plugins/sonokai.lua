-- sonokai
-- comment all styles to enable default theme

return {
    'sainnhe/sonokai',
    priority = 1000,
    config = function()
        vim.g.sonokai_better_performance = 1

        --vim.g.sonokai_style = "atlantis"
        --vim.g.sonokai_style = "andromeda"
        vim.g.sonokai_style = "shusia"
        --vim.g.sonokai_style = "maia"
        --vim.g.sonokai_style = "espresso"
    end
}
