return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
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
