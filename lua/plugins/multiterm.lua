return {
  'imranzero/multiterm.nvim',
  event = 'VeryLazy',
  opts = {
    show_backdrop = false,
    -- TODO: Move keymaps
    keymaps = {
      toggle = '<C-/>',
      list = '<C-S-/>',
    },
  },
}
