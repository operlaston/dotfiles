return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		-- Upgraded neodev to lazydev (the modern replacement)
		{ "folke/lazydev.nvim", ft = "lua", opts = {} },
	},
	config = function()
		-- Store default capabilities to pass to your servers later
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- Create a single, clear augroup for all LSP-related autocommands
		local lsp_group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true })

		-- Use the modern LspAttach event to handle EVERYTHING when a server attaches
		vim.api.nvim_create_autocmd("LspAttach", {
			group = lsp_group,
			callback = function(ev)
				local client = vim.lsp.get_client_by_id(ev.data.client_id)
				local bufnr = ev.buf

				-- 1. Set up completion and keymaps for this specific buffer
				vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
				local opts = { buffer = bufnr, silent = true }

				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

				-- 2. Set up Format-on-Save ONLY if this specific server supports it
				-- if client and client.server_capabilities.documentFormattingProvider then
				--   vim.api.nvim_create_autocmd("BufWritePre", {
				--     group = lsp_group,
				--     buffer = bufnr,
				--     callback = function()
				--       local mode = vim.api.nvim_get_mode().mode
				--       local filetype = vim.bo.filetype
				--
				--       -- Your custom safety checks before formatting
				--       if mode == 'n' and filetype ~= "oil" then
				--         vim.lsp.buf.format({ bufnr = bufnr, async = false })
				--       end
				--     end,
				--   })
				-- end
			end,
		})
	end,
}
