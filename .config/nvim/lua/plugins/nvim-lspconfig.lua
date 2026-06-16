return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
    },
    config = function()
      local servers = {
        "tailwindcss",
        "elixirls",
        "emmet_language_server",
        "gopls",
        "tsgo",
        "astro",
        "jsonls",
        "yamlls",
        "taplo", -- toml
        "marksman", -- markdown
        "bashls",

        -- python
        "basedpyright",
        "ruff",

        -- ruby
        "rubocop",
        "ruby_lsp",
        "herb_ls",

        -- lua
        "lua_ls",
        "stylua",

        -- docker
        "dockerls",
        "docker_compose_language_service",
      }
      require("mason-lspconfig").setup({ ensure_installed = servers })

      vim.lsp.config("gopls", {
        settings = {
          gopls = {
            completeFunctionCalls = false,
          },
        },
      })

      local emmet = vim.lsp.config["emmet_language_server"]
      vim.lsp.config("emmet_language_server", {
        filetypes = vim.list_extend({ "eelixir", "html-eex", "heex" }, emmet and emmet.filetypes or {}),
      })

      vim.lsp.config("tailwindcss", {
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
      })

      vim.lsp.config("jsonls", {
        settings = {
          json = {
            schemas = require("schemastore").json.schemas(),
            validate = { enable = true },
          },
        },
      })

      vim.lsp.config("yamlls", {
        settings = {
          yaml = {
            schemaStore = {
              -- You must disable built-in schemaStore support if you want to use
              -- this plugin and its advanced options like `ignore`.
              enable = false,
              -- Avoid TypeError: Cannot read properties of undefined (reading 'length')
              url = "",
            },
            schemas = require("schemastore").yaml.schemas(),
          },
        },
      })

      vim.lsp.enable(servers)
    end,
    keys = {
      { "<leader>cL", "<cmd>checkhealth vim.lsp<cr>", desc = "LSP info" },
    },
  },
}
