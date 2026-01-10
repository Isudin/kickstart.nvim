local M = {}

function M.setup()
  local function cmd_abbrev(abbrev, expansion)
    local cmd = 'cabbr ' .. abbrev .. ' <c-r>=(getcmdpos() == 1 && getcmdtype() == ":" ? "' .. expansion .. '" : "' .. abbrev .. '")<CR>'
    vim.cmd(cmd)
  end

  cmd_abbrev('h', 'FloatingHelp')
  cmd_abbrev('help', 'FloatingHelp')
  cmd_abbrev('helpc', 'FloatingHelpClose')
  cmd_abbrev('helpclose', 'FloatingHelpClose')
end

return M
