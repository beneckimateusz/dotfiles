return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "zidhuss/neotest-minitest",

      "jfpedroza/neotest-elixir",
    },
    opts = {
      adapters = {
        ["neotest-minitest"] = {},

        ["neotest-elixir"] = {},
      },
    },
  },
}
