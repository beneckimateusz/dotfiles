local function term_nav(dir)
  ---@param self snacks.terminal
  return function(self)
    return self:is_floating() and "<c-" .. dir .. ">" or vim.schedule(function()
      vim.cmd.wincmd(dir)
    end)
  end
end

return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      indent = {
        enabled = true,
        animate = {
          enabled = false,
        },
      },
      input = { enabled = true },
      notifier = { enabled = true, timeout = 3000 },
      quickfile = { enabled = true },
      gitbrowse = { enabled = true },
      lazygit = { enabled = true },
      scope = { enabled = true },
      terminal = {
        enabled = true,
        win = {
          keys = {
            nav_h = { "<C-h>", term_nav("h"), desc = "Go to left window", expr = true, mode = "t" },
            nav_j = { "<C-j>", term_nav("j"), desc = "Go to lower window", expr = true, mode = "t" },
            nav_k = { "<C-k>", term_nav("k"), desc = "Go to upper window", expr = true, mode = "t" },
            nav_l = { "<C-l>", term_nav("l"), desc = "Go to right window", expr = true, mode = "t" },
            hide_slash = { "<C-/>", "hide", desc = "Hide terminal", mode = "t" },
            hide_underscore = { "<c-_>", "hide", desc = "which_key_ignore", mode = "t" }, -- for some reason this is needed for <C-/> to work
          },
        },
      },
      words = { enabled = true },
    },
    keys = {
      {
        "<leader>sn",
        function()
          Snacks.notifier.show_history()
        end,
        desc = "Notification history",
      },
      {
        "<leader>un",
        function()
          Snacks.notifier.hide()
        end,
        desc = "Dismiss all notifications",
      },
      {
        "<leader>.",
        function()
          Snacks.scratch()
        end,
        desc = "Scratch buffer",
      },
      {
        "<leader>fs",
        function()
          Snacks.scratch.select()
        end,
        desc = "Scratch buffer",
      },
      {
        "<C-/>",
        function()
          Snacks.terminal()
        end,
        desc = "Toggle terminal",
      },
      {
        "<C-_>",
        function()
          Snacks.terminal()
        end,
        desc = "which_key_ignore",
      }, -- for some reason this is needed for <C-/> to work
      {
        "<leader>gg",
        function()
          Snacks.lazygit()
        end,
        desc = "Lazygit",
      },
      {
        "<leader>gB",
        function()
          Snacks.gitbrowse()
        end,
        desc = "Git browse",
        mode = { "n", "v" },
      },
    },
  },
}
