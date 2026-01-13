local M = {}

function M.setup()
  local telescope = require 'telescope'
  local builtin = require 'telescope.builtin'
  local windows = require 'utils.telescope-windows'

  vim.keymap.set('n', '<leader>sh', windows.set_opts(builtin.help_tags), { desc = 'Help' })
  vim.keymap.set('n', '<leader>sk', windows.set_opts(builtin.keymaps), { desc = 'Keymaps' })
  vim.keymap.set('n', '<leader>sf', windows.set_opts(builtin.find_files), { desc = 'Files' })
  vim.keymap.set('n', '<leader>sn', windows.set_opts(builtin.find_files, { cwd = vim.fn.stdpath 'config' }), { desc = 'Config files' })
  vim.keymap.set('n', '<leader>so', windows.set_opts(builtin.find_files, { cwd = '~/vaults/' }), { desc = 'Obsidian' })
  vim.keymap.set('n', '<leader>ss', windows.set_opts(builtin.builtin), { desc = 'Select Telescope' })
  vim.keymap.set('n', '<leader>sw', windows.set_opts(builtin.grep_string), { desc = 'Current word' })
  vim.keymap.set('n', '<leader>sg', windows.set_opts(builtin.live_grep), { desc = 'Grep' })
  vim.keymap.set('n', '<leader>sG', windows.set_opts(builtin.live_grep, { additional_args = { '--hidden' } }), { desc = 'Grep (hidden)' })
  vim.keymap.set('n', '<leader>s/', windows.set_opts(builtin.live_grep, { grep_open_files = true, prompt_title = 'Grep in Open Files' }))
  vim.keymap.set('n', '<leader>sd', windows.set_opts(builtin.diagnostics), { desc = 'Diagnostics' })
  vim.keymap.set('n', '<leader>sr', windows.set_opts(builtin.resume), { desc = 'Resume' })
  vim.keymap.set('n', '<leader>s.', windows.set_opts(builtin.oldfiles), { desc = 'Recent Files' })
  vim.keymap.set('n', '<leader>sb', windows.set_opts(builtin.buffers), { desc = 'Existing buffers' })
  vim.keymap.set('n', '<leader>sm', windows.set_opts(builtin.mark), { desc = 'Marks' })
  vim.keymap.set('n', '<leader>st', windows.set_opts(telescope.extensions['todo-comments'].todo), { desc = 'TODOs' })
  vim.keymap.set('n', '<leader>sa', windows.set_opts(telescope.extensions.attempt.attempt), { desc = 'Attepmt' })

  vim.keymap.set('n', '<leader>/', function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
    })
  end, { desc = 'Fuzzily search in current buffer' })
end

return M
