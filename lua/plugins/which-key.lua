return {
  { --h  Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    opts = {
      -- delay between pressing a key and opening which-key (milliseconds)
      -- this setting is independent of vim.o.timeoutlen
      delay = 250,
      preset = 'helix',
      -- Set window position
      -- win = {
      --   col = 0.5,
      --   row = 0.03,
      -- },
      keys = {
        scroll_down = '<a-j>',
        scroll_up = '<a-k>',
      },
      icons = {
        -- set icon mappings to true if you have a Nerd Font
        mappings = vim.g.have_nerd_font,
        -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
        -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
        keys = vim.g.have_nerd_font and {} or {
          Up = '<Up> ',
          Down = '<Down> ',
          Left = '<Left> ',
          Right = '<Right> ',
          C = '<C-…> ',
          M = '<M-…> ',
          D = '<D-…> ',
          S = '<S-…> ',
          CR = '<CR> ',
          Esc = '<Esc> ',
          ScrollWheelDown = '<ScrollWheelDown> ',
          ScrollWheelUp = '<ScrollWheelUp> ',
          NL = '<NL> ',
          BS = '<BS> ',
          Space = '<Space> ',
          Tab = '<Tab> ',
          F1 = '<F1>',
          F2 = '<F2>',
          F3 = '<F3>',
          F4 = '<F4>',
          F5 = '<F5>',
          F6 = '<F6>',
          F7 = '<F7>',
          F8 = '<F8>',
          F9 = '<F9>',
          F10 = '<F10>',
          F11 = '<F11>',
          F12 = '<F12>',
        },
      },

      -- Document existing key chains
      spec = {
        { '<leader>a', group = 'Attempt' },
        { '<leader>b', group = 'Buffers management' },
        { '<leader>d', group = 'Diagnostics' },
        { '<leader>f', group = 'File' },
        { '<leader>g', group = 'Goto' },
        { '<leader>h', group = 'Harpoon' },
        { '<leader>n', group = 'Neovim' },
        { '<leader>l', group = 'LSP' },
        { '<leader>nt', group = 'Tips' },
        { '<leader>o', group = 'Obsidian' },
        { '<leader>R', group = 'Rest' },
        { '<leader>s', group = 'Search' },
        { '<leader>t', group = 'Toggle' },
        { '<leader>T', group = 'Test' },
        { '<leader>u', group = 'UI' },
        { '<leader>w', group = 'Windows management' },
        { '<leader>x', group = 'Debugging' },
        { '<leader>xw', group = 'Windows' },
      },
    },
  },
}
