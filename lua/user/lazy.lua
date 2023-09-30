local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- colorscheme
  {
    'rebelot/kanagawa.nvim', -- wave, dragon, lotus
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'kanagawa-dragon'
    end,
  },

  -- lsp-zero
  {
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      lazy = true,
      config = false,
    },
    {
      'neovim/nvim-lspconfig',
      dependencies = {
        { 'hrsh7th/cmp-nvim-lsp' },
      }
    },
    {
      'hrsh7th/nvim-cmp',
      dependencies = {
        { 'L3MON4D3/LuaSnip' }
      },
    },
  },

  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
  },

  -- harpoon
  { 'ThePrimeagen/harpoon' },

  -- plenary
  { 'nvim-lua/plenary.nvim' },

  -- nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- fidget
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    config = function()
      require("fidget").setup()
    end,
    -- requires = { "neovim/nvim-lspconfig" }
  },

  -- trouble
  { 'folke/trouble.nvim' },

  -- to-do comments
  { 'folke/todo-comments.nvim' },

  -- zen-mode
  {
    'folke/zen-mode.nvim',
    config = function()
      require("zen-mode").setup {
        window = {
          backdrop = 0.95,
          width = 0.85,
          height = 0.95,
          options = {
            number = false,
            relativenumber = false,
          },
        }
      }
    end
  },
  -- twilight
  { 'folke/twilight.nvim' },

  -- coq
  {
    'ms-jpq/coq_nvim',
    branch = 'coq',
  },
  {
    'ms-jpq/coq.artifacts',
    branch = 'artifacts',
  },
  {
    'ms-jpq/coq.thirdparty',
    branch = '3p',
  },

  -- colorizer
  { 'norcalli/nvim-colorizer.lua' },

  -- moonfly
  { "bluz71/vim-moonfly-colors",  as = "moonfly" },

  -- lualine
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },

  -- neoscroll
  { 'karb94/neoscroll.nvim' },

  -- indent-blankline
  { 'lukas-reineke/indent-blankline.nvim', version = 'v2.20.8' },
  -- v3
  --{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  -- undotree
  { 'mbbill/undotree' },

  -- conform
  {
    'stevearc/conform.nvim',
    opts = {},
  },

  -- fugitive
  { 'tpope/vim-fugitive' },
})
