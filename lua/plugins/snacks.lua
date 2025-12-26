return {
  {
    'folke/snacks.nvim',
    opts = {
      terminal = {
        win = {
          border = 'rounded',
          position = 'float',
        },
      },
      notifier = {
        enabled = true,
        timeout = 3000,
        width = { min = 40, max = 60 },
        margin = { top = 1, right = 1 },
        border = 'rounded',
        position = 'top_right',
      },
    },
    require('keymaps/snacks').setup(),
  },
}
