return { 
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "javascript", "html", "python" },
    highlight = { enable = true },
    indent = { enable = true },  
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end
}
