return {
  'crnvl96/lazydocker.nvim',
  opts = {
    window = {
      settings = {
        width = 0.9,
        height = 0.9,
        border = 'rounded',
        relative = 'editor', -- See ':h nvim_open_win' relative options
      },
    },
  },
  require('keymaps.lazydocker').setup(),
}
