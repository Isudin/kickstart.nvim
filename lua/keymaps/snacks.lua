local M = {}

function M.setup()
  -- Notifications
  -- vim.keymap.set('n', '<leader>dn', function()
  --   require('snacks').notifier.show_history()
  -- end, { desc = 'Show notification history' })

  vim.keymap.set('n', '<leader>dn', function()
    -- TODO: Use layout from plugins/snacks.lua when correctly modified
    require('snacks').picker.notifications { layout = 'vertical' }
  end, { desc = 'Show notification history' })

  -- Lazygit
  -- vim.keymap.set('n', '<leader>gb', function()
  --   require('snacks').gitbrowse()
  -- end, { desc = 'Browse' })

  vim.keymap.set('n', '<leader>tg', function()
    require('snacks').lazygit()
  end, { desc = 'Toggle lazygit' })

  -- Zen
  vim.keymap.set('n', '<leader>uz', function()
    require('snacks').zen()
  end, { desc = 'Toggle zen mode' })

  -- Dim
  vim.keymap.set('n', '<leader>ud', function()
    local snacks = require 'snacks'
    if snacks.dim.enabled then
      snacks.dim.disable()
    else
      snacks.dim()
    end
  end, { desc = 'Toggle dim' })
end

return M
