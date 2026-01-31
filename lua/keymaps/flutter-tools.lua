local M = {}

function M.setup()
  vim.keymap.set('n', '<leader>Lr', '<cmd>FlutterRun<cr>', { buffer = 0, desc = 'Run' })
  vim.keymap.set('n', '<leader>Le', '<cmd>FlutterEmulators<cr>', { buffer = 0, desc = 'Emulators' })
  vim.keymap.set('n', '<leader>La', '<cmd>FlutterAttach<cr>', { buffer = 0, desc = 'Attach' })
  vim.keymap.set('n', '<leader>LD', '<cmd>FlutterDetach<cr>', { buffer = 0, desc = 'Detach' })
  vim.keymap.set('n', '<leader>Lt', '<cmd>FlutterLogToggle<cr>', { buffer = 0, desc = 'Toggle log' })
  vim.keymap.set('n', '<leader>Lc', '<cmd>FlutterLogClear<cr>', { buffer = 0, desc = 'Clear log' })
end

return M
