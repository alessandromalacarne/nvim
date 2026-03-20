return {
  'mrcjkb/rustaceanvim',
  version = '^8',
  lazy = false,
  config = function()
    vim.g.rustaceanvim = {
      server = {
        default_settings = {
          ['rust-analyzer'] = {
            check = {
              allTargets = true,
            },
            procMacro = {
              enable = true,
            },
            diagnostics = {
              disabled = { 'inactive-code' },
            },
          },
        },
      },
    }
  end,
}
