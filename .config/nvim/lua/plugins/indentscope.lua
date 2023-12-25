return {
  'echasnovski/mini.indentscope',
  branch = 'stable',
  version = false,
  dependencies = {
    'echasnovski/mini.nvim'
  },
  opts = {
    -- symbol = "│",
    symbol = "▏",
    options = { try_as_border = true },
  },
  config = function(_, opts)
    require('mini.indentscope').setup(opts)
  end
}
