return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "RRethy/nvim-treesitter-endwise" },
    opts = {
      ensure_installed = { "ruby", "embedded_template", "elixir", "heex", "eex" },

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
