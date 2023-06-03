# Bamboo.nvim

Dark blue theme for Neovim $\ge$ 0.5 forked from
[Bamboo.nvim](https://github.com/ribru17/bamboo.nvim). Theme written in Lua
with [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter) syntax
highlighting.

_For latest [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
syntax highlighting, upgrade to Neovim 0.8.0 or later, built with Tree-sitter
0.20.3+._

### Features

- Blue and purple are used sparingly to help reduce eye strain
- Red, yellow, and green are prioritized more for the same reason
- Comments are colored specifically to be readable and have good contrast with
  other text and background
- _Many_ semantic highlighting tokens are handled and colored nicely
- Multiple plugins are supported with hand-picked, proper colors
- `Colors`, `Highlights` and `Code style` of the theme can be customized as you
  like (Refer to [Customization](#customization))

_NOTE:_ The above screenshots utilize Tree-sitter parsers for `lua`, `markdown`,
`markdown_inline`, `mermaid`, and `latex`.

## Installation

Install via your favorite package manager:

```lua
-- Using lazy.nvim
{
  'ribru17/iceberg.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('iceberg').setup {
      -- optional configuration here
    }
    require('iceberg').load()
  end,
}
```

**NOTE:** For best results, use (rounded) borders for float windows (or change
their background to a slightly different color than the main editor background).

## Configuration

### Enable theme

```lua
-- Lua
require('iceberg').load()
```

```vim
" Vim
colorscheme iceberg
```

## Default Configuration

```lua
-- Lua
require('iceberg').setup  {
    -- Main options --
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = false, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
```

### Vimscript Configuration

Bamboo can be configured also with Vimscript, using the global dictionary
`g:iceberg_config`. **NOTE**: when setting boolean values use `v:true` and
`v:false` instead of 0 and 1.

Example:

```vim
let g:iceberg_config = {
  \ 'ending_tildes': v:true,
  \ 'diagnostics': {
    \ 'darker': v:true,
    \ 'background': v:false,
  \ },
\ }
colorscheme iceberg
```

## Customization

Example using custom colors and highlights:

```lua
require('iceberg').setup {
  colors = {
    bright_orange = "#ff8800",    -- define a new color
    green = '#00ffaa',            -- redefine an existing color
  },
  highlights = {
    ["@keyword"] = {fg = '$green'},
    ["@string"] = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
    ["@function"] = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
    ["@function.builtin"] = {fg = '#0059ff'}
  }
}
```

Note that Tree-sitter keywords have been changed after Neovim version 0.8 and
onwards. TS prefix is trimmed and lowercase words are separated with `.`.

The old way before neovim 0.8 looks like this. All highlights used in this
colorscheme can be found in
[this file](https://github.com/ribru17/iceberg.nvim/blob/master/lua/bamboo/highlights.lua).

```lua
require('iceberg').setup {
  colors = {
    bright_orange = "#ff8800",    -- define a new color
    green = '#00ffaa',            -- redefine an existing color
  },
  highlights = {
    TSKeyword = {fg = '$green'},
    TSString = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
    TSFunction = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
    TSFuncBuiltin = {fg = '#0059ff'}
  }
}
```

## Plugins Supported

- [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSPDiagnostics](https://neovim.io/doc/user/lsp.html)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [WhichKey](https://github.com/folke/which-key.nvim)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [GitGutter](https://github.com/airblade/vim-gitgutter)
- [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
- [VimFugitive](https://github.com/tpope/vim-fugitive)
- [DiffView](https://github.com/sindrets/diffview.nvim)
- [Hop](https://github.com/phaazon/hop.nvim)
- [Mini](https://github.com/echasnovski/mini.nvim)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Neotest](https://github.com/nvim-neotest/neotest)
- [Barbecue](https://github.com/utilyre/barbecue.nvim)

## Reference

- [onedark.nvim](https://github.com/navarasu/onedark.nvim)
- [Catppuccin for Neovim](https://github.com/catppuccin/nvim)
- [tokyodark.nvim](https://github.com/tiagovla/tokyodark.nvim)
- [one-dark-theme](https://github.com/andresmichel/one-dark-theme)
- [iceberg for vim](https://github.com/cocopon/iceberg.vim)

## License

[MIT](https://choosealicense.com/licenses/mit/)
