return {
  {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },

    -- use a release tag to download pre-built binaries
    version = "1.*",

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- 'enter' for enter to accept
      -- C-j: Open menu or open docs if already open
      -- C-n/C-p or Up/Down: Select next/previous item
      -- C-e: Hide menu
      -- C-k: Toggle signature help (if signature.enabled = true)
      keymap = {
        preset = "enter",
        ["<C-j>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-space>"] = false,
      },
    },
  },
}
