return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    default_format_opts = {
      -- LSP formatting is used when no other formatters are available
      lsp_format = "fallback",
    },
    -- formatters need to be pre-installed, e.g. via mason.lua
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      jsonc = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      astro = { "prettier" },
      elixir = { "mix" },
      ruby = { "rubocop" },
      eruby = { "erb_format" },
      go = { "goimports", "gofumpt" },
      sh = { "shfmt" },
    },
    formatters = {
      erb_format = {
        append_args = { "--print-width", "120" },
      },
    },
    format_on_save = {
      timeout_ms = 500,
    },
  },
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({ async = true })
      end,
      mode = "",
      desc = "Format (current buffer)",
    },
    { "<leader>cF", "<cmd>ConformInfo<cr>", desc = "Conform info" },
  },
}
