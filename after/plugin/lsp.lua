local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.preset('recommend')

lsp.ensure_installed({
  -- Replace these with whatever servers you want to install
  'tsserver',
  'eslint',
  'rust_analyzer',
  'jdtls',
  'html',
  'cssls',
  'jsonls',
  'sqlls',
  'pyright',
})

-- setup language servers
local lspConfig = require('lspconfig')
lspConfig.lua_ls.setup(lsp.nvim_lua_ls())
lspConfig.pyright.setup{}
lspConfig.tsserver.setup({
    on_attach = lsp.on_attach,
    root_dir = lspConfig.util.root_pattern('package.json', 'tsconfig.json', 'jsconfig.json', '.git'),
})
-- lspConfig.jdtls.setup{}
-- lspConfig.html.setup{}
-- lspConfig.cssls.setup{}
-- lspConfig.jsonls.setup{}
-- lspConfig.sqlls.setup{}
-- lspConfig.rust_analyzer.setup{}

lsp.setup()
