return {
  'renerocksai/telekasten.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require('telekasten').setup {
      home = vim.fn.expand(os.getenv 'ZETTELKASTEN_VAULT' or '~/zettelkasten'),
    }
  end,
}
