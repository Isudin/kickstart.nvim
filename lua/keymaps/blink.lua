return {
  preset = 'super-tab',
  -- All presets have the following mappings:
  -- <tab>/<s-tab>: move to right/left of your snippet expansion
  -- <c-space>: Open menu or open docs if already open
  -- <c-n>/<c-p> or <up>/<down>: Select next/previous item
  -- <c-e>: Hide menu
  -- <c-k>: Toggle signature help
  ['<C-k>'] = { 'select_prev', 'fallback' },
  ['<C-j>'] = { 'select_next', 'fallback' },
  ['<C-l>'] = { 'show_signature', 'hide_signature', 'fallback' },
  ['<CR>'] = { 'accept_and_enter', 'fallback' },
}
