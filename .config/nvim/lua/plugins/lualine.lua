return {
  "nvim-lualine/lualine.nvim",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        icons_enabled = true,
        theme = 'onedark_vivid',
        section_separators = '',
        component_separators = '│'
      }
    })
  end
}
