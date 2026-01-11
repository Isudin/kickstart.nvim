return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    opts = {
      lazygit = {
        enabled = true,
      },
      notifier = {
        enabled = true,
        timeout = 3000,
        width = { min = 40, max = 60 },
        margin = { top = 1, right = 1 },
        border = 'rounded',
        position = 'top_right',
      },
      picker = {
        enabled = true,
        layout = {
          notifications = 'vertical',
        },
      },
      terminal = {
        enabled = false,
        win = {
          border = 'rounded',
          position = 'float',
        },
      },
      zen = {
        enabled = true,
        toggles = {
          dim = false,
        },
        show = {
          statusline = true,
        },
        win = {
          border = 'rounded',
          backdrop = {
            transparent = false,
          },
        },
      },
    },
    require('keymaps.snacks').setup(),
    -- require('autocmds.snacks').setup(),
  },
}
