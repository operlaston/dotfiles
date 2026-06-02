return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>pf", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
      { "<leader>ps", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
      -- Disable a default LazyVim keymap by setting it to false
      { "<leader>ff", false },
    },
  },
}
