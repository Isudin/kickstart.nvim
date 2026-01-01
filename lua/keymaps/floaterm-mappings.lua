return {
  term = function(buf)
    local api = require 'floaterm.api'
    return {
      vim.keymap.set({ 'n', 't' }, '<C-e>', api.edit_name, { buffer = buf }),
      vim.keymap.set({ 'n', 't' }, '<C-a>', api.new_term, { buffer = buf }),
      vim.keymap.set({ 'n', 't' }, '<C-d>', api.delete_term, { buffer = buf }),
    }
  end,
}
