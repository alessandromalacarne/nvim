require('cmp').setup {
  enabled = function()
    local ft = vim.bo.filetype
    if ft == 'oil' then
      return false
    end
    return true
  end,
}

return {
  'petertriho/cmp-git',
  dependencies = { 'hrsh7th/nvim-cmp' },
  opts = {
    -- options go here
  },
  init = function()
    table.insert(require('cmp').get_config().sources, { name = 'git' })
  end,
}
