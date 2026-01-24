return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    opts = {
      dashboard = {
        enabled = true,
        preset = {
          -- Indent required to properly display the header
          header = [[
███╗   ██╗████████╗██████╗
  ████╗  ██║╚══██╔══╝██╔══██╗
  ██╔██╗ ██║   ██║   ██████╔╝
  ██║╚██╗██║   ██║   ██╔══██╗
  ██║ ╚████║   ██║   ██║  ██║
  ╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝
                      ]],
        },
        sections = {
          { section = 'header' },
          { icon = ' ', title = 'Keymaps', section = 'keys', indent = 2, padding = 1 },
          { icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
          { icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 1 },
          { section = 'startup' },
        },
      },
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
      scroll = {
        enabled = true,
      },
      terminal = {
        enabled = false,
        win = {
          border = 'rounded',
          position = 'float',
          title_pos = 'center',
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
