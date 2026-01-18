local M = {}

function M.setup()
  vim.keymap.set('n', '<leader>Ta', function()
    require('neotest').run.attach()
  end, { desc = 'Test attach' })

  vim.keymap.set('n', '<leader>Tf', function()
    require('neotest').run.run(vim.fn.expand '%')
  end, { desc = 'Test run file' })

  vim.keymap.set('n', '<leader>TA', function()
    require('neotest').run.run(vim.uv.cwd())
  end, { desc = 'Test all files' })

  vim.keymap.set('n', '<leader>TS', function()
    require('neotest').run.run { suite = true }
  end, { desc = 'Test suite' })

  vim.keymap.set('n', '<leader>Tn', function()
    require('neotest').run.run()
  end, { desc = 'Test nearest' })

  vim.keymap.set('n', '<leader>Tl', function()
    require('neotest').run.run_last()
  end, { desc = 'Test last' })

  vim.keymap.set('n', '<leader>Ts', function()
    require('neotest').summary.toggle()
  end, { desc = 'Test summary' })

  vim.keymap.set('n', '<leader>To', function()
    require('neotest').output.open { enter = true, auto_close = true }
  end, { desc = 'Test output' })

  vim.keymap.set('n', '<leader>TO', function()
    require('neotest').output_panel.toggle()
  end, { desc = 'Test output panel' })

  vim.keymap.set('n', '<leader>Tt', function()
    require('neotest').run.stop()
  end, { desc = 'Test terminate' })

  vim.keymap.set('n', '<leader>Td', function()
    require('neotest').run.run { suite = false, strategy = 'dap' }
  end, { desc = 'Debug nearest test' })

  vim.keymap.set('n', '<leader>TD', function()
    require('neotest').run.run { vim.fn.expand '%', strategy = 'dap' }
  end, { desc = 'Debug current file' })
end

return M
