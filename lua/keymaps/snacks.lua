local M = {}

function M.setup()
  -- Notifications
  vim.keymap.set('n', '<leader>dn', function()
    require('snacks').notifier.show_history()
  end, { desc = 'Show notification history' })

  -- Lazygit
  vim.keymap.set('n', '<leader>g', '', { desc = '+[G]it' })

  vim.keymap.set('n', '<leader>gb', function()
    require('snacks').gitbrowse()
  end, { desc = 'Browse' })

  vim.keymap.set('n', '<leader>gg', function()
    require('snacks').lazygit()
  end, { desc = 'Lazygit' })

  -- Zen & Zoom
  vim.keymap.set('n', '<leader>zz', function()
    require('snacks').zen()
  end, { desc = 'Toggle zen mode' })
end

return M
