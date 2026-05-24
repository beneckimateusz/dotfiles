return {
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "erb-formatter" } },
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ruby = { "rubocop" },
        eruby = { "erb_format" },
      },
      formatters = {
        erb_format = {
          append_args = { "--print-width", "120" },
        },
      },
    },
  },
}
