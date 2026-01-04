return {
  'shortcuts/no-neck-pain.nvim',
  version = '*',
  opts = {
    autocmds = {
      enableOnVimEnter = true,
    },
    width = 125,
    -- mappings = {
    --   enabled = true,
    -- },
  },
  require('keymaps.no-neck-pain').setup(),
}
