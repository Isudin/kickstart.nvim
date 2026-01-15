local M = {}

function M.setup()
  vim.keymap.set('n', '<leader>ts', '<cmd>DBUIToggle<CR>', { desc = 'Toggle SQL UI' })
end

return M
