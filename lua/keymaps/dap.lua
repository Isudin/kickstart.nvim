return {
  {
    '<F5>',
    function()
      require('dap').continue()
    end,
    desc = 'Debug: Start/Continue',
  },
  {
    '<F11>',
    function()
      require('dap').step_into()
    end,
    desc = 'Debug: Step Into',
  },
  {
    '<F10>',
    function()
      require('dap').step_over()
    end,
    desc = 'Debug: Step Over',
  },
  {
    '<S-F11>',
    function()
      require('dap').step_out()
    end,
    desc = 'Debug: Step Out',
  },
  -- {
  --   '<leader>xz',
  --   function()
  --     require('dap').toggle_breakpoint()
  --   end,
  --   desc = 'Toggle breakpoint',
  -- },
  -- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
  {
    '<F7>',
    function()
      require('dapui').toggle()
    end,
    desc = 'Debug: See last session result.',
  },
}
