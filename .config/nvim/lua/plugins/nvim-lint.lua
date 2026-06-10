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

    local default_credo = lint.linters.credo
    lint.linters.credo = function()
      if vim.fs.find({ ".credo.exs" }, { upward = true })[1] then
        return default_credo
      end
      return nil
    end

    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
