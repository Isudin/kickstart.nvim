require 'config.globals'
require 'config.options'
require 'config.keymaps'
require 'config.autocmds'

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require 'plugins'

-- TODO:
-- Modify DAP UI and keymaps (hide sidebar, leave only bottom bar)
-- Change DAP icons
-- Fix DAP log message
-- Add harpoon extension to telescope and change <leader><space> shortcut to use this telescope
-- Add macro registering info in the statusline
-- Install docker tools (lazydocker.nvim?)
-- Install sql tools
-- Install rest.nvim
-- Install obsidian.nvim
-- Add plugin for remote edits - rsync.nvim and/or remote-ssh.nvim
-- Fix mini.surround keymaps
-- Learn marks
