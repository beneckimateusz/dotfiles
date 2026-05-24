return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "ruby", "embedded_template" },

      indent = {
        disable = {
          "yaml",
          "elixir",
          "ruby",
        },
      },
    },
  },
}

