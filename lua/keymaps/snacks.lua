local M = {}

function M.setup()
  vim.keymap.set({ 'n', 't' }, '<C-/>', function()
    require('snacks').terminal()
  end, { desc = 'Toggle Terminal' })

  vim.keymap.set('n', '<leader>n', function()
    require('snacks').notifier.show_history()
  end, { desc = 'Show notifications history' })
end

return M
