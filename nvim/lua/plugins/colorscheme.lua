return {
  -- "rebelot/kanagawa.nvim",
  -- lazy = false,
  -- priority = 1000,
  -- compile = false,             -- enable compiling the colorscheme
  -- undercurl = true,            -- enable undercurls
  -- commentStyle = { italic = true },
  -- functionStyle = {},
  -- keywordStyle = { italic = true },
  -- statementStyle = { bold = true },
  -- typeStyle = {},
  -- transparent = true,         -- do not set background color
  -- dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
  -- terminalColors = true,       -- define vim.g.terminal_color_{0,17}
  -- theme = "wave",              -- Load "wave" theme
  -- config = function()
  --   vim.cmd("colorscheme kanagawa-wave")
  -- end
  "bluz71/vim-moonfly-colors",
  name = "moonfly",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd [[colorscheme moonfly]]
  end
}
