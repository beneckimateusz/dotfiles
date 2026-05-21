return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = true,
        exclude = { "go" },
      },
      servers = {
        copilot = { enabled = false },
        emmet_language_server = { enabled = true },
        elixirls = { enabled = true },
        expert = { enabled = false },
        gopls = {
          settings = {
            gopls = {
              completeFunctionCalls = false,
            },
          },
        },
      },
    },
  },
}
