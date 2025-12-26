return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
        on_colors = function(colors)
          colors.fg_gutter = '#52629e'
        end,
      }
      -- Load the colorscheme here.
      vim.cmd.colorscheme 'tokyonight-storm'
    end,
  },
}
