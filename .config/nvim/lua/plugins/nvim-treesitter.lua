local ensure_installed = {
  "astro",
  "bash",
  "css",
  "diff",
  "dockerfile",
  "eex",
  "elixir",
  "embedded_template",
  "go",
  "gomod",
  "gowork",
  "gosum",
  "heex",
  "html",
  "javascript",
  "jsdoc",
  "json",
  "json5",
  "lua",
  "luadoc",
  "luap",
  "markdown",
  "markdown_inline",
  "python",
  "regex",
  "ruby",
  "sql",
  "toml",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "xml",
  "yaml",
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "RRethy/nvim-treesitter-endwise" },
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup()
      require("nvim-treesitter").install(ensure_installed)

      vim.api.nvim_create_autocmd("FileType", {
        pattern = ensure_installed,
        callback = function()
          vim.treesitter.start() -- highlight
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- indent
        end,
      })
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },
}
