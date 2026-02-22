return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
    -- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Live Grep Project Search'})
    local h_pct = 0.95
		local w_pct = 0.95
    local fullscreen_setup = {
			borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
			preview = { hide_on_startup = false },
			layout_strategy = 'flex',
			layout_config = {
				flex = { flip_columns = 100 },
				horizontal = {
					mirror = false,
					prompt_position = 'top',
					width = function(_, cols, _)
						return math.floor(cols * w_pct)
					end,
					height = function(_, _, rows)
						return math.floor(rows * h_pct)
					end,
					preview_cutoff = 10,
					preview_width = 0.5,
				},
				vertical = {
					mirror = true,
					prompt_position = 'top',
					width = function(_, cols, _)
						return math.floor(cols * w_pct)
					end,
					height = function(_, _, rows)
						return math.floor(rows * h_pct)
					end,
					preview_cutoff = 10,
					preview_height = 0.5,
				},
			},
		}
    local ts = require('telescope')
    ts.setup {
      defaults = vim.tbl_extend('error', fullscreen_setup, {
        sorting_strategy = 'ascending',
        path_display = { "filename_first" },
        mappings = {
          i = {
            ['<C-o>'] = require('telescope.actions.layout').toggle_preview,
          },
        },
        wrap_results = true
      }),
      -- pickers = {
      --   find_files = {
      --     find_command = {
      --       'fdfind', '--type', 'f', '-H', '--strip-cwd-prefix',
      --     }
      --   },
      -- },
    }
  end
}

