local M = {}

function M.setup()
  vim.keymap.set({ 'n', 't' }, '<leader>ld', function()
    require('lazydocker').toggle { engine = 'docker' }
  end, { desc = 'LazyDocker (docker)' })

  vim.keymap.set({ 'n', 't' }, '<leader>lp', function()
    require('lazydocker').toggle { engine = 'podman' }
  end, { desc = 'LazyDocker (podman)' })
end

return M
