return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false, -- make highlights work right away
    opts = {},
    keys = {
      { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous TODO comment" },
      { "]t", function() require("todo-comments").jump_next() end, desc = "Next TODO comment" },
      -- search
      { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "TODO" },
      { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "TODO/FIX/FIXME" },
      -- trouble
      { "<leader>xt", "<cmd>Trouble todo toggle<cr>", desc = "TODO (Trouble)" },
      { "<leader>xT", "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>", desc = "TODO/FIX/FIXME (Trouble)" },
    },
  },
}
