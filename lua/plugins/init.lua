require('lazy').setup({
  spec = {
    { import = 'plugins.blink' },
    { import = 'plugins.bufdelete' },
    { import = 'plugins.conform' },
    { import = 'plugins.gitsigns' },
    { import = 'plugins.inc-rename' },
    { import = 'plugins.lazydev' },
    { import = 'plugins.mini' },
    { import = 'plugins.noice' },
    { import = 'plugins.nvim-autopairs' },
    { import = 'plugins.nvim-lspconfig' },
    { import = 'plugins.nvim-treesitter' },
    { import = 'plugins.nvim-ufo' },
    { import = 'plugins.snacks' },
    { import = 'plugins.statuscol' },
    { import = 'plugins.telescope' },
    { import = 'plugins.todo-comments' },
    { import = 'plugins.tokyonight' },
    { import = 'plugins.which-key' },
  },

  -- The following comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. If you want these files, they are in the repository, so you can just download them and
  -- place them in the correct locations.

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  --
  --  Here are some example plugins that I've included in the Kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.autopairs',
  -- require 'kickstart.plugins.neo-tree',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
