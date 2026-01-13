require 'config.globals'
require 'config.options'
require 'config.keymaps'
require 'config.autocmds'
require 'config.cmdwin-hack'

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
-- Install sql tools
-- Install testing plugin (neotest?)
-- Configure snacks.dashboard
-- Fix lag after pressing space in terminal and lazygit commit msg
-- Add plugin for remote edits - rsync.nvim and/or remote-ssh.nvim
-- Change obsidian telescope pickers UI
-- Add obsidian keybindings
-- Fix mini.surround keymaps
-- Learn marks
-- Migrate from Telescope to Snacks.picker (maybe)
