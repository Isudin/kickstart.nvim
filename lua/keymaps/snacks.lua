local M = {}

function M.setup()
  vim.keymap.set('n', '<leader>n', function()
    require('snacks').notifier.show_history()
  end, { desc = 'Show notifications history' })

  vim.keymap.set('n', '<leader>g', '', { desc = '+[G]it' })

  vim.keymap.set('n', '<leader>gb', function()
    require('snacks').gitbrowse()
  end, { desc = 'Browse' })

  vim.keymap.set('n', '<leader>gg', function()
    require('snacks').lazygit()
  end, { desc = 'Lazygit' })
end

return M
