local M = {}

function M.setup()
  vim.api.nvim_create_autocmd('FileType', {
    pattern = 'dart',
    callback = function()
      require('keymaps.flutter-tools').setup()
    end,
  })
end

return M
