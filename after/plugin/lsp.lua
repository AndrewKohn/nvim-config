require('mason').setup()
require('mason-lspconfig').setup()

local lsp = require('lsp-zero').preset({})
local coq = require('coq')

lsp.extend_cmp()
lsp.on_attach(function(client, bufnr)
    -- )
    lsp.default_keymaps({buffer = bufnr})
end)

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

-- TODO: tsserver, jdtls, etc...
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
require('lspconfig').tsserver.setup{}
--require('lspconfig').tsserver.setup(coq.lsp_ensure_capabilities{})
lsp.setup()

-- CMP
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
        completion = {
        autocomplete = false
    },
    mapping = {
        ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
        ['<Enter>'] = cmp.mapping.confirm({select = true}),
        ['<C-Space>'] = cmp.mapping.complete(),
    }
})
