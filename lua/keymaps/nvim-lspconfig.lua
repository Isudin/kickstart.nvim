local M = {}

local ev

local map = function(keys, func, desc, mode)
  mode = mode or 'n'
  vim.keymap.set(mode, keys, func, { buffer = ev.buf, desc = 'LSP: ' .. desc })
end

function M.setup(event)
  ev = event
  local windows = require 'utils.telescope-windows'
  map('<leader>ln', vim.lsp.buf.rename, 'Rename', { 'n', 'x' })
  -- Execute a code action, usually your cursor needs to be on top of an error
  -- or a suggestion from your LSP for this to activate.
  map('<leader>la', vim.lsp.buf.code_action, 'Goto Code Action', { 'n', 'x' })

  -- Find references for the word under your cursor.
  map('<leader>lr', windows.set_opts(require('telescope.builtin').lsp_references), 'Goto References')

  -- Jump to the implementation of the word under your cursor.
  --  Useful when your language has ways of declaring types without an actual implementation.
  map('<leader>li', windows.set_opts(require('telescope.builtin').lsp_implementations), 'Goto Implementation')

  -- Jump to the definition of the word under your cursor.
  --  This is where a variable was first declared, or where a function is defined, etc.
  --  To jump back, press <C-t>.
  map('<leader>ld', windows.set_opts(require('telescope.builtin').lsp_definitions), 'Goto Definition')

  -- WARN: This is not Goto Definition, this is Goto Declaration.
  --  For example, in C this would take you to the header.
  map('<leader>lD', vim.lsp.buf.declaration, 'Goto Declaration')

  -- Fuzzy find all the symbols in your current document.
  --  Symbols are things like variables, functions, types, etc.
  map('<leader>lO', windows.set_opts(require('telescope.builtin').lsp_document_symbols), 'Open Document Symbols')

  -- Fuzzy find all the symbols in your current workspace.
  --  Similar to document symbols, except searches over your entire project.
  map('<leader>lW', windows.set_opts(require('telescope.builtin').lsp_dynamic_workspace_symbols), 'Open Workspace Symbols')

  -- Jump to the type of the word under your cursor.
  --  Useful when you're not sure what type a variable is and you want to see
  --  the definition of its *type*, not where it was *defined*.
  map('<leader>lt', windows.set_opts(require('telescope.builtin').lsp_type_definitions), 'Goto Type Definition')
end

function M.toggle_inlay_hints(event)
  ev = event

  map('<leader>th', function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
  end, 'Toggle Inlay Hints')
end

return M
