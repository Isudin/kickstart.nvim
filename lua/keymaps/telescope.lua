local M = {}

function M.setup()
  local builtin = require 'telescope.builtin'

  vim.keymap.set('n', '<leader>', '', { desc = '+Search' })
  vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Search help' })
  vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = 'Search keymaps' })
  vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Search files' })
  vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = 'Search select Telescope' })
  vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = 'Search current word' })
  vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Search by grep' })
  vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = 'Search diagnostics' })
  vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = 'Search resume' })
  vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = 'Search Recent Files ("." for repeat)' })
  vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Find existing buffers' })
  vim.keymap.set('n', '<leader>st', '<Cmd>TodoTelescope<CR>', { desc = 'Search TODOs' })

  vim.keymap.set('n', '<leader>sG', function()
    builtin.live_grep { additional_args = { '--hidden' } }
  end, { desc = 'Search by grep (hidden)' })

  -- Slightly advanced example of overriding default behavior and theme
  vim.keymap.set('n', '<leader>/', function()
    -- You can pass additional configuration to Telescope to change the theme, layout, etc.
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
    })
  end, { desc = 'Fuzzily search in current buffer' })

  -- It's also possible to pass additional configuration options.
  --  See `:help telescope.builtin.live_grep()` for information about particular keys
  vim.keymap.set('n', '<leader>s/', function()
    builtin.live_grep {
      grep_open_files = true,
      prompt_title = 'Live Grep in Open Files',
    }
  end, { desc = 'Search in Open Files' })

  -- Shortcut for searching your Neovim configuration files
  vim.keymap.set('n', '<leader>sn', function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
  end, { desc = 'Search Neovim files' })
end

return M
