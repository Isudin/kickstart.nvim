local M = {}

function M.setup()
  vim.keymap.set('n', '<leader>on', '<cmd>Obsidian new<CR>', { desc = 'Create new note' })
end

return M
