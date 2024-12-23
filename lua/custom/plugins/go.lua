local M = {
  'ray-x/go.nvim',
  dependencies = { -- optional packages
    'ray-x/guihua.lua',
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
  },
  lazy = false,
  config = true,
  opts = {
    lsp_cfg = true, -- true: apply the LSP config
    goimports = 'gopls', -- if set to 'gopls' will use golsp format
    gofmt = 'gopls', -- if set to 'gopls' will use golsp format
  },
  event = { 'CmdlineEnter' },
  ft = { 'go', 'gomod' },
  build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}

-- local format_sync_grp = vim.api.nvim_create_augroup('GoFormat', {})
--
-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = '*.go',
--   callback = function()
--     require('go.format').goimports()
--   end,
--   group = format_sync_grp,
-- })
--
return M
