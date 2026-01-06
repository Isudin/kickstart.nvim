return function()
  local harpoon = require 'harpoon'
  harpoon.ui = require 'harpoon.ui'
  harpoon:setup()
  local list = harpoon:list()
  return {
    vim.keymap.set('n', '<leader><leader>', function()
      harpoon.ui:toggle_quick_menu(list)
    end, { desc = 'Harpoon menu' }),

    vim.keymap.set('n', '<leader>ha', function()
      list:add()
    end, { desc = 'Add file to harpoon menu' }),

    -- WARN: <C-TAB> might not work in every terminal due to TAB being treated as <C-i>
    vim.keymap.set('n', '<C-TAB>', function()
      list:next()
      -- NOTE: For now, looping doesn't seem to work.
      -- Perhaps list._index is not updated on list:select()
      --
      -- local current = list._index or 1
      -- local total = list:length()
      --
      -- if total == 0 then
      --   return
      -- end
      --
      -- if current == total then
      --   -- if list._index == list:length() then
      --   list:select(1)
      -- else
      --   list:next()
      -- end
    end, { desc = 'Harpoon navigate next file' }),

    -- WARN: <C-TAB> might not work in every terminal due to TAB being treated as <C-i>
    vim.keymap.set('n', '<C-S-TAB>', function()
      list:prev()
    end, { desc = 'Harpoon navigate next file' }),

    vim.keymap.set('n', '<leader>hj', function()
      list:select(1)
    end, { desc = 'Select 1 file' }),

    vim.keymap.set('n', '<leader>hk', function()
      list:select(2)
    end, { desc = 'Select 2 file' }),

    vim.keymap.set('n', '<leader>hl', function()
      list:select(3)
    end, { desc = 'Select 3 file' }),

    vim.keymap.set('n', '<leader>h;', function()
      list:select(4)
    end, { desc = 'Select 4 file' }),

    -- vim.keymap.set('n', '<leader>hh', function()
    --   require('telescope').extensions.harpoon.marks()
    -- end, { desc = 'Harpoon (Telescope)' })
    --
  }
end
