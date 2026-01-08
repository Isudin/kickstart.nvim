local M = {}

function M.setup()
  local dapui = require 'dapui'

  local ntrFloat = { position = 'center', enter = true, height = 40, width = 80 }

  vim.keymap.set('n', '<leader>xww', function()
    dapui.float_element('watches', ntrFloat)
  end, { desc = 'Show watches' })

  vim.keymap.set('n', '<leader>xwv', function()
    dapui.float_element('scopes', ntrFloat)
  end, { desc = 'Show variable scopes' })

  vim.keymap.set('n', '<leader>xws', function()
    dapui.float_element('stacks', ntrFloat)
  end, { desc = 'Show stacks' })

  vim.keymap.set('n', '<leader>xwb', function()
    dapui.float_element('breakpoints', ntrFloat)
  end, { desc = 'Show breakpoints' })

  vim.keymap.set('n', '<leader>xe', function()
    dapui.eval()
  end, { desc = 'Eval word' })

  vim.keymap.set('v', '<leader>xe', function()
    dapui.eval()
  end, { desc = 'Eval selection' })
end

return M
