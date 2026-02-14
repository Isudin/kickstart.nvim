return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', -- use latest release, remove to use latest commit
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  opts = {
    legacy_commands = false, -- this will be removed in the next major release
    workspaces = {
      {
        name = 'personal',
        path = '~/vaults/personal',
      },
      {
        name = 'chronomancer',
        path = '~/vaults/chronomancer',
      },
    },
    note_id_func = function(title) -- Disable note id autogeneration
      return title
    end,
    ui = {
      enable = false, -- Disabled because render-markdown handles this
    },
  },
  require('keymaps.obsidian').setup(),
}
