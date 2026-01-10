return {
  'Weissle/persistent-breakpoints.nvim',
  dependencies = {
    'mfussenegger/nvim-dap',
  },
  opts = {
    load_breakpoints_event = { 'BufReadPost' },
  },
  require('keymaps.persistent-breakpoints').setup(),
}
