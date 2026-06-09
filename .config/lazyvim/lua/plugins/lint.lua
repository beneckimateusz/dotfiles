return {
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "erb-lint" } },
  },

  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = {}, -- disable markdown lint
        elixir = { "credo" },
      },
    },
  },
}
