local M = {}

function M.setup()
  vim.keymap.set('n', '<leader>n', '', { desc = '[N]o neck pain' })

  vim.keymap.set('n', '<leader>nh', function()
    vim.cmd 'NoNeckPainToggleLeftSide'
  end, { desc = 'Toggle left side' })

  vim.keymap.set('n', '<leader>nl', function()
    vim.cmd 'NoNeckPainToggleRightSide'
  end, { desc = 'Toggle right side' })

  vim.keymap.set('n', '<leader>n>', function()
    vim.cmd 'NoNeckPainWidthUp'
  end, { desc = 'Increase width' })

  vim.keymap.set('n', '<leader>n<', function()
    vim.cmd 'NoNeckPainWidthDown'
  end, { desc = 'Decrease width' })

  vim.keymap.set('n', '<leader>nz', function()
    vim.cmd 'NoNeckPain'
  end, { desc = 'Toggle zen mode' })

  vim.keymap.set('n', '<leader>ns', function()
    vim.cmd 'NoNeckPainScratchPad'
  end, { desc = 'Enable scratch pads' })
end

return M
