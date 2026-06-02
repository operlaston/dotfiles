return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      dashboard = {
        preset = {
          header = [[LazyVim]],
        },
      },
    },
    keys = {
      {
        "\\\\",
        function()
          Snacks.explorer()
        end,
        desc = "File Explorer",
      },
      -- { "<leader>e", false },
    },
  },
}
