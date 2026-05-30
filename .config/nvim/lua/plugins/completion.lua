return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        -- Things 3 conflict
        ["<C-j>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-space>"] = false,
      },
    },
  },

  -- https://github.com/LazyVim/LazyVim/discussions/2248
  -- fixes the annoying <tag><CR> behavior
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },
  {
    "nvim-mini/mini.pairs",
    enabled = false,
  },
}
