local M = {}

local horizontal_opts = { prompt_position = 'top' }
local vertical_opts = { width = 0.9, height = 0.9, prompt_position = 'top', mirror = true }
local ntrFlex = {
  sorting_strategy = 'ascending',
  layout_strategy = 'flex',
  layout_config = { flip_columns = 150, horizontal = horizontal_opts, vertical = vertical_opts },
}

function M.set_opts(f, extra)
  return function()
    local opts = vim.tbl_deep_extend('force', {}, ntrFlex, extra or {})
    f(opts)
  end
end

return M
