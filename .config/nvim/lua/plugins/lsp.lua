return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = true,
        exclude = { "go" },
      },
      servers = {
        copilot = { enabled = false }, -- included by sidekick.nvim

        elixirls = { enabled = true },
        expert = { enabled = false },

        gopls = {
          settings = {
            gopls = {
              completeFunctionCalls = false,
            },
          },
        },

        ruby_lsp = { enabled = true },
        rubocop = { enabled = true },
        herb_ls = { enabled = true },

        emmet_language_server = { enabled = true },
        tailwindcss = {
          settings = {
            tailwindCSS = {
              experimental = {
                -- TODO: classes in arrays
                classRegex = { "\\bclass:\\s*['\"]([^'\"]*)['\"]" }, -- erb
              },
            },
          },
        },
      },
    },
  },
}
