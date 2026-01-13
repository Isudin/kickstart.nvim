-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd('RecordingEnter', {
  desc = 'Inform about recording macro',
  callback = function()
    print 'Started recording macro'
  end,
})

vim.api.nvim_create_autocmd('ColorScheme', {
  group = vim.api.nvim_create_augroup('WinSeparatorHL', { clear = true }),
  callback = function()
    vim.api.nvim_set_hl(0, 'WinSeparator', { link = 'FloatBorder' })
  end,
})
