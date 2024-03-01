-- none-ls
-- community-maintained null-ls fork

return {
    "nvimtools/none-ls.nvim",
    config = function()
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua, -- lua
                null_ls.builtins.formatting.prettier, -- js/ts formatter
                null_ls.builtins.formatting.black, -- python
                --null_ls.builtins.completion.spell,
            },
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({
                                bufnr = bufnr,
                                filter = function()
                                    return client.name == "null-ls"
                                end,
                            })
                        end,
                    })
                end
            end,
        })
    end,
}
