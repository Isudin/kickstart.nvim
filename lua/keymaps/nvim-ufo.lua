local M = {}

M.setup = function()
  vim.keymap.set('n', 'zR', function()
    require('ufo').openAllFolds()
  end, { desc = 'Open all folds' })
  vim.keymap.set('n', 'zM', function()
    require('ufo').closeAllFolds()
  end, { desc = 'Close all folds' })
end

return M
