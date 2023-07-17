vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use ({
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    })
    use ({
        'rebelot/kanagawa.nvim',    -- wave, dragon, lotus
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'kanagawa-dragon'
        end,
    })
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ('nvim-treesitter/playground')
    use ('ThePrimeagen/harpoon')
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')
    use ({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
        }
    })
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'lukas-reineke/indent-blankline.nvim'
    -- use 'metakirby5/codi.vim'    -- neat, but only js interpreter works?
    use 'karb94/neoscroll.nvim'
    use { "bluz71/vim-moonfly-colors", as = "moonfly" }
    use({
        'mvllow/modes.nvim',
        tag = 'v0.2.0',
    })
    use 'norcalli/nvim-colorizer.lua'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }
    use({
        "j-hui/fidget.nvim",
        config = function()
            require("fidget").setup()
        end,
        tag = "legacy",
        requires = { "neovim/nvim-lspconfig" }
    })
    use 'folke/trouble.nvim'
    use 'folke/todo-comments.nvim'
end)
