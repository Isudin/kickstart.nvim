local function escape(keys)
  return vim.api.nvim_replace_termcodes(keys, true, false, true)
end

vim.keymap.set('c', '<C-f>', function()
  vim.g.requested_cmdwin = true
  vim.api.nvim_feedkeys(escape '<C-f>', 'n', false)
end)

vim.api.nvim_create_autocmd('CmdWinEnter', {
  group = vim.api.nvim_create_augroup('CWE', { clear = true }),
  pattern = '*',
  callback = function()
    if vim.g.requested_cmdwin then
      vim.g.requested_cmdwin = nil
    else
      vim.api.nvim_feedkeys(escape ':q<CR>:', 'm', false)
    end
  end,
})
