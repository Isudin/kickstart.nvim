local M = {}

M.setup = function()
  vim.keymap.set('n', '<leader>an', require('attempt').new_select, { desc = 'New attempt, select extension' })
  vim.keymap.set('n', '<leader>ai', require('attempt').new_input_ext, { desc = 'New attempt, input extension' })
  vim.keymap.set('n', '<leader>a<space>', require('attempt').run, { desc = 'Run attempt' })
  vim.keymap.set('n', '<leader>ad', require('attempt').delete_buf, { desc = 'Delete attempt from current buffer' })
  vim.keymap.set('n', '<leader>ar', require('attempt').rename_buf, { desc = 'Rename attempt from current buffer' })
end

return M
