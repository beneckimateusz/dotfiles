return {
  {
    "navarasu/onedark.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      style = "darker",
    },
  },

  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
