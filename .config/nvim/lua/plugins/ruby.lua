return {
  -- adjusted to my preferences: https://www.lazyvim.org/extras/lang/ruby

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "ruby", "embedded_template" },
      -- indent = {
      --   disable = {
      --     "ruby",
      --   },
      -- },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = { enabled = true },
        rubocop = { enabled = true },
        herb_ls = { enabled = true },
        tailwindcss = {
          settings = {
            tailwindCSS = {
              experimental = {
                -- TODO: classes in arrays
                classRegex = { "\\bclass:\\s*['\"]([^'\"]*)['\"]" },
              },
            },
          },
        },
      },
    },
  },

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ruby = { "rubocop" },
      },
    },
  },

  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "erb-lint" } },
  },

  -- Testing
  {
    "zidhuss/neotest-minitest",
  },
  {
    "olimorris/neotest-rspec",
  },

  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "zidhuss/neotest-minitest",
      "olimorris/neotest-rspec",
    },
    opts = {
      adapters = {
        ["neotest-minitest"] = {},
        ["neotest-rspec"] = {},
      },
    },
  },

  -- Debugging
  {
    "suketa/nvim-dap-ruby",
    config = function()
      require("dap-ruby").setup()
    end,
  },

  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "suketa/nvim-dap-ruby",
      config = function()
        require("dap-ruby").setup()
      end,
    },
  },
}
