# nvim-config

![nvim dashboard](https://github.com/AndrewKohn/nvim-config/blob/main/images/Screenshot%20from%202024-02-19%2009-31-56.png)

### Table of Contents

- [Description](#description)
- [Requirements](#requirements)
- [Usage](#usage)
- [Plugins](#plugins)
- [Notes](#notes)
- [Showcase](#showcase)

## Description

My own neovim dotfile config. I know it's not the best, but being able to go through docs and do the configurations on my own helped me learn and transition to neovim as my main code editor. I personally use nvim with tmux, but it's not necessary. This config used to utilize packer, but has fully switched to lazy plugin manager.

Keymaps can be viewed in the `/user` directory. `<space>` is set as the `<leader>` character in this nvim config.

This nvim's colorscheme is set to `rebelot/kanagawa.nvim` (dragon). The only two visually-customized plugins are:

- `lua/indent-blanklines`
- `lua/lualine`

Update these plugins to match your colorscheme.

## Requirements

- `neovim` : `v0.10.2` (lazy will break with v0.11. This is fine...for now)
- `repgrip`
- `hack nerd font` : to enable proper icon displays
- `:checkhealth` : to find other missing dependencies

## Usage

1. clone git.

```
git clone https://github.com/AndrewKohn/nvim-config.git
```

2. Rename `/nvim-config` to `/nvim`.
3. Start neovim & allow lazy plugin manager to download/update plugins.
4. `:checkhealth` command to ensure plugins will operate.

The welcome dashboard displays recent files in the workspace. It's best to open neovim on your project's current working directory in order to have the most relevant recent files.

## Plugins

Lazy plugin manager will download/install plugins on startup. Use `:Lazy` to bring up the plugin menu.

Plugins may have dependencies that will be automatically downloaded in order to functionally operate and may not be present in this list.

| Plugin                                                                     | Function                                               | Enabled |
| -------------------------------------------------------------------------- | ------------------------------------------------------ | ------- |
| [alpha](https://github.com/goolord/alpha-nvim)                             | welcome screen/dashboard                               | ✅      |
| [autoclose](https://github.com/m4xshen/autoclose.nvim)                     | auto pair/close brackets                               | ✅      |
| [colorizer](https://github.com/norcalli/nvim-colorizer.lua)                | color highlighter                                      | ✅      |
| [comment](https://github.com/numToStr/Comment.nvim)                        | easy file commenting                                   | ✅      |
| [deadcolumn](https://github.com/Bekaboo/deadcolumn.nvim)                   | gradually shows colorcolumn >=80 characters            | ✅      |
| [fidget](https://github.com/j-hui/fidget.nvim)                             | lsp progress ui                                        | ✅      |
| [fugitive](https://github.com/tpope/vim-fugitive)                          | git                                                    | ✅      |
| [gitsigns](https://github.com/lewis6991/gitsigns.nvim)                     | git decorations                                        | ✅      |
| [harpoon](https://github.com/ThePrimeagen/harpoon)                         | file marker/jumper                                     | ✅      |
| [highlightedyank](https://github.com/machakann/vim-highlightedyank)        | highlight yanked text                                  | ✅      |
| [illuminate](https://github.com/RRethy/vim-illuminate)                     | highlights multiple instances of a word under cursor   | ✅      |
| [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) | visual aid for tab/spaces and scope context            | ✅      |
| [kanagawa](https://github.com/rebelot/kanagawa.nvim)                       | colorscheme                                            | ✅      |
| [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)                   | lsp                                                    | ✅      |
| [lualine](https://github.com/nvim-lualine/lualine.nvim)                    | statusline                                             | ✅      |
| [neoscroll](https://github.com/karb94/neoscroll.nvim)                      | smooth scrolling                                       | ✅      |
| [noice](https://github.com/folke/noice.nvim)                               | notifications                                          | ✅      |
| [none-ls](https://github.com/nvimtools/none-ls.nvim)                       | (null-ls) lsp formatter/diagnostic                     | ✅      |
| [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar)             | visual aid for scrollbar (w/ gitsigns and diagnostics) | ✅      |
| [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)                    | file explorer                                          | ✅      |
| [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)               | autoclose/autorename html tags                         | ✅      |
| [pretty-hover](https://github.com/Fildo7525/pretty_hover)                  | parses hover message for readability                   | ✅      |
| [sonokai](https://github.com/sainnhe/sonokai)                              | colorscheme                                            | ❌      |
| [telescope](https://github.com/nvim-telescope/telescope.nvim)              | fuzzy finder                                           | ✅      |
| [todo-comments](https://github.com/folke/todo-comments.nvim)               | highlight comment keywords & lines                     | ✅      |
| [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)           | parsing library                                        | ✅      |
| [trouble](https://github.com/folke/trouble.nvim)                           | quick diagnostics list                                 | ✅      |
| [undotree](https://github.com/mbbill/undotree)                             | undo history visualizer                                | ✅      |
| [which-key](https://github.com/folke/which-key.nvim)                       | displays popup of possible keymaps                     | ❌      |
| [zen-mode](https://github.com/folke/zen-mode.nvim)                         | focused code production, hides most features           | ✅      |

<!--- --------------------------------------------------------------- Removed plugins ----------------------------------------------------------------- --->
<!--- | [conform](https://github.com/stevearc/conform.nvim)                        | format on save                                         | ✅      | --->

- `sonokai` : `kanagawa-dragon` is the default colorscheme. Use `:colorscheme sonokai` to enable.
- `which-key` : uncomment code in `lua/which-key` to enable. Nice way to show keymaps w/o going into the keymap.lua file, especially if coming back from vscode/intellij.

## Notes

- `ui-select` would be nice to have for telescope. Issues with opening code action menu. Probably watch and wait for that pending PR that solves this issue.
- install/configure DAP.
- Look into more java-focused productivity. Nvim works but not enough for me to switch from intellij at this moment.

## Showcase

###### Sample diagnostics info/comment highlighting

![nvim screenshot1](https://github.com/AndrewKohn/nvim-config/blob/main/images/Screenshot%20from%202024-02-18%2018-34-15.png)

###### Nvim-tree opened

![Nvim screenshot2](https://github.com/AndrewKohn/nvim-config/blob/main/images/Screenshot%20from%202024-02-18%2018-34-57.png)

###### Vertical diff

![Nvim screenshot3](https://github.com/AndrewKohn/nvim-config/blob/main/images/Screenshot%20from%202024-02-18%2019-32-22.png)

###### Telescope file results

![Nvim screenshot4](https://github.com/AndrewKohn/nvim-config/blob/main/images/Screenshot%20from%202024-02-18%2019-34-25.png)
