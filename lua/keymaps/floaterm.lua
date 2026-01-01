local M = {}

function M.setup()
  vim.keymap.set({ 'n', 't' }, '<C-/>', function()
    vim.cmd 'FloatermToggle'
  end, { desc = 'Toggle Terminal' })
end

return M
