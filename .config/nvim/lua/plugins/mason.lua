local ensure_installed = {
  "prettier",
  "sqlfluff",
  "shfmt",
  "hadolint", -- docker

  -- ruby
  "erb-formatter",
  "erb-lint",

  -- go
  "goimports",
  "gofumpt",
  "golangci-lint",
}

return {
  {
    "mason-org/mason.nvim",
    build = ":MasonUpdate",
    cmd = "Mason",
    config = function()
      require("mason").setup()
      local mr = require("mason-registry")

      mr.refresh(function()
        for _, tool in ipairs(ensure_installed) do
          local p = mr.get_package(tool)
          if not p:is_installed() then
            p:install()
          end
        end
      end)
    end,
    keys = {
      { "<leader>cM", "<cmd>Mason<cr>", desc = "Mason" },
    },
  },
}
