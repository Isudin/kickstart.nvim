return {
  'folke/trouble.nvim',
  opts = {
    focus = true,
    win = {
      border = 'rounded',
      -- type = 'float',
      new = false,
    },
  },
  cmd = 'Trouble',
  keys = require 'keymaps.trouble',
}
