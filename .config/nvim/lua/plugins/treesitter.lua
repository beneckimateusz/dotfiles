return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "RRethy/nvim-treesitter-endwise" },
    opts = {
      ensure_installed = { "ruby", "embedded_template" },

      indent = {
        disable = {
          "yaml",
          "elixir",
          "ruby",
        },
      },

      endwise = { enable = true },
    },
  },
}
