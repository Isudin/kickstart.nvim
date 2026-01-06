return {
  {
    '<leader>bd',
    function()
      require('bufdelete').bufdelete()
    end,
    desc = 'Delete current buffer',
  },
  {
    '<leader>bD',
    function()
      require('bufdelete').bufdelete(0, true)
    end,
    desc = 'Forcibly delete current buffer',
  },
  {
    '<leader>bo',
    function()
      local current = vim.api.nvim_get_current_buf()

      local bufs = {}
      for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if buf ~= current and vim.api.nvim_buf_is_loaded(buf) then
          table.insert(bufs, buf)
        end
      end

      require('bufdelete').bufdelete(bufs, false)
    end,
    desc = 'Delete all other buffers',
  },
}
