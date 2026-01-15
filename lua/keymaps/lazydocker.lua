local M = {}

function M.setup()
  vim.keymap.set({ 'n', 't' }, '<leader>td', function()
    require('lazydocker').toggle { engine = 'docker' }
  end, { desc = 'Toggle lazydocker (docker)' })

  vim.keymap.set({ 'n', 't' }, '<leader>tp', function()
    require('lazydocker').toggle { engine = 'podman' }
  end, { desc = 'Toggle lazydocker (podman)' })
end

return M
