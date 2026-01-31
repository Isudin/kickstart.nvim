return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
  },
  opts = {
    ui = {
      border = 'rounded',
    },
    on_attach = function()
      print 'testing'
    end,
    debugger = {
      enabled = true,
    },
    dev_log = {
      enabled = false,
    },
  },
  require('autocmds.flutter-tools').setup(),
}
