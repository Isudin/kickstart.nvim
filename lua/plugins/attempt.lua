return {
  'm-demare/attempt.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  opts = {},
  require('keymaps.attempt').setup(),
}
