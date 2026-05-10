return {
  -- Remove markdownlint-cli2 diagnostics from markdown files (keeps formatting)
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        markdown = {},
        ["markdown.mdx"] = {},
      },
    },
  },
}