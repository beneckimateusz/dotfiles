return {
  {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    -- https://github.com/nvim-telescope/telescope.nvim/wiki/Configuration-Recipes#file-and-text-search-in-hidden-files-and-directories
    opts = function()
      local conf = require("telescope.config").values
      local vimgrep_arguments = vim.deepcopy(conf.vimgrep_arguments)
      table.insert(vimgrep_arguments, "--hidden")
      table.insert(vimgrep_arguments, "--glob")
      table.insert(vimgrep_arguments, "!**/.git/*")

      return {
        defaults = {
          vimgrep_arguments = vimgrep_arguments,
        },
        pickers = {
          find_files = {
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
          },
        },
      }
    end,
    keys = {
      { "<leader><leader>", "<leader>ff", desc = "Find files", remap = true },
      { "<leader>,", "<leader>fb", desc = "Buffers", remap = true },
      { "<leader>/", "<leader>sg", desc = "Live grep", remap = true },
      -- find
      { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Files" },
      { "<leader>fr", function() require("telescope.builtin").oldfiles() end, desc = "Recent" },
      { "<leader>fb", function() require("telescope.builtin").buffers() end, desc = "Buffers" },
      -- git
      { "<leader>gc", function() require("telescope.builtin").git_commits() end, desc = "Git commits (current buffer)" },
      { "<leader>gC", function() require("telescope.builtin").git_bcommits() end, desc = "Git commits" },
      { "<leader>gb", function() require("telescope.builtin").git_branches() end, desc = "Git branches" },
      { "<leader>gs", function() require("telescope.builtin").git_status() end, desc = "Git status" },
      -- search
      { "<leader>sR", function() require("telescope.builtin").resume() end, desc = "Resume" },
      { "<leader>sg", function() require("telescope.builtin").live_grep() end, desc = "Live grep" },
      { "<leader>sb", function() require("telescope.builtin").current_buffer_fuzzy_find() end, desc = "Fuzzy find (current buffer)" },
      { "<leader>sc", function() require("telescope.builtin").commands() end, desc = "Commands" },
      { "<leader>sC", function() require("telescope.builtin").command_history() end, desc = "Command history" },
      { "<leader>s/", function() require("telescope.builtin").search_history() end, desc = "Search history" },
      { "<leader>sk", function() require("telescope.builtin").keymaps() end, desc = "Keymaps" },
      { "<leader>ss", function() require("telescope.builtin").lsp_document_symbols() end, desc = "LSP document symbols" },
      { "<leader>sS", function() require("telescope.builtin").lsp_dynamic_workspace_symbols() end, desc = "LSP workspace symbols" },
      {
        "<leader>sd",
        function()
          require("telescope.builtin").diagnostics({ bufnr = 0 })
        end,
        desc = "Diagnostics (current buffer)",
      },
      { "<leader>sD", function() require("telescope.builtin").diagnostics() end, desc = "Diagnostics" },
      -- lsp
      { "gd", function() require("telescope.builtin").lsp_definitions() end, desc = "LSP definitions" },
      { "gr", function() require("telescope.builtin").lsp_references() end, desc = "LSP references" },
      { "gi", function() require("telescope.builtin").lsp_implementations() end, desc = "LSP implementations" },
      { "gy", function() require("telescope.builtin").lsp_type_definitions() end, desc = "LSP type definitions" },
    },
  },
}
