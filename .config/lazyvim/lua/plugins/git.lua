return {
  -- See https://github.com/linrongbin16/gitlinker.nvim?tab=readme-ov-file#self-host-git-hosts
  -- for Self-host Git Hosts
  {
    "linrongbin16/gitlinker.nvim",
    config = function()
      require("gitlinker").setup()
    end,
  },
}
