local M = {}

function M.setup()
  vim.keymap.set('n', '<leader>f', function()
    require('conform').format { async = true, lsp_format = 'fallback' }
  end, { desc = 'Format buffer' })

  vim.keymap.set('n', '<leader>n', function()
    require('snacks').notifier.show_history()
  end, { desc = 'Show [N]otifications history' })
end

return M
