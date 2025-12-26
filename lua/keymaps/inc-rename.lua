local M = {}

function M.setup()
  vim.keymap.set('n', '<leader>rn', function()
    return ':IncRename ' .. vim.fn.expand '<cword>'
  end, { expr = true, desc = 'Rename' })
end

return M
