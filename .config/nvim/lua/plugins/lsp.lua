return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = true,
        exclude = { "go" },
      },
      servers = {
        copilot = { enabled = false }, -- included by ai.sidekick extra

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

        emmet_language_server = {
          enabled = true,
          -- inspired by: https://github.com/LazyVim/LazyVim/blob/35f56b9189f2536c806f488c5d889a6000d3eb5f/lua/lazyvim/plugins/extras/lang/tailwind.lua#L43-L59
          filetypes_include = { "eelixir", "elixir", "html-eex", "heex" },
        },
        tailwindcss = { -- the extra is not up to date with v4 and current nvim-lspconfig defaults
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = {
                  [[class= "([^"]*)]],
                  [[class: "([^"]*)]],
                },
              },
            },
          },
        },
      },
      setup = {
        emmet_language_server = function(_, opts)
          opts.filetypes = opts.filetypes or {}

          -- Add default filetypes
          vim.list_extend(opts.filetypes, vim.lsp.config.emmet_language_server.filetypes)

          -- Add additional filetypes
          vim.list_extend(opts.filetypes, opts.filetypes_include or {})
        end,
      },
    },
  },
}
