local M = {}

function M.setup()
  vim.keymap.set('n', '<leader>xb', function()
    require('persistent-breakpoints.api').toggle_breakpoint()
  end, { desc = 'Toggle breakpoint' })

  vim.keymap.set('n', '<leader>xB', function()
    require('persistent-breakpoints.api').set_conditional_breakpoint()
  end, { desc = 'Set conditional breakpoint' })

  vim.keymap.set('n', '<leader>xC', function()
    require('persistent-breakpoints.api').clear_all_breakpoints()
  end, { desc = 'Clear all breakpoints' })

  vim.keymap.set('n', '<leader>xl', function()
    require('persistent-breakpoints.api').set_log_point()
  end, { desc = 'Set log point' })
end

return M
