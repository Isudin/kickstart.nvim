return {
  -- TODO: load from upstream if PR is merged. Clean in Lazy after doing so
  --   'imranzero/multiterm.nvim',
  'isudin/multiterm.nvim',
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
