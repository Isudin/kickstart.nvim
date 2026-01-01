return {
  {
    'nvzone/floaterm',
    dependencies = 'nvzone/volt',
    opts = {
      border = true,
      mappings = require 'keymaps.floaterm-mappings',
    },
    cmd = 'FloatermToggle',
    require('keymaps.floaterm').setup(),
  },
}
