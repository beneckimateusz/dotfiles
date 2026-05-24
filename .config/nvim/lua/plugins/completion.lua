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
}

