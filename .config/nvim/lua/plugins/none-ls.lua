return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "mason-org/mason.nvim" },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local nls = require("null-ls")

      nls.setup({
        sources = {
          -- js, css, html, json, yaml, markdown
          nls.builtins.formatting.prettier,

          -- sql
          nls.builtins.diagnostics.sqlfluff.with({
            extra_args = { "--dialect", "postgres" },
          }),

          -- lua
          nls.builtins.formatting.stylua,

          -- docker
          nls.builtins.diagnostics.hadolint,

          -- elixir
          nls.builtins.diagnostics.credo.with({
            condition = function(utils)
              return utils.root_has_file(".credo.exs")
            end,
          }),
          nls.builtins.formatting.mix,

          -- ruby
          nls.builtins.formatting.rubocop,
          nls.builtins.formatting.erb_format,
          nls.builtins.diagnostics.erb_lint,

          -- go
          nls.builtins.code_actions.gomodifytags,
          nls.builtins.code_actions.impl,
          nls.builtins.formatting.goimports,
          nls.builtins.formatting.gofumpt,
          nls.builtins.diagnostics.golangci_lint,
        },
      })
    end,
    keys = {
      { "<leader>cf", vim.lsp.buf.format, desc = "Format (current buffer)" },
      { "<leader>cF", "<cmd>NullLsInfo<cr>", desc = "Null-ls info" },
    },
  },
}
