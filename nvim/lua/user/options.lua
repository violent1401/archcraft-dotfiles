local function escape(str)
  -- You need to escape these characters to work correctly
  local escape_chars = [[;,."|\]]
  return vim.fn.escape(str, escape_chars)
end

local en = [[`qwertyuiop[]asdfghjkl;'zxcvbnm]]
local ru = [[ёйцукенгшщзхъфывапролджэячсмить]]
local en_shift = [[~QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>]]
local ru_shift = [[ËЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ]]

return {
  opt = {
    shell = "/bin/zsh",
    swapfile = false,
    langmap = vim.fn.join({
      escape(ru_shift) .. ';' .. escape(en_shift),
      escape(ru) .. ';' .. escape(en),
    }, ',')
  },
}
