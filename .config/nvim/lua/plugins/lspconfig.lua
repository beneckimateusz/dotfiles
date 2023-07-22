return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false,

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
