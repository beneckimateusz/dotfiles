return {
  "mfussenegger/nvim-lint",
  config = function()
    local lint = require("lint")

    -- nvim-lint has no LSP awareness, only configure linters here that
    -- aren't already surfaced by an attached LSP to avoid duplicate diagnostics
    -- linters need to be pre-installed, e.g. via mason.lua
    lint.linters_by_ft = {
      sql = { "sqlfluff" },
      dockerfile = { "hadolint" },
      elixir = { "credo" },
      eruby = { "erb_lint" },
      go = { "golangci_lint" },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
