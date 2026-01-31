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
        elixirls = { enabled = false },
        expert = {},
        gopls = {
          settings = {
            gopls = {
              completeFunctionCalls = false,
            },
          },
        },
        tailwindcss = {
          init_options = {
            userLanguages = {
              elixir = "html",
              heex = "html",
            },
          },
        },
      },
    },
  },
}
