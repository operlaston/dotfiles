return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
      automatic_installation = true,
      ensure_installed = {
        "cssls",
        "html",
        "jsonls",
        "ts_ls",
        "pyright",
        "tailwindcss",
        "clangd",
        "lua_ls",
        -- "jdtls"
      },
    })

    -- require("mason-tool-installer").setup({
    --   ensure_installed = {
    --     "prettier",
    --     "stylua",         -- lua formatter
    --     "eslint_d",
    --   },
    -- })
  end,
}
