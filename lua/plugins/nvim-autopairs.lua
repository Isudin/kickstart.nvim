return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = true,
  opts = {
    map_bs = false, -- Necessary for smart-backspace to work
  },
}
