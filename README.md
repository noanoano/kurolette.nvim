# 🖤💜 Kurolette - Gothic × KAWAII Neovim Colorscheme

<div align="center">

![Kurolette](https://img.shields.io/badge/colorscheme-kurolette-E879F9?style=for-the-badge)
![Neovim](https://img.shields.io/badge/neovim-0.8+-9A73F3?style=for-the-badge\&logo=neovim)
![License](https://img.shields.io/badge/license-Apache--2.0-B19CD9?style=for-the-badge)

*A beautiful dark colorscheme blending Gothic aesthetics with KAWAII elements*

![Preview](/images/kurolette.png)

</div>

## ✨ Features

* 🖤 **Gothic × KAWAII** design with a playful dark aesthetic
* 💜 **Rich purple palette** with carefully crafted color harmony
* 🌈 **Tree-sitter support** with semantic highlighting
* 🔍 **LSP integration** with beautiful diagnostic colors
* 🚀 **Plugin support** for Telescope, NvimTree, GitSigns, and more
* 🌟 **Customizable options** (transparent background, italic comments, etc.)

## 📦 Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "noanoano/kurolette.nvim",
  priority = 1000,
  config = function()
    require("kurolette").setup()
    vim.cmd.colorscheme("kurolette")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "noanoano/kurolette.nvim",
  config = function()
    require("kurolette").setup()
    vim.cmd.colorscheme("kurolette")
  end
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'noanoano/kurolette.nvim'
```

Then in your `init.lua`:

```lua
require("kurolette").setup()
vim.cmd.colorscheme("kurolette")
```

## ⚙️ Configuration

### Default Configuration

```lua
require("kurolette").setup({
  transparent = false,        -- Enable transparent background
  italic_comments = true,     -- Make comments italic
  bold_keywords = true,       -- Make keywords bold
  override_terminal = true,   -- Override terminal colors
})
```

### Transparent Background

Perfect for terminal users who want to show their wallpaper.

```lua
require("kurolette").setup({ transparent = true })
```

## 🎨 Color Palette

| Color             | Hex       | Usage                        |
| ----------------- | --------- | ---------------------------- |
| **Purple Bright** | `#E879F9` | Keywords, Important elements |
| **Purple Light**  | `#B19CD9` | Variables, Soft elements     |
| **Purple Mid**    | `#9370DB` | Operators, Balanced elements |
| **Purple Neon**   | `#DA70D6` | Search, Numbers, Highlights  |
| **Pink Light**    | `#E879F9` | Strings, Soft accents        |
| **Background**    | `#211816` | Main background              |
| **Foreground**    | `#F0EFFF` | Main text                    |

## 🔌 Supported Plugins

* [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [LSP](https://github.com/neovim/nvim-lspconfig)
* [Telescope](https://github.com/nvim-telescope/telescope.nvim)
* [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)
* [GitSigns](https://github.com/lewis6991/gitsigns.nvim)

## 📜 License

Apache-2.0 License - see [LICENSE](LICENSE) file for details.

---

<div align="center">

**Made with 🖤💜 for the Gothic × KAWAII aesthetic**
This README was generated with the help of AI.

</div>

