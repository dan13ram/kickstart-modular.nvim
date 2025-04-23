local M = {
  'MunifTanjim/prettier.nvim',
  config = function()
    require('prettier').setup {
      bin = 'prettier',
    }
  end,
}

return M
