local M = {}

function M.setup()
  vim.keymap.set('n', '<leader>bf', function()
    require('conform').format { async = true, lsp_format = 'fallback' }
  end, { desc = 'Format buffer' })
end

return M
