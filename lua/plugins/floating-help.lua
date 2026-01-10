return {
  'Tyler-Barham/floating-help.nvim',
  opts = {
    border = 'rounded',
    height = 0.8,
    width = 80,
    position = 'C',
  },
  require('keymaps.floating-help').setup(),
}
