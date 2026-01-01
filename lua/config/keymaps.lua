vim.keymap.set('n', '<C-space>', vim.lsp.buf.hover, { desc = 'Show documentation' })
-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic quickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('c', '<C-Backspace>', '<C-w>', { desc = 'Remove previous word' })

vim.keymap.set('n', 'z;', 'za', { desc = 'Toggle fold under the cursor' })
vim.keymap.set('n', 'z:', 'zA', { desc = 'Toggle all folds under the cursor' })

-- Auto indent on empty line.
vim.keymap.set('n', 'i', function()
  return string.match(vim.api.nvim_get_current_line(), '%g') == nil and 'cc' or 'i'
end, { expr = true, noremap = true })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })

vim.keymap.set('n', '<leader>w', '', { desc = '+[W]indows management' })
vim.keymap.set('n', '<leader>w0', '', { desc = 'Use CTRL+<hjkl> to switch between windows' })
vim.keymap.set('n', '<leader>w1', '', { desc = 'Use CTRL+SHIFT+<hjkl> to move windows' })
vim.keymap.set('n', '<leader>wo', '<C-w>o', { desc = 'Close all other windows' })
vim.keymap.set('n', '<leader>wq', '<C-w>q', { desc = 'Quit window' })
vim.keymap.set('n', '<leader>wj', '<C-w>s', { desc = 'Split window' })
vim.keymap.set('n', '<leader>wl', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>wT', '<C-w>T', { desc = 'Break out into a new tab' })
vim.keymap.set('n', '<leader>w+', '<C-w>+', { desc = 'Increase height' })
vim.keymap.set('n', '<leader>w-', '<C-w>-', { desc = 'Decrease height' })
vim.keymap.set('n', '<leader>w<', '<C-w><', { desc = 'Decrease width' })
vim.keymap.set('n', '<leader>w>', '<C-w>>', { desc = 'Increase width' })
vim.keymap.set('n', '<leader>wr', '<C-w>=', { desc = 'Reset size for all windows' })
vim.keymap.set('n', '<leader>w_', '<C-w>_', { desc = 'Max out height' })
vim.keymap.set('n', '<leader>w|', '<C-w>|', { desc = 'Max out width' })

-- Keymaps for deleting last word inside terminal and insert modes
-- NOTE: CTRL+W (doesn't matter the case) always removes 'WORD' instead of 'word'
-- hence separate binding for terminal mode
vim.keymap.set('t', '<C-BS>', '<A-BS>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-BS>', '<C-W>', { noremap = true, silent = true })
