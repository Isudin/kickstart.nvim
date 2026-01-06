local M = {}

M.setup = function()
  local attempt = require 'attempt'
  vim.keymap.set('n', '<leader>an', attempt.new_select, { desc = 'New attempt, select extension' })
  vim.keymap.set('n', '<leader>ai', attempt.new_input_ext, { desc = 'New attempt, input extension' })
  vim.keymap.set('n', '<leader>a<space>', attempt.run, { desc = 'Run attempt' })
  vim.keymap.set('n', '<leader>ad', attempt.delete_buf, { desc = 'Delete attempt from current buffer' })
  vim.keymap.set('n', '<leader>ar', attempt.rename_buf, { desc = 'Rename attempt from current buffer' })
end

return M
