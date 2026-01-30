return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = true,
        exclude = { "go" },
      },
      servers = {
        tailwindcss = {
          init_options = {
            userLanguages = {
              elixir = "html",
              heex = "html",
            },
          },
        },
        elixirls = { enabled = false },
        expert = {},
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
