local M = {}

function M.setup()
  vim.keymap.set('n', '<leader>fr', function()
    local cmd = 'Rename ' .. vim.fn.expand '%:t'
    vim.fn.feedkeys(':' .. cmd)
  end, { desc = 'Rename current file' })

  vim.keymap.set('n', '<leader>fm', function()
    local cmd = 'Move ' .. vim.fn.expand '%:.'
    vim.fn.feedkeys(':' .. cmd)
  end, { desc = 'Move current file' })

  vim.keymap.set('n', '<leader>fR', '<cmd>Delete<CR>', { desc = 'Delete current file and buffer' })
end

return M
