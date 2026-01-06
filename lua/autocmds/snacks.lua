local M = {}

function M.setup()
  vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()
      require('snacks').zen()
    end,
  })
end

return M
