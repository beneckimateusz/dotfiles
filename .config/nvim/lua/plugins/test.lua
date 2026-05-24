return {
  {
    "zidhuss/neotest-minitest",
  },
  {
    "olimorris/neotest-rspec",
  },

  {
    "nvim-neotest/neotest",
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
}
