local M = {}

function M.setup()
  local telescope = require 'telescope'
  local builtin = require 'telescope.builtin'
  local horizontal_opts = { prompt_position = 'top' }
  local vertical_opts = { width = 0.9, height = 0.9, prompt_position = 'top', mirror = true }
  local ntrFlex = {
    sorting_strategy = 'ascending',
    layout_strategy = 'flex',
    layout_config = { flip_columns = 150, horizontal = horizontal_opts, vertical = vertical_opts },
  }

  local ntrOpts = function(f, extra)
    return function()
      local opts = vim.tbl_deep_extend('force', {}, ntrFlex, extra or {})
      f(opts)
    end
  end

  vim.keymap.set('n', '<leader>sh', ntrOpts(builtin.help_tags), { desc = 'Help' })
  vim.keymap.set('n', '<leader>sk', ntrOpts(builtin.keymaps), { desc = 'Keymaps' })
  vim.keymap.set('n', '<leader>sf', ntrOpts(builtin.find_files), { desc = 'Files' })
  vim.keymap.set('n', '<leader>sn', ntrOpts(builtin.find_files, { cwd = vim.fn.stdpath 'config' }), { desc = 'Config files' })
  vim.keymap.set('n', '<leader>so', ntrOpts(builtin.find_files, { cwd = '~/vaults/' }), { desc = 'Obsidian' })
  vim.keymap.set('n', '<leader>ss', ntrOpts(builtin.builtin), { desc = 'Select Telescope' })
  vim.keymap.set('n', '<leader>sw', ntrOpts(builtin.grep_string), { desc = 'Current word' })
  vim.keymap.set('n', '<leader>sg', ntrOpts(builtin.live_grep), { desc = 'Grep' })
  vim.keymap.set('n', '<leader>sG', ntrOpts(builtin.live_grep, { additional_args = { '--hidden' } }), { desc = 'Grep (hidden)' })
  vim.keymap.set('n', '<leader>s/', ntrOpts(builtin.live_grep, { grep_open_files = true, prompt_title = 'Grep in Open Files' }))
  vim.keymap.set('n', '<leader>sd', ntrOpts(builtin.diagnostics), { desc = 'Diagnostics' })
  vim.keymap.set('n', '<leader>sr', ntrOpts(builtin.resume), { desc = 'Resume' })
  vim.keymap.set('n', '<leader>s.', ntrOpts(builtin.oldfiles), { desc = 'Recent Files' })
  vim.keymap.set('n', '<leader>sb', ntrOpts(builtin.buffers), { desc = 'Existing buffers' })
  vim.keymap.set('n', '<leader>sm', ntrOpts(builtin.mark), { desc = 'Marks' })
  vim.keymap.set('n', '<leader>st', ntrOpts(telescope.extensions['todo-comments'].todo), { desc = 'TODOs' })
  vim.keymap.set('n', '<leader>sa', ntrOpts(telescope.extensions.attempt.attempt), { desc = 'Attepmt' })

  vim.keymap.set('n', '<leader>/', function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
    })
  end, { desc = 'Fuzzily search in current buffer' })
end

return M
