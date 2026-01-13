return {
  'folke/trouble.nvim',
  opts = {
    focus = true,
    win = {
      border = 'rounded',
      -- type = 'float',
      new = false,
    },
    preview = {
      border = 'rounded',
      type = 'float',
    },
    keys = {
      ['<cr>'] = 'jump_close',
      ['<esc>'] = 'close',
    },
  },
  cmd = 'Trouble',
  keys = require 'keymaps.trouble',
}
