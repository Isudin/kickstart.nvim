return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    opts = {
      -- terminal = {
      --   win = {
      --     border = 'rounded',
      --     position = 'float',
      --   },
      -- },
      notifier = {
        enabled = true,
        timeout = 3000,
        width = { min = 40, max = 60 },
        margin = { top = 1, right = 1 },
        border = 'rounded',
        position = 'top_right',
      },
      lazygit = {
        enabled = true,
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
    require('keymaps/snacks').setup(),
    -- require('autocmds/snacks').setup(),
  },
}
